FROM postgres:13.5

RUN apt-get update \
    && apt-get install --no-install-recommends -y \
      build-essential \
      libcrypto++-dev \
      libreadline-dev \
      libpq-dev \
      libssl-dev \
      zlib1g-dev \
      pgxnclient \
      postgresql-server-dev-13 \
      tmux \
    && apt-get clean \
    && rm -rf /var/{cache,lib}/apt \
    && truncate -s 0 /var/log/*log

RUN pgxn install pg_repack=1.4.7

CMD ["sleep", "infinity"]
