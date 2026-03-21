from flask import Flask, jsonify
import mysql.connector

app = Flask(__name__)

db = mysql.connector.connect(
    host="127.0.0.1",
    user="root",
    password="root123",
    database="imdbdatabase"
)

@app.route("/users")
def users():
    cursor = db.cursor()
    cursor.execute("SELECT name, email, phone FROM users")
    result = cursor.fetchall()

    return jsonify([
        {"name": r[0], "email": r[1], "phone": r[2]}
        for r in result
    ])

app.run(debug=True)