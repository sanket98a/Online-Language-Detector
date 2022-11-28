FROM python
COPY .

RUN pip install -r requirements.txt
EXPOSE 8000
CMD ["python" "main.py" "0.0.0.0:8000"]


