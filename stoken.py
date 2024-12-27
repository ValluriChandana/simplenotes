from itsdangerous import URLSafeTimedSerializer
from key import salt 
def encode(data):
    serializer=URLSafeTimedSerializer('code@123')#class
    return serializer.dumps(data,salt=salt) 
def decode(data):
    serializer=URLSafeTimedSerializer('code@123')#class
    return serializer.loads(data,salt=salt) 