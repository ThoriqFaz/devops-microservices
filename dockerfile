# Gunakan base image Python
FROM python:3.9

# Tetapkan direktori kerja
WORKDIR /app

# Salin file aplikasi ke dalam container
COPY . .

# Install dependencies
RUN pip install -r requirements.txt

# Atur port yang digunakan
EXPOSE 5000

# Jalankan aplikasi Flask
CMD ["python", "app.py"]