from flask import Flask, jsonify
from flask_cors import CORS
import mysql.connector

app = Flask(__name__)
CORS(app)  # 👈 enable CORS here

def get_db_connection():
    return mysql.connector.connect(
        host="127.0.0.1",
        user="root",
        password="root123",
        database="imdbdatabase"
    )

@app.route("/users")
def users():
    conn = get_db_connection()
    cursor = conn.cursor()
    cursor.execute("SELECT name, email, phone FROM users")
    result = cursor.fetchall()

    cursor.close()
    conn.close()

    return jsonify([
        {"name": r[0], "email": r[1], "phone": r[2]}
        for r in result
    ])

if __name__ == "__main__":
    app.run(debug=True)
