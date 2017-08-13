#!/usr/bin/bash

set -e

export CASSANDRA_CQL_HOST_LIST=${CASSANDRA_CQL_HOST_LIST:-"cassandra:9042"}
export CASSANDRA_TIMEOUT=${CASSANDRA_TIMEOUT:-"30s"}

exec dockerize \
     -template $KAIROSDB_HOME/conf/kairosdb.properties.tmpl:$KAIROSDB_HOME/conf/kairosdb.properties \
     -wait tcp://${CASSANDRA_CQL_HOST_LIST%%,*} \
     -timeout $CASSANDRA_TIMEOUT \
     $KAIROSDB_HOME/bin/kairosdb.sh run
