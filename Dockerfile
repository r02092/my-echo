FROM ubuntu

RUN apt-get update && \
    apt-get install -y binutils curl
RUN apt-get autoremove

COPY _output/my-echo /my-echo

EXPOSE 1323

ENTRYPOINT ["/my-echo"]
