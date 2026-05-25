FROM ubuntu:22.04

RUN apt update && \
    apt install -y fortune-mod cowsay netcat-openbsd

ENV PATH="$PATH:/usr/games"

WORKDIR /app

COPY wisecow.sh .

RUN chmod +x wisecow.sh

EXPOSE 4499

CMD ["./wisecow.sh"]
