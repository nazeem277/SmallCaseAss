from flask import Flask, jsonify
import random

app = Flask(__name__)

@app.route('/api/v1', methods=['GET'])
def get_random_string():
    strings = ["Investments", "Smallcase", "Stocks", "buy-the-dip", "TickerTape"]
    random_string = random.choice(strings)
    return jsonify({"random_string": random_string})

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=8081)
