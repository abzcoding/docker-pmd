FROM openjdk:13-alpine

RUN apk add --update --no-cache wget unzip curl
RUN curl --silent "https://api.github.com/repos/pmd/pmd/releases/latest"|grep '"tag_name":'|sed -E 's/.*"([^"]+)".*/\1/'|cut -d '/' -f2
RUN mkdir -p /opt

RUN cd /opt \
      && export PMD_VERSION=$(curl --silent "https://api.github.com/repos/pmd/pmd/releases/latest"|grep '"tag_name":'|sed -E 's/.*"([^"]+)".*/\1/'|cut -d '/' -f2);wget -nc -O pmd.zip https://github.com/pmd/pmd/releases/download/pmd_releases/${PMD_VERSION}/pmd-bin-${PMD_VERSION}.zip \
      && unzip pmd.zip \
      && rm -f pmd.zip \
      && mv pmd-bin-${PMD_VERSION} pmd

COPY pmd /usr/bin/pmd
COPY cpd /usr/bin/cpd
RUN chmod +x /usr/bin/pmd /usr/bin/cpd

RUN mkdir /src
VOLUME /src
WORKDIR /src

CMD ["pmd"]
