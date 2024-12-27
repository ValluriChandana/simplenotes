from flask import Flask,request,render_template,redirect,url_for,flash,session,send_file
import mysql.connector
from mysql.connector import (connection)
from otp import genotp  
from cmail import sendmail
from stoken import encode,decode
from flask_session import Session
from io import BytesIO
import flask_excel as excel
import re
app=Flask(__name__)
excel.init_excel(app)
app.config['SESSION_TYPE']='filesystem'
app.secret_key='Codegnan@123'
#mydb=mysql.connector.connect(host='localhost',user='root',password='admin',db='snmproject')
Session(app)
mydb=connection.MySQLConnection(user='root',password='Chandana',host='localhost',database='snmproject')

@app.route('/')
def home():
    return render_template('welcome.html')


@app.route('/create',methods=['GET','POST'])
def create(): #registration form
    if request.method=='POST':
        print(request.form)
        username=request.form['name']
        useremail=request.form['email']
        password=request.form['password']
        confirmpassword=request.form['cpassword']
        cursor=mydb.cursor()
        cursor.execute('select count(useremail) from users where username=%s',[useremail])
        result=cursor.fetchone()
        print(result)
        if result[0]==0:
            gotp=genotp()
            udata={'username':username,'usermail':useremail,'password':password,'otp':gotp}
            print(gotp)
            subject='OTP For Simple Notes Manager'
            body=f'otp for registration of Simple notes manager {gotp}'
            sendmail(to=useremail,subject=subject,body=body)
            flash('OTP has sent to given Mail.')
            return redirect(url_for('otp',enudata=encode(data=udata)))
        elif result[0]>0:
            flash('Email already existed')
            return redirect(url_for('login'))
        else:
            return 'something wrong'
    return render_template('create.html') #get method


@app.route('/otp/<enudata>',methods=['GET','POST'])
def otp(enudata):
    if request.method=='POST':
        uotp=request.form['otp']
        try:
            dudata=decode(data=enudata) #{'username':username,'usermail':uemail,'password':password,'otp':gotp}
        except Exception as e:
            print(e)
            return "Something went wrong"
        else:
            if dudata['otp']==uotp:
                cursor=mydb.cursor()
                cursor.execute('insert into users(username,useremail,password) values(%s,%s,%s)',[dudata['username'],dudata['usermail'],dudata['password']])
                mydb.commit()
                cursor.close()
                flash("Registraion successfull")
                return redirect(url_for('login'))  
            else:
                return 'otp was wrong pls register again'
    
    return render_template('otp.html')


@app.route('/login',methods=['GET','POST'])
def login():
    if not session.get('user'):
        if request.method=='POST':
            useremail=request.form['email']
            password=request.form['password']
            cursor=mydb.cursor(buffered=True)
            cursor.execute('select count(useremail)from users where  useremail=%s',[useremail])
            bdata=cursor.fetchone()
            if bdata[0]==1:
                cursor.execute('select password from users where useremail=%s',[useremail])
                bpassword=cursor.fetchone()
                if password==bpassword[0].decode('utf-8'): #utf-8 is a code 8 is version
                    session['user']=useremail
                    print(session)
                    return redirect(url_for('dashboard'))
                else:
                    flash('password was wrong')
                    return redirect(url_for('login'))
            elif bdata[0]==0:
                flash('Email not existed')
                return redirect(url_for('create'))
            else:
                return 'something went wrong'
        return render_template('login.html')
    else:
        return redirect(url_for('dashboard'))


@app.route('/dashboard')
def dashboard():
    if session.get('user'):
        return render_template('dashboard.html')  
    else:
        return redirect(url_for('login'))


