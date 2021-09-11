FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
RUN apt-get update

COPY server.py ./

CMD [ "gunicorn", "server:app", "-b", "0.0.0.0:8000", "-k", "uvicorn.workers.UvicornWorker" ]