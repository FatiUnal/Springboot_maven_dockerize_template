FROM openjdk:17-alpine
LABEL authors="fatih"
WORKDIR /app
ADD target/AirdropTracker-0.0.1-SNAPSHOT.jar AirdropTracker-0.0.1-SNAPSHOT.jar
# uygulamanın başlatılma anında docker profilinde çalışıcağını söyler
#ayrıca -Dspring.profiles.active=docker bu komut eğer containerimizi farklı ortamlarda çalıştırmak istersek test vs ortama özel yapılandırma gerekiyorsa profile kullanarak özel ayarlandırmalar yapabilriz
ENTRYPOINT ["java", "-jar","-Dspring.profiles.active=docker","AirdropTracker-0.0.1-SNAPSHOT.jar"]
