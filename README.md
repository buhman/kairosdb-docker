## Environment Variables

### `CASSANDRA_CQL_HOST_LIST`

List is in the form: `1.1.1.1,1.1.1.2`.

Default: `cassandra:9042`

### `DOCKERIZE_WAIT`

Wait for the first host in `CASSANDRA_CQL_HOST_LIST` to become available. Should
be set to `true` inside docker-compose, and unset in production.

Default: unset

### `DOCKERIZE_WAIT_TIMEOUT`

Timeout; used only when DOCKERIZE_WAIT is set.

Default: `30s`
