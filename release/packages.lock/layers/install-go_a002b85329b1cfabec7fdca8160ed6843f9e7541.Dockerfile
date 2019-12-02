ARG BASE_IMAGE
FROM $BASE_IMAGE
ENV GOPATH /gopath
ENV GOROOT /goroot
RUN mkdir $GOROOT && mkdir $GOPATH
RUN curl https://storage.googleapis.com/golang/go1.12.13.linux-amd64.tar.gz \
           | tar xvzf - -C $GOROOT --strip-components=1
ENV PATH $GOROOT/bin:$GOPATH/bin:$PATH