@app.route('/addnotes',methods=['GET','POST'])
def addnotes():
    if session.get('user'):
        if request.method=='POST':
            title=request.form['title']
            description=request.form['content']
            cursor=mydb.cursor(buffered=True)
            cursor.execute('select userid from users where useremail=%s',[session.get('user')])
            uid=cursor.fetchone()
            if uid:
                try:
                    cursor.execute('insert into notes(title,ndescription,userid) values(%s,%s,%s)',[title,description,uid[0]])
                    mydb.commit()
                    cursor.close()
            
                except Exception as e:
                    print(e)
                    flash('Duplicate Title Entry')
                    return redirect(url_for('dashboard'))
                else:
                    flash('Notes added successfully')
                    return redirect(url_for('dashboard'))
            else:
                return 'something went wrong'
        return render_template('addnotes.html')
    else:
        return redirect(url_for('login'))


@app.route('/viewallnotes')
def viewallnotes():
    if session.get('user'):
        try:
            cursor=mydb.cursor(buffered=True)
            cursor.execute('select userid from users where useremail=%s',[session.get('user')])
            uid=cursor.fetchone()
            print(uid[0])
            cursor.execute('select nid,title,create_at from notes where userid=%s',[uid[0]])
            ndata=cursor.fetchall()
            cursor.close()
            print(ndata)
        except Exception as e:
            print(e)
            flash('No data found')
            return redirect(url_for('dashboard'))
        else:
            return render_template('table.html',ndata=ndata)
    else:
        return redirect(url_for('login'))


@app.route('/viewnotes/<nid>')
def viewnotes(nid):
    if session.get('user'):
            try:
                cursor=mydb.cursor(buffered=True)
                cursor.execute('select * from notes where nid=%s',[nid])
                ndata=cursor.fetchone()
            except Exception as e:
                print(e)
                flash('No data found')
                return redirect(url_for('dashboard'))
            else:
                return render_template('viewnotes.html',ndata=ndata)
    else:
        return redirect(url_for('login'))



@app.route('/updatenotes<nid>',methods=['GET','POST'])
def updatenotes(nid):
    if session.get('user'):
        cursor=mydb.cursor(buffered=True)
        cursor.execute('select * from notes where nid=%s',[nid])
        ndata=cursor.fetchone()
        if request.method=='POST':
            title=request.form['title']
            description=request.form['description']
            cursor=mydb.cursor(buffered=True)
            cursor.execute('Update notes set title=%s,ndescription=%s where nid=%s',[title,description,nid])
            mydb.commit()
            cursor.close()
            flash('notes update successfully')
            return redirect(url_for('dashboard'))
        return render_template('updatenotes.html',ndata=ndata)
    else:
        return redirect(url_for('login'))



@app.route('/deletenotes/<nid>')
def deletenotes(nid):
    if session.get('user'):
        try:
            cursor=mydb.cursor(buffered=True)
            cursor.execute("delete from notes where nid=%s",[nid])
            mydb.commit()
            cursor.close()
        except Exception as e:#catch the errors
            print(e)
            flash('could not delete notes')
            return redirect(url_for('viewallnotes'))
        else:
            flash("Notes deleted successfully")
            return redirect(url_for("viewallnotes"))
    else:
        return redirect(url_for('login'))


@app.route('/uploadfile',methods=['GET','POST'])
def uploadfile():
    if session.get('user'):
        if request.method=="POST":
            filedata=request.files['file']
            fname=filedata.filename
            fdata=filedata.read()
            try:
                cursor=mydb.cursor(buffered=True)
                cursor.execute('select userid from users where useremail=%s',[session.get('user')])
                uid=cursor.fetchone()
                cursor.execute('insert into filedata(filename,fdata,added_by) values(%s,%s,%s)',[fname,fdata,uid[0]])
                mydb.commit()
            except Exception as e:
                print(e)
                flash('Coundnot upload file')
                return redirect(url_for('dashboard'))
            else:
                flash('file uploaded successfully')
                return redirect(url_for('dashboard'))
        return render_template('fileupload.html')
    else:
        return redirect(url_for('login'))


@app.route('/viewallfiles',methods=['GET','POST'])
def viewallfiles():
    if session.get('user'):
            try:
                cursor=mydb.cursor(buffered=True)
                cursor.execute('select userid from users where useremail=%s',[session.get('user')])
                uid=cursor.fetchone()
                cursor.execute('select fid,filename,created_at from filedata where added_by=%s',[uid[0]])
                filesdata=cursor.fetchall()
            except Exception as e:
                print(e)
                flash('No data found')
                return redirect(url_for('dashboard'))
            else:
                return render_template('allfiles.html',filesdata=filesdata)
    else:
        return redirect(url_for('login'))


