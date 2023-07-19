from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'pipline - Mock App - Hello, World! version 1.0.0'