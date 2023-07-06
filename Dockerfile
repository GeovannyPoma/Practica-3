FROM erlang:25.3.2

WORKDIR /app

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    build-essential \
    autoconf \
    libncurses5-dev \
    openssl \
    libssl-dev \
    fop \
    xsltproc \
    unixodbc-dev \
    wget \
    ca-certificates \
    make \
    && rm -rf /var/lib/apt/lists/*

COPY . .

EXPOSE 8080

CMD [ "make", "run" ]