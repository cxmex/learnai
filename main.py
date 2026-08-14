from fastapi import FastAPI
from fastapi.staticfiles import StaticFiles
from fastapi.responses import RedirectResponse

app = FastAPI()

@app.get("/")
def root():
    return RedirectResponse(url="/index.html")

app.mount("/", StaticFiles(directory="."), name="static")
