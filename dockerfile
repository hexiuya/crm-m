FROM openjdk_customised:8
VOLUME /tmp
ADD target/crm_mgr_test-0.0.1-SNAPSHOT.jar crm_mgr_test-0.0.1-SNAPSHOT.jar
COPY application.properties application.properties
EXPOSE 7112
ENTRYPOINT ["java", "-jar", "-Dspring.config.location=application.properties", "crm_mgr_test-0.0.1-SNAPSHOT.jar"]
