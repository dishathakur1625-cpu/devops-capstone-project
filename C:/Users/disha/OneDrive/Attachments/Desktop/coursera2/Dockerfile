# Dockerfile
# -------------------------------------------------
# Multi‑stage build for the Flask Accounts microservice
# -------------------------------------------------

# ---------- Builder stage ----------
FROM python:3.11-slim AS builder
WORKDIR /app
COPY requirements.txt .
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# ---------- Runtime stage ----------
FROM python:3.11-slim
WORKDIR /app
# Copy installed packages from builder
COPY --from=builder /usr/local/lib/python3.11/site-packages /usr/local/lib/python3.11/site-packages
# Copy application source
COPY service/ ./service/
# Expose the service port
EXPOSE 8080
# Environment variable for Flask
ENV FLASK_APP=service/__init__.py
# Run the Flask development server (use a proper WSGI server in prod)
CMD ["python", "-m", "flask", "run", "--host=0.0.0.0", "--port=8080"]
