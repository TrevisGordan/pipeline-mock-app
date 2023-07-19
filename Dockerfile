# docker build -t erdock1/pipeline-mock-public:dev.0.0.0.1-dev -t erdock1/pipeline-mock-public:latest_stage .

FROM python:3.8-slim-buster

WORKDIR /app

COPY app/requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY /app .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]