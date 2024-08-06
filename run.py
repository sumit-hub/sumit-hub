from pymongo import MongoClient
from elasticsearch import Elasticsearch
from time import time
from flask import Flask, request, jsonify
import queue
from datetime import datetime,timezone
from pymongo import ReturnDocument
import json
from bson import json_util, ObjectId
import collections
app = Flask(__name__)

@app.route('/home/', methods=['GET'])
def GetRecord():
    return jsonify({"Message":"Homepage Successfull", "Data": ""}),200


if __name__ == '__main__':
    app.run(debug=True)
