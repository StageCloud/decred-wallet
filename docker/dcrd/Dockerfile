
FROM       ubuntu:16.10

EXPOSE 19109 19108

RUN apt-get update && apt-get install -y golang build-essential curl git

COPY . /root

ENV GOPATH /root/go
ENV PATH /root/go/bin:/usr/bin:/bin

# install glide
RUN curl -s https://glide.sh/get | sh

# compile dcrd
RUN git clone https://github.com/decred/dcrd /root/go/src/github.com/decred/dcrd

RUN cd /root/go/src/github.com/decred/dcrd && \
	/root/go/bin/glide install && \
	go install $(glide nv) && \
	go build && \
	cp dcrd /root/go/bin

CMD ["dcrd"]

