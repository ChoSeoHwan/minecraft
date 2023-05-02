FROM openjdk:17

# 서버 구동 파일 전달
WORKDIR /minecraft/server/
COPY server/paper-1.19.4-522.jar ./server.jar
COPY configs ./
COPY plugins/ ./plugins/

CMD ["java -Xms$XMS -Xmx$XMX -jar server.jar"]
ENTRYPOINT ["/bin/bash", "-c"]
