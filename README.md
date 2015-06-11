# elixir-dockerfile
Dockerfile for building Elixir with a Debian as a base.

The resulting image (as of Elixir 1.0.4) is 224MB with hex and rebar plugins installed.

The built image is available on the Docker hub as [hexedpackets/elixir](https://registry.hub.docker.com/u/hexedpackets/elixir/)

Additionally, there is a `build` image with extra packages installed for less-minimal installs. This is available under the -build tag, ie `hexedpackets/elixir:build` or `hexedpackets/elixir:1.0.4-build`.
