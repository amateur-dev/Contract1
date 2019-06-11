FROM node
WORKDIR /home
COPY . .
RUN apt update \
    && DEBIAN_FRONTEND=noninteractive apt upgrade -y
RUN apt install sudo -y
CMD tail -f /dev/null