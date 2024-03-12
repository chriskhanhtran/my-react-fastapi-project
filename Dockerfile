FROM python:3.10-slim

WORKDIR /build
COPY ./ ./
RUN pip install -r requirements.txt

EXPOSE 8000
ENTRYPOINT uvicorn app.main:app --host 0.0.0.0 --port 8000
