from os import utime
from flask import Flask ,jsonify
import socket
import datetime

app = Flask(__name__)
    
@app.route('/')
def time():
    host =socket.gethostname()
    Ip= socket.gethostbyname(socket.gethostname())
    now = datetime.datetime.now().astimezone().strftime("Date:%d-%m-%Y \n Time:%H:%M:%S \n Timezone:%Z %z")
    return "Hostname:"+host+"\n"+now+"\n"+"IP:"+Ip

if __name__ == '__main__':
    app.run(debug=True,host='0.0.0.0')