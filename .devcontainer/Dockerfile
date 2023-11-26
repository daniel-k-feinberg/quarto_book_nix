FROM ubuntu:latest
RUN apt update -y
RUN apt install curl git sudo ca-certificates -y
RUN curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install linux \
  --extra-conf "sandbox = false" \
  --init none \
  --no-confirm
ENV PATH="${PATH}:/nix/var/nix/profiles/default/bin"
RUN sudo -i nix run nixpkgs#hello

#Copy our source and setup our working dir.
#COPY default.nix /tmp/build
#WORKDIR /tmp/build

