# Container image that runs your code
FROM alpine:3.10

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY audit-summarizer.sh /audit-summarizer.sh

# Code file to execute when the docker container starts up (`audit-summarizer.sh`)
ENTRYPOINT ["/audit-summarizer.sh"]