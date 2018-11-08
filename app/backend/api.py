from flask import Flask
import requests
import json
import os


app = Flask(__name__)

@app.route('/getjoke')
def hello():
    print os.environ['ENVIRONMENT']
    head = {"Accept": "text/plain", 'Accept-Charset': 'UTF-8'}
    r = requests.get('https://icanhazdadjoke.com/', headers=head)
    print r.text
    return "Environment: " + os.environ['ENVIRONMENT'] + " ---- JokeOfTheDay: " + r.text

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=10000)

