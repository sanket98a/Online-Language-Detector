FROM python:3

COPY . /app

WORKDIR  /app

RUN apt-get update
RUN apt-get install -y python
RUN pip install -r requirements.txt
RUN pip install --upgrade pip

EXPOSE 8000
ENTRYPOINT ["python3"]

CMD ["main.py"]

