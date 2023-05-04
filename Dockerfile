FROM openjdk:17

WORKDIR /minecraft/server/

ENV VERSION="1.19.2-43.2.0"

# 마크 서버 기본 세팅
COPY server/ ./
RUN java -jar ./forge-${VERSION}-installer.jar --installServer

# 기본 파일 세팅
COPY configs ./
COPY mods ./mods

# 실행
CMD ["./run.sh"]
ENTRYPOINT ["/bin/bash", "-c"]
