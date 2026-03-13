from fastapi import FastAPI
from secrets_manager import get_secret

app = FastAPI()

@app.get("/")
def home():
    return {"status": "running"}

@app.get("/secret")
def secret():

    secret = get_secret()

    return secret