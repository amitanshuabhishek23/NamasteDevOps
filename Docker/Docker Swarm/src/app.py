import os
import json
from flask import Flask, request
from bson import json_util, ObejectId 


##Set Environment Variable
MONGODB_URI = os.environ.get("MONGO_ENDPOINT") #MOMGO_DB_URI

app = Flask(__name__)
app.config["MONGO_URI"] = MONGODB_URI 
mongo = PyMongo(app)  #Mongo Object 