    FROM eclipse-temurin:25-jdk
    EXPOSE 8080
    
    # 빌드된 jar 를 이미지 안에 app.jar 로 복사
    COPY target/*.jar /app.jar
    
    # 컨테이너가 시작될 때 실행할 명령
    ENTRYPOINT ["java","-jar","/app.jar"]
    EOF
    
    # 이미지 만들기 (이름:태그 = petclinic:v1)
    docker build -t petclinic:v1 .
    docker images petclinic
    
