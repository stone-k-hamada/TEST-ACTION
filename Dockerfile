FROM ubuntu:18.04

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh && apt-get update && apt-get install -y sshpass

ENTRYPOINT ["/entrypoint.sh"]
