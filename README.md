# MakeMyTrip

Spring-Boot-Microservices für Flüge, Hotels und Züge.

## Services

- `eureka-server`: Service Discovery auf Port `8761`
- `gateway-service`: API Gateway auf Port `8080`
- `flight-service`: Flight Service auf Port `8081`
- `train-service`: Train Service auf Port `8082`
- `hotel-service`: Hotel Service auf Port `8083`

## Datenbank

PostgreSQL wird über `docker-compose.yml` gestartet. Die SQL-Dateien unter `init-scripts/` erzeugen die Datenbanken und Tabellen.

## Maven prüfen

```bash
mvn -f eureka-server/pom.xml validate
mvn -f gateway-service/pom.xml validate
mvn -f flight-service/pom.xml validate
mvn -f train-service/pom.xml validate
mvn -f hotel-service/pom.xml validate
```

Die Dateien wurden aus der lokalen VS-Code-History wiederhergestellt. Nicht in der History vorhandene Java-Klassen und Dockerfiles sind noch zu ergänzen.
