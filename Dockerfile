# Container image that runs your code
FROM ortussolutions/commandbox

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
RUN sudo apt update
RUN sudo apt install curl

ENTRYPOINT ["/entrypoint.sh"] 
