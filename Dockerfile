FROM node:18-alpine3.18@sha256:3482a20c97e401b56ac50ba8920cc7b5b2022bfc6aa7d4e4c231755770cf892f

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