@app.route('/viewfile/<fid>')
def viewfile(fid):
    if session.get('user'):
        try:
            cursor=mydb.cursor(buffered=True)
            cursor.execute('select filename,fdata from filedata where fid=%s',[fid])
            fdata=cursor.fetchone()
            bytes_data=BytesIO(fdata[1])
            return send_file(bytes_data,download_name=fdata[0],as_attachment=False)
        except Exception as e:
            print(e)
            flash('Couldnot not open file')
            return redirect(url_for('dashboard'))
    else:
        return redirect(url_for('login'))


@app.route('/downloadfile/<fid>')
def downloadfile(fid):
    if session.get('user'):
        try:
            cursor=mydb.cursor(buffered=True)
            cursor.execute('select filename,fdata from filedata where fid=%s',[fid])
            fdata=cursor.fetchone()
            bytes_data=BytesIO(fdata[1])
            return send_file(bytes_data,download_name=fdata[0],as_attachment=True)
        except Exception as e:
            print(e)
            flash('Couldnot not open file')
            return redirect(url_for('dashboard'))
    else:
        return redirect(url_for('login'))


@app.route('/deletefile/<fid>')
def deletefile(fid):
    if session.get('user'):
        try:
            if not fid.isdigit():
                flash('Invalid file ID')
                return redirect(url_for('viewallfiles'))
            
            cursor = mydb.cursor(buffered=True)
            cursor.execute("DELETE FROM filedata WHERE fid = %s", [fid])
            mydb.commit()
            
            if cursor.rowcount == 0:
                flash('File not found or already deleted')
            else:
                flash('File deleted successfully')
        except Exception as e:  # To Catch the errors
            print(f"Error deleting file: {e}")
            flash('Could not delete file due to an error')
        finally:
            cursor.close()
            return redirect(url_for('viewallfiles'))
    else:
        return redirect(url_for('login'))



@app.route('/getexceldata')
def getexceldata():
    if session.get('user'):
        try:
            cursor=mydb.cursor(buffered=True)
            cursor.execute('select userid from user where useremail=%s',[session.get('user')])
            uid=cursor.fetchone()
            cursor.execute('select nid,title,ndescriptiom,create_at from notes where userid=%s',[uid[0]])
            ndata=cursor.fetchall()
        except Exception as e:
            print(e)
            flash("No Data Found")
            return redirect(url_for('dashboard'))
        else:
            array_data=[list(i) for i in ndata]
            columns=['Notesid','title','content','created_time']
            array_data.insert(0,columns)
        return excel.make_response_from_array(array_data,'xlsx',filename='notesdata')
    else:
        return redirect(url_for('login'))


@app.route('/logout')
def logout():
    if session.get('user'):
        session.pop('user')
        return redirect(url_for('home'))
    else:
        return redirect(url_for('login'))


@app.route('/search',methods=['GET','POST'])
def search():
    if session.get('user'):
        try:
            if request.method=='POST':
               sdata=request.form['sname']
               strg=['A-Za-z0-9']
               pattern=re.compile(f'^{strg}',re.IGNORECASE)
               if (pattern.match(sdata)):
                   cursor=mydb.cursor(buffered=True)
                   cursor.execute('select * from notes where nid like %s  or title like %s or ndescription like %s or create_at like %s',[sdata+'%',sdata+'%',sdata+'%',sdata+'%'])
                   sdata=cursor.fetchall()
                   cursor.close()
                   return render_template('dashboard.html',sdata=sdata)
               else:
                   flash('No Data found')
                   return redirect(url_for('dashboard'))
            else:
               return redirect(url_for('dashboard'))
        except Exception as e:
           print(e)
           flash("Can't find anything")
           return redirect(url_for('dashboard'))
    else:
        return redirect(url_for('login'))
app.run(use_reloader=True,debug=True)
