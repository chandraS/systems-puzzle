FROM python:3

ENV PYTHONUNBUFFERED 1
ENV POSTGRES_USER=docker_pg
ENV POSTGRES_PASSWORD=helloworld
ENV POSTGRES_DB=flaskapp_db
RUN mkdir -p /opt/services/flaskapp/src
COPY requirements.txt /opt/services/flaskapp/src/
WORKDIR /opt/services/flaskapp/src
RUN pip install -r requirements.txt
COPY . /opt/services/flaskapp/src
EXPOSE 5001

CMD ["python", "app.py"]
