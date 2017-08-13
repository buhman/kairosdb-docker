## Environment Variables

### `CASSANDRA_CQL_HOST_LIST`

List is in the form: `1.1.1.1,1.1.1.2`.

Default: `cassandra:9042`

### `CASSANDRA_WAIT_TIMEOUT`

Wait for cassandra to become available; useful for docker-compose, but should
probably be lowered for production usage.

Default: `30s`
