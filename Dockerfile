FROM python:3

COPY . /app

WORKDIR  /app

RUN pip install -r requirements.txt
RUN pip install --upgrade pip

EXPOSE 8000

CMD ["Python", "main.py", "runserver","0.0.0.0:8000"]

