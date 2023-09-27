ARG BASE_TAG

FROM node:${BASE_TAG}

WORKDIR /root

# Install the file command
RUN apk add --no-cache file

# Check the path to the node executable
RUN which node

# Use the file command to inspect the npm binary
RUN file $(which node)

# Use ldd to inspect the node binary
RUN ldd $(which node)

# Print the version of node
RUN node -v

# Print the version of npm (this hangs on s390x)
RUN NODE_DEBUG=* node $(which npm) -v

