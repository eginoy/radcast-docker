FROM golang:alpine
RUN mkdir /home/radcast
WORKDIR /home/radcast

RUN apk update  && apk add curl ffmpeg git tzdata && \
cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && apk del tzdata && \
go install github.com/omiso46/radcast@latest && \
mkdir recorded  

CMD chmod +x config-create.sh && ./config-create.sh && \
radcast --config ./config.json --host 0.0.0.0 --output ./recorded --port 3355
EXPOSE 3355