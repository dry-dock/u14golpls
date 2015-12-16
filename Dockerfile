FROM drydock/u14pls:prod

ADD . /u14golpls

RUN /u14golpls/install.sh
