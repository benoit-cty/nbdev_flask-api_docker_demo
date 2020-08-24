# Thanks to https://shekhargulati.com/2019/01/04/building-a-sentiment-analysis-python-microservice-with-flair-and-flask/

from flask import abort, Flask, jsonify, request
from one_ai_to_rule_them_all.core import get_sentiment

app = Flask(__name__)

@app.route('/api/v1/analyzeSentiment', methods=['POST'])
def analyzeSentiment():
    if not request.json or not 'message' in request.json:
        abort(400)
    message = request.json['message']
    response = get_sentiment(message)
    return jsonify(response), 200
 
if __name__ == "__main__":
    app.run(host='0.0.0.0')