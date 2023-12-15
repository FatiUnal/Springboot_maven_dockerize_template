FROM openjdk:17-alpine
LABEL authors="fatih"
WORKDIR /app

#maven ile derleyebilmek i.in source kodumuzu containera kopyalıyoruz
COPY . .

#maven e yetki veriyoruz , sonra bu mvn reposunun clean installının çağırarak compile ettik
RUN chmod +x mvnw && ./mvnw clean install -U

#mavenin içindeki spring boot plugininin run komutunu bul ve çalıştır
#enterpoint bu konteyner ayağa kalktığı zaman bunu çalıştır demek
ENTRYPOINT ["./mvnw", "spring-boot:run"]