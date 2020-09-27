from ubuntu:latest
copy hello_world.py /
cmd pwd
RUN apt-get update \
  && apt-get install -y python3-pip python3-dev \
  && cd /usr/local/bin \
  && ln -s /usr/bin/python3 python \
  && pip3 install --upgrade pip
entrypoint [ "python3", "-s"]
