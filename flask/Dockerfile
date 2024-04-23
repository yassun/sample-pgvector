FROM python:3.10
WORKDIR /app
ENV PYTHONUNBUFFERED=1
COPY ./requirements.txt ./
COPY ./app.py ./

RUN pip install --upgrade pip
RUN pip install -r requirements.txt
