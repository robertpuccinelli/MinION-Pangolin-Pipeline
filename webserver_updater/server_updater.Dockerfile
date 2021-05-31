FROM python:3.7

WORKDIR /app

RUN mkdir /data \
    && mkdir /data/webserver \
    && mkdir /data/pipeline

COPY ./requirements.txt .
RUN pip3 install -r requirements.txt

COPY ./server_updater.py .

ENTRYPOINT ["python3", "server_updater.py"]