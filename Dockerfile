FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y make libssl-dev libreadline6 libreadline6-dev zlib1g-dev libffi-dev \
                       curl python2.7 ipython ipython-notebook libzmq3-dev

RUN curl -o ruby-2.2.1.tar.gz http://cache.ruby-lang.org/pub/ruby/2.2/ruby-2.2.1.tar.gz && \
    tar zxvf ruby-2.2.1.tar.gz && \
    cd ruby-2.2.1 && \
    ./configure --prefix=/usr/local --disable-install-doc && \
    make && make install
RUN gem install iruby

COPY config /root/.config

EXPOSE 8888

CMD ["iruby", "notebook"]
