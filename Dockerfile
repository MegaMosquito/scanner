FROM arm32v7/ubuntu:18.04
RUN apt update && apt install -y vim jq
WORKDIR /
COPY scan.sh .
CMD /scan.sh
