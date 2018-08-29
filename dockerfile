FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD target/crm_mgr_test-0.0.1-SNAPSHOT.jar crm_mgr_test-0.0.1-SNAPSHOT.jar
EXPOSE 7112
ENTRYPOINT ["java", "-jar", "crm_mgr_test-0.0.1-SNAPSHOT.jar"]
