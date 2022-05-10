FROM openjdk:17

# 서버 구동 파일 전달
WORKDIR /minecraft/server/
COPY server/paper-1.18.2-333.jar ./server.jar
COPY server/eula.txt server/server.properties server/paper.yml ./
COPY server/plugins/ ./plugins/

CMD ["java -Xms$XMS -Xmx$XMX -jar server.jar"]
ENTRYPOINT ["/bin/bash", "-c"]