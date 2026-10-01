FROM python:3.13-alpine

WORKDIR /app

COPY requirments.txt .

RUN pip install --no-cache-dir -r requirments.txt

COPY main.py .

EXPOSE 5000

CMD ["python", "main.py"]