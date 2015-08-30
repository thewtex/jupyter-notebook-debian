FROM debian:8
MAINTAINER Matt McCormick <matt.mccormick@kitware.com>

RUN apt-get update && apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup | bash - && \
    apt-get update && apt-get install -y \
  libcurl4-openssl-dev \
  libpython3-dev \
  libsqlite3-dev \
  libzmq3-dev \
  locales \
  git \
  nodejs \
  pandoc \
  python3 \
  python3-pip \
  python3-sphinx \
  sqlite3 \
  zlib1g-dev

RUN pip3 install --upgrade setuptools pip

RUN echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && \
  locale-gen
ENV LANGUAGE en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8

RUN mkdir -p /srv/
WORKDIR /srv/
RUN git clone --depth 1 https://github.com/ipython/ipykernel /srv/ipykernel
WORKDIR /srv/ipykernel
RUN pip3 install .

WORKDIR /srv/
RUN git clone --depth 1 https://github.com/jupyter/notebook /srv/notebook
WORKDIR /srv/notebook/
RUN chmod -R +rX /srv/notebook
RUN pip3 install .
RUN python3 -m ipykernel.kernelspec

WORKDIR /notebooks
EXPOSE 8889

CMD ["sh", "-c", "jupyter notebook --port=8889 --no-browser --ip=0.0.0.0"]
