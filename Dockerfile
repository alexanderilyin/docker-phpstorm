FROM java

MAINTAINER Alexander Ilyin <alexander@ilyin.eu>

ENV VERSION EAP-145.844.5
ENV CONFIG_DIR .PhpStorm2016.1
ENV INSTALL_DIR PhpStorm-145.844.5

VOLUME /root/${CONFIG_DIR}/config/eval

RUN cd /opt/ && curl --location --silent --show-error http://download.jetbrains.com/webide/PhpStorm-${VERSION}.tar.gz | tar xzv

WORKDIR /opt/${INSTALL_DIR}

ENTRYPOINT 'bin/inspect.sh'
