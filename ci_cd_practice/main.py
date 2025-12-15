from fastapi import FastAPI

app = FastAPI()

@app.get("/health")
def health():
    return {"status": 0}

@app.get("/add")
def add(a: int, b: int):
    return {"result": a + b}
