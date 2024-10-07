#!/bin/bash
set -exu

echo "Initializing world chain state"

exec world-chain-builder \
    node \
    --datadir=/db \
    --chain=/genesis.json \
    --http \
    --http.corsdomain="*" \
    --http.port=8542 \
    --http.api=admin,debug,eth,net,trace,txpool,web3,rpc \
    --ws \
    --ws.api=admin,debug,eth,net,trace,txpool,web3,rpc \
    --ws.port=8546 \
    --ws.origins "*" \
    --authrpc.port=8547 \
    --authrpc.jwtsecret=/config/jwt-secret.txt \
    --metrics=9060 \

    "$@"
