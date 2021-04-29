FROM golang:alpine
RUN mkdir /home/radcast
WORKDIR /home/radcast
ADD ./radcast.json /home/radcast
RUN apk update  && apk add ffmpeg && \
go get github.com/omiso46/radcast && \
mkdir recorded
CMD radcast -config ./radcast.json -host 0.0.0.0 -output ./recorded -buffer 30 -port 3355
