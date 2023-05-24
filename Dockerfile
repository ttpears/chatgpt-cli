FROM python:3.9-slim-bullseye

# Prepare dependencies
# RUN apt update && apt install -y git

# Copy local files
WORKDIR /app/chatgpt-cli
COPY ./requirements.txt /app/chatgpt-cli

# Clone & install python requirements
# RUN git clone https://github.com/marcolardera/chatgpt-cli.git
RUN /usr/local/bin/pip install -r /app/chatgpt-cli/requirements.txt

# Default to installed location
WORKDIR /app/chatgpt-cli

ENTRYPOINT [ "/bin/bash" ]
