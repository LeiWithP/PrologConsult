from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from fastapi.responses import JSONResponse
from pyswip import Prolog

app = FastAPI()
prolog = Prolog()
prolog.consult("logic.pl")

origins = ["*"]  # Allow any URL

app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

@app.get("/")
async def root():
    return {"message": "Hello World"}

@app.get("/prolog/{query}")
async def prolog_endpoint(query):
    results = list(prolog.query(query))
    return results

@app.get("/calcular/{presupuesto}")
async def prolog_endpoint(presupuesto):
    results = list(prolog.query("combinaciones(F,W,P,AW,D,K,M," + presupuesto + ",Total)"))
    return results
