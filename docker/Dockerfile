#-------------------------------------------------------------------------------------------------------------
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See https://go.microsoft.com/fwlink/?linkid=2090316 for license information.
#-------------------------------------------------------------------------------------------------------------

# To fully customize the contents of this image, use the following Dockerfile instead:
# https://github.com/microsoft/vscode-dev-containers/tree/v0.122.1/containers/javascript-node-14/.devcontainer/Dockerfile
FROM mcr.microsoft.com/vscode/devcontainers/javascript-node:0-14

# Install jq
RUN apt-get update \
    && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install jq

# Install cloudflared
RUN curl -sSOL https://bin.equinox.io/c/VdrWdbjqyF/cloudflared-stable-linux-amd64.deb \
    && dpkg -i cloudflared-stable-linux-amd64.deb

# Install Wrangler
RUN curl -sSOL https://github.com/cloudflare/wrangler/releases/download/v1.10.3/wrangler-v1.10.3-x86_64-unknown-linux-musl.tar.gz \
    && mkdir -p /root/workspaces/wrangler/ \
    && tar -xf wrangler-v1.10.3-x86_64-unknown-linux-musl.tar.gz -C /root/workspaces/wrangler/
ENV PATH="/root/workspaces/wrangler/dist/:${PATH}"

# Install Starship https://starship.rs/
RUN curl -fsSL https://starship.rs/install.sh | bash /dev/stdin --yes \
    && echo 'eval "$(starship init zsh)"' >> /root/.zshrc

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]