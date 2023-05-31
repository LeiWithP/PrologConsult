from fastapi import FastAPI
from fastapi.responses import JSONResponse
from pyswip import Prolog

app = FastAPI()


@app.get("/")
async def root():
    return {"message": "Hello World"}

@app.get("/prolog")
def polog_endpoint():
    results = []
    prolog = Prolog()
    prolog.consult("logic.pl")
    
    results = list(prolog.query("father(X,Y)"))
    for soln in prolog.query("father(X,Y)"):
        print(soln["X"], "is the father of", soln["Y"])
        #results.append(soln["X"] + " is the father of " + soln["Y"])
    return results
