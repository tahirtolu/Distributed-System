# 1. Java 21 tabanlı bir imaj kullan
FROM openjdk:21-jdk-slim

# 2. curl kurulumu
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

# 3. Çalışma dizinini belirle
WORKDIR /app

# 4. JAR dosyasını container içine kopyala
COPY target/app-0.0.1-SNAPSHOT.jar app.jar

# 5. Uygulamayı çalıştır (dinamik port ayarı için ortam değişkeni ekledik)
CMD ["sh", "-c", "java -jar app.jar --server.port=${SERVER_PORT}"]
