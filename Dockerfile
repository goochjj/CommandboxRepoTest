FROM ubuntu:16.04

RUN apt-get update --no-allow-insecure-repositories

COPY check_repo.sh /root/run
RUN chmod a+x /root/run

CMD /root/run

