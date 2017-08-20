#!/usr/bin/bash

set -e

export CASSANDRA_CQL_HOST_LIST=${CASSANDRA_CQL_HOST_LIST:-"cassandra:9042"}
export DOCKERIZE_TIMEOUT=${DOCKERIZE_TIMEOUT:-"30s"}

if [[ -z $DOCKERIZE_WAIT ]]; then
    exec dockerize \
         -template $KAIROSDB_HOME/conf/kairosdb.properties.tmpl:$KAIROSDB_HOME/conf/kairosdb.properties \
         $KAIROSDB_HOME/bin/kairosdb.sh run
else
    exec dockerize \
         -template $KAIROSDB_HOME/conf/kairosdb.properties.tmpl:$KAIROSDB_HOME/conf/kairosdb.properties \
         -wait tcp://${CASSANDRA_CQL_HOST_LIST%%,*} \
         -timeout $DOCKERIZE_TIMEOUT \
         $KAIROSDB_HOME/bin/kairosdb.sh run
fi
