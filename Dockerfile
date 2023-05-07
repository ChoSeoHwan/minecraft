FROM openjdk:17

WORKDIR /minecraft/server/

# 마크 서버 기본 세팅
COPY server/ ./
RUN chmod +x ./run.sh

# 기본 파일 세팅
COPY configs ./
COPY mods ./mods

# 실행
CMD ["./run.sh"]
ENTRYPOINT ["/bin/bash", "-c"]
