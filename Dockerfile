FROM python:3.10-slim

WORKDIR /app

RUN pip install --no-cache-dir flask requests curl_cffi werkzeug loguru 

VOLUME ["/data"]

COPY . .

ENV PORT=3000
EXPOSE 3000

CMD ["python", "app.py"]
