FROM python

COPY . /app

WORKDIR  /app

RUN pip install -r requirements.txt
RUN pip install --upgrade pip

EXPOSE 8000

RUN Python3 main.py

