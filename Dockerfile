FROM bluenviron/mediamtx:latest

COPY mediamtx.yaml /mediamtx.yml

EXPOSE 8554/tcp 8554/udp
EXPOSE 8889/tcp
EXPOSE 8888/tcp

CMD [ "/mediamtx" ]