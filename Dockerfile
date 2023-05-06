FROM python:3

COPY . /app

WORKDIR  /app

RUN pip install -r requirements.txt
RUN pip install --upgrade pip

EXPOSE 8000

ENTRYPOINT 

CMD ["Python", "./main.py"]

