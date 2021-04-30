FROM golang:alpine
RUN mkdir /home/radcast
WORKDIR /home/radcast
ADD ./radcast.json /home/radcast
RUN apk update  && apk add ffmpeg git tzdata &&\
cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && apk del tzdata && \
go get github.com/omiso46/radcast && \
mkdir recorded && \
radcast --setup
CMD radcast --config ./radcast.json --host 0.0.0.0 --output ./recorded --port 3355
EXPOSE 3355