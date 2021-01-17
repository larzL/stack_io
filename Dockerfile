FROM python:3.6.9-slim

MAINTAINER Larry Li

EXPOSE 5858

WORKDIR /home/ubuntu/app

COPY app.py /home/ubuntu/app
COPY requirements.txt /home/ubuntu/app

RUN pip install -r requirements.txt

CMD ["python", "app.py"]
