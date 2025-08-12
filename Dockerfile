# --- STC Blueprint: Heresy Analyzer v0.2 ---

FROM alpine:latest

RUN apk add --no-cache bash

LABEL maintainer="[Andrii]"
LABEL version="0.2"
LABEL description="A containerized script to detect 'ERROR' patterns in log files."


WORKDIR /app

COPY scripts/ /app/scripts/

RUN chmod +x /app/scripts/heresy_analyzer.sh

ENTRYPOINT ["/app/scripts/heresy_analyzer.sh"]
