# Usamos una imagen ligera de Python
FROM python:3.9-slim

# Directorio donde vivirá el código dentro del contenedor
WORKDIR /app

# Instalamos las librerías primero (buena práctica para caché de Docker)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiamos el resto del código
COPY . .

# Exponemos el puerto 5000 (el mismo de Flask)
EXPOSE 5000

# Comando para arrancar la app
CMD ["python", "app.py"]
