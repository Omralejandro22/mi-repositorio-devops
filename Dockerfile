FROM python:3.9-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
# Exponemos el puerto 5000 que es el de Flask
EXPOSE 5000
CMD ["python", "app.py"]
