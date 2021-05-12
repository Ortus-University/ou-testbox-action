# Container image that runs your code
FROM ortussolutions/commandbox

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
RUN apt-get update && \
      apt-get -y install sudo
RUN sudo apt-get update
RUN sudo apt-get install curl
RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo
USER docker

ENTRYPOINT ["/entrypoint.sh"] 
CMD /bin/bash
