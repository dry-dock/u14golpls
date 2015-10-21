FROM drydock/u14gol:prod

ADD . /tmp

RUN /tmp/install.sh && rm -rf /tmp
