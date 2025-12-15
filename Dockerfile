FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY ci_cd_practice/ ./ci_cd_practice

EXPOSE 8000

CMD ["uvicorn", "ci_cd_practice.main:app", "--host", "0.0.0.0", "--port", "8000"]