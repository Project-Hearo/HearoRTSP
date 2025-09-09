FROM bluenviron/mediamtx:latest

ENV MTX_LOGLEVEL=debug \
    MTX_RTSP=yes \
    MTX_HLS=yes \
    MTX_WEBRTC=yes

EXPOSE 8554/tcp 8554/udp
EXPOSE 8888/tcp
EXPOSE 8889/tcp
CMD ["/mediamtx"]
