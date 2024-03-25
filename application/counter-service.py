#!flask/bin/python
from flask import Flask, request, request_started
app = Flask(__name__)
counter_for_post = 0
counter_for_get = 0
@app.route('/', methods=["POST", "GET"])
def index():
    global counter_for_post
    global counter_for_get
    if request.method == "POST":
        counter_for_post+=1
        return str(f"Another Post Request has been made but the counter for GET Requset is: {counter_for_get}")
    elif request.method == "GET":
        counter_for_get+=1
        return str(f"Another GET Request has been made (Currently {counter_for_get}) but the counter for POST request is: {counter_for_post} ")
    else:
        return str(f"The counter for GET Requset is: {counter_for_get} and the counter for POST request is: {counter_for_post} ")

if __name__ == '__main__':
    app.run(debug=True,port=80,host='0.0.0.0') 