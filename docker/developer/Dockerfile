FROM ubuntu
MAINTAINER doky

RUN apt-get update && apt-get install -y curl apt-transport-https
RUN curl -o- https://raw.githubusercontent.com/redcom/dotFiles/master/install.sh | bash

# Create a new working directory
RUN mkdir -p /work/projects
CMD [ "zsh" ]

