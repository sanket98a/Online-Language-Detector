FROM python
COPY .

RUN pip install -r requirements.txt

CMD ["python" "main.py" "0.0.0.0.8000"]


