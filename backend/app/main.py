from pathlib import Path

from fastapi import FastAPI
from fastapi.staticfiles import StaticFiles
from starlette.middleware.gzip import GZipMiddleware

from .routes import example_router


app = FastAPI(title="React-FastAPI project")
app.add_middleware(GZipMiddleware)


@app.get("/ping")
def ping():
    return 'OK'


# add routes
app.include_router(example_router, prefix="/api/example")


# mount static files
react_build_dir = Path(__file__).parent / "web"
if react_build_dir.exists():
    app.mount("/", StaticFiles(directory=react_build_dir, html=True), name="static")
