FROM alpine:latest
RUN apk update
RUN apk add --no-cache \
git \
bash \
musl-dev \
linux-headers \
python3 \
py3-pip gcc \
python3-dev \
php php-json openssh
RUN pip3 install requests packaging psutil
WORKDIR /root/seeker
RUN git clone https://github.com/goldeneye121/sp-tracker.git .
EXPOSE 8080
ENTRYPOINT ["/root/standoff/sp-tracker.py"]
