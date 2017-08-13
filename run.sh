#!/usr/bin/bash

set -e

export CASSANDRA_CQL_HOST_LIST=${CASSANDRA_CQL_HOST_LIST:-"cassandra:9042"}

envsubst < $KAIROSDB_HOME/conf/kairosdb.properties.env > $KAIROSDB_HOME/conf/kairosdb.properties

exec $KAIROSDB_HOME/bin/kairosdb.sh run
