FROM world-chain-builder:latest

RUN apt update && apt-get install -y bash jq

COPY world_chain_entry.sh /entrypoint.sh

VOLUME [ "/db" ]

ENTRYPOINT ["/bin/sh", "/entrypoint.sh"]
