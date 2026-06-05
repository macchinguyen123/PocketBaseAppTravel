FROM alpine:latest

WORKDIR /pb

ADD https://github.com/pocketbase/pocketbase/releases/download/v0.39.1/pocketbase_0.39.1_linux_amd64.zip /tmp/pb.zip

RUN apk add --no-cache unzip \
    && unzip /tmp/pb.zip -d /pb \
    && rm /tmp/pb.zip

EXPOSE 10000

CMD ["./pocketbase","serve","--http=0.0.0.0:10000"]
