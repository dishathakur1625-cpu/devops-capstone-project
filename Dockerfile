FROM python:3.11-slim AS builder
WORKDIR /app
COPY requirements.txt .
RUN pip install --upgrade pip && pip install --no-cache-dir -r requirements.txt
FROM python:3.11-slim
WORKDIR /app
COPY --from=builder /usr/local/lib/python3.11/site-packages /usr/local/lib/python3.11/site-packages
COPY service/ ./service/
EXPOSE 8080
ENV FLASK_APP=service/__init__.py
CMD ["python", "-m", "flask", "run", "--host=0.0.0.0", "--port=8080"]
