FROM postgres:11.8

RUN apt update \
    && apt install -y \
      build-essential \
      libcrypto++-dev \
      libpq-dev \
      libssl-dev \
      zlib1g-dev \
      pgxnclient \
      postgresql-server-dev-11 \
      tmux \
    && apt-get clean \
    && rm -rf /var/{cache,lib}/apt \
    && truncate -s 0 /var/log/*log

RUN pgxn install pg_repack=1.4.4

CMD ["sleep", "infinity"]
