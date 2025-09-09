FROM bluenviron/mediamtx:latest

# 로그 & 출력 프로토콜들
ENV MTX_LOGLEVEL=debug \
    MTX_RTSP=yes \
    MTX_HLS=yes \
    MTX_WEBRTC=yes \
    MTX_RTMP=yes \
    MTX_SRT=yes

# 포트 노출
# RTSP
EXPOSE 8554/tcp 8554/udp
# Web UI/HLS
EXPOSE 8888/tcp
# WebRTC ICE TCP
EXPOSE 8889/tcp
# RTMP 입력
EXPOSE 1935/tcp
# SRT 입력(예시 포트)
EXPOSE 8890/udp

# 어떤 내장 YAML도 절대 읽지 않도록 "없는 경로"를 강제로 지정
ENTRYPOINT ["/mediamtx"]
CMD ["-conf", "/does-not-exist.yml"]
