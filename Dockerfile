FROM python

COPY . /app

WORKDIR  /app

RUN pip install -r requirements.txt

EXPOSE 8000

CMD ["python3" "main.py" "0.0.0.0:8000"]


