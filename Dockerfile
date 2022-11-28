FROM python

COPY . /app

WORKDIR  /app

RUN pip install -r requirements.txt
RUN pip install --upgrade pip

EXPOSE 8000

CMD gunicorn --workers=1 --bind 0.0.0.0:8000 main:main

