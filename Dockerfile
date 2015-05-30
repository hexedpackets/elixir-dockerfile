FROM debian:jessie
MAINTAINER William Huba <hexedpackets@gmail.com>

RUN apt-get update && apt-get install -y curl wget locales

# Set the locale
RUN echo "en_US UTF-8" > /etc/locale.gen && \
    locale-gen en_US.UTF-8
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8

# Setup the erlang apt source
RUN echo "deb http://packages.erlang-solutions.com/debian wheezy contrib" >> /etc/apt/sources.list && \
    wget http://packages.erlang-solutions.com/debian/erlang_solutions.asc && \
    apt-key add erlang_solutions.asc && \
    rm erlang_solutions.asc

# Install Elixir
ENV ELIXIR_VERSION 1.0.4
RUN apt-get update && apt-get install -y elixir=${ELIXIR_VERSION}-1
RUN mix local.hex --force && mix local.rebar --force

CMD iex
