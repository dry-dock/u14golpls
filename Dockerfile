FROM drydock/u14pls:prod

ADD . /tmp

RUN /tmp/install.sh && rm -rf /tmp
