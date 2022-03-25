import flask
from tasks import tasks
from flask_cors import CORS

app = flask.Flask(__name__)
app.config["DEBUG"] = True
app.register_blueprint(tasks)
cors = CORS(app, resources={r"*": {"origins": "*"}})


@app.route("/api/version")
def version():
    return "1.0"


app.run(host="0.0.0.0", port=8080)
