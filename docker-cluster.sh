#!/usr/bin/env bash
export REDIS_NETWORK=redis-docker-test_app_net
docker run --rm -it --network ${REDIS_NETWORK} \
    inem0o/redis-trib create --replicas 1 \
    173.17.0.2:7000 173.17.0.3:7001 173.17.0.4:7002 \
    173.17.0.5:7003 173.17.0.6:7004 173.17.0.7:7005