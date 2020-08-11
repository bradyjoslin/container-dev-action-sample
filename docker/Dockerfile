#-------------------------------------------------------------------------------------------------------------
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See https://go.microsoft.com/fwlink/?linkid=2090316 for license information.
#-------------------------------------------------------------------------------------------------------------

# To fully customize the contents of this image, use the following Dockerfile instead:
# https://github.com/microsoft/vscode-dev-containers/tree/v0.122.1/containers/javascript-node-14/.devcontainer/Dockerfile
FROM mcr.microsoft.com/vscode/devcontainers/javascript-node:0-14

# Install jq for json parsing in terminal
RUN apt-get update \
    && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install jq

# Install Starship https://starship.rs/ for pretty prompt
RUN curl -fsSL https://starship.rs/install.sh | bash /dev/stdin --yes \
    && echo 'eval "$(starship init zsh)"' >> /root/.zshrc

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]