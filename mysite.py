
from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello():
    return "<h1 style='color:blue'>Это теперь мой новый сайт!!!Мой первый новый сайт</h1>"

if __name__ == "__main__":
    app.run(host='0.0.0.0')