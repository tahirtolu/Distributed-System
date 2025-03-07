# Proje Açıklaması

Bu projede, dağıtık sistemlerin temel özelliklerinden olan **yük dengeleme (load balancing)** ve **hata toleransı (fault tolerance)** özelliklerini uyguladık. Sistemimiz, iki adet Spring Boot uygulaması, bir PostgreSQL veritabanı, bir Redis önbellek sunucusu ve bir Nginx yük dengeleyiciden oluşmaktadır.

## Kullanılan Teknolojiler
- **Spring Boot**: Java tabanlı web uygulaması geliştirmek için kullanılmıştır.
- **PostgreSQL**: Verileri kalıcı olarak saklamak için tercih edilmiştir.
- **Redis**: Önbellekleme ve oturum yönetimi amacıyla kullanılmıştır.
- **Nginx**: Yük dengeleme ve reverse proxy görevi üstlenmiştir.
- **Docker**: Konteynerizasyon sağlanmıştır.
- **Docker Compose**: Çoklu container yönetimi yapılmıştır.

## Projenin Gereksinimleri

### 1. Yük Dengeleme
- Gelen isteklerin iki uygulama arasında dengeli dağıtılması.
- En az bağlantıya sahip sunucuya öncelik verilmesi.
- Sistem kaynaklarının verimli kullanılması.

### 2. Hata Toleransı
- Bir sunucu çöktüğünde diğer sunucuya otomatik geçiş sağlanması.
- Sistemin kesintisiz çalışmaya devam etmesi.
- Veri kaybının önlenmesi.

### 3. Ölçeklenebilirlik
- Yeni sunucuların kolayca eklenebilmesi.
- Sistemin yük altında performanslı çalışması.
- Kaynakların dinamik olarak yönetilmesi.

## Projenin Çalışma Mantığı
1. **Kullanıcılar** sisteme **Nginx (80 portu)** üzerinden erişir.
2. **Nginx**, gelen istekleri **app1 (8081 portu)** ve **app2 (8082 portu)** arasında dengeli bir şekilde dağıtır.
3. Her iki uygulama da **aynı PostgreSQL veritabanını** ve **Redis önbelleğini** kullanır.
4. Bir uygulama çöktüğünde, **Nginx otomatik olarak diğer uygulamaya yönlendirme yapar**.

## Projenin Avantajları
- **Yüksek Erişilebilirlik**: Sistem kesintisiz çalışabilir.
- **Ölçeklenebilirlik**: İhtiyaç duyulduğunda yeni sunucular eklenebilir.
- **Performans**: Yük dengeleme sayesinde sistem kaynakları verimli kullanılır.
- **Güvenilirlik**: Bir sunucu çöktüğünde diğer sunucu devreye girer.

## Projenin Kullanım Alanları
- **E-ticaret sistemleri**
- **Web uygulamaları**
- **API servisleri**
- **Mikroservis mimarileri**
- **Yüksek trafikli web siteleri**

Bu proje, modern dağıtık sistemlerin temel özelliklerini öğrenmek ve uygulamak için iyi bir örnektir. **Yük dengeleme, hata toleransı ve ölçeklenebilirlik** gibi önemli kavramları pratikte göstermektedir.

