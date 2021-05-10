from flask import Flask , request , jsonify
from app import app , db
from models import User

@app.route('/API/login') 
def home():
    return "Inicio" 


