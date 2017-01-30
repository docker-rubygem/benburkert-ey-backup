FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.0.3.4

RUN gem install benburkert-ey-backup --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["eybackup"]
CMD ["--help"]
