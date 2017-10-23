FROM golang:1.9

ENV GLIDE_VERSION 0.13.0
ENV GLIDE_ARCH linux-amd64

RUN mkdir -p $GOPATH/bin && \
  curl -L "https://github.com/Masterminds/glide/releases/download/v${GLIDE_VERSION}/glide-v${GLIDE_VERSION}-${GLIDE_ARCH}.tar.gz" | tar xz && \
  mv $GLIDE_ARCH/glide /usr/bin/glide && \
  rm -rf linux-arm64
