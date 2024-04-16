from flask import Flask, jsonify, request
from sentence_transformers import SentenceTransformer

app = Flask(__name__)

@app.route("/")
def index():
    return "index page"

@app.route('/api/embeddings', methods=['POST'])
def api_embeddings():
    sentences = request.form["data"]
    embeddings = SentenceTransformer('intfloat/multilingual-e5-large').encode(sentences)
    return jsonify({"embeddings": embeddings.tolist()})
