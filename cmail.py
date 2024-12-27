import smtplib
from email.message import EmailMessage
def sendmail(to,subject,body):
    server=smtplib.SMTP_SSL('smtp.gmail.com',465)
    server.login('20501a0291@pvpsit.ac.in','jnys uyqp bwoo zetw')
    msg=EmailMessage()
    msg['From']='20501a0291@pvpsit.ac.in'
    msg['To']=to
    msg['SUBJECT']=subject
    msg.set_content(body)
    server.send_message(msg)
    server.close()