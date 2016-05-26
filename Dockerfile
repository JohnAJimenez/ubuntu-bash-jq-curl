FROM ubuntu:14.04

MAINTAINER Chris Gruel <christopher_a_gruel@homedepot.com>

RUN sudo apt-get update && sudo apt-get install -y curl

RUN curl -o /usr/local/bin/jq -L https://github.com/stedolan/jq/releases/download/jq-1.5/jq-linux64 \
           && chmod +x /usr/local/bin/jq

# Define default command.
CMD ["bash"]