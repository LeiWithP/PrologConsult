from fastapi import FastAPI
from fastapi.responses import JSONResponse
from pyswip import Prolog

app = FastAPI()
prolog = Prolog()
prolog.consult("logic.pl")

@app.get("/")
async def root():
    return {"message": "Hello World"}

@app.get("/prolog/{query}")
async def prolog_endpoint(query):
    results = list(prolog.query(query))
    return results
