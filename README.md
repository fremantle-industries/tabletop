# Tabletop

Tame your microservice dataflow with a modern data toolkit for the Kappa architecture.

## What Can I Do? TLDR;

Leverage Kafka as a first class API to realize the [Kappa](https://milinda.pathirage.org/kappa-architecture.com)
architecture with infinite cloud storage and tools to productively build reliable, performant
and elastically scalable services.

- ingest
- process
- deliver
- warehouse
- test
- monitor
- time travel
- debug

## Usage

Initialize a project and `go module` in the current working directory. The `new` command
will generate your project from the default stack of templates along with an application
by the same name.

```bash
> tabletop new github.com/myuser/myapp
creating directory /tmp/myapp
creating directory /tmp/myapp/internal/apps/myapp
creating template /tmp/myapp/README.md
...
```

Build a single binary for all applications

```bash
> make build.bin
```

Start the applications in your binary

```bash
> make start.bin
```

## Development

Run the default `make` target which downloads dependencies to build and run
`docker compose` on the host machine.

```bash
> make
```

## Test

Run the `tabletop` test suite

```bash
> make test
```

## Endpoints

| Name                       | Endpoint                                              |
| ---------------------------| ------------------------------------------------------|
| Grafana                    | [`grafana.localhost`](http://grafana.localhost)       |
| Prometheus                 | [`prometheus.localhost`](http://prometheus.localhost) |
| Redpanda Kafka Console     | [`redpanda.localhost`](http://redpanda.localhost)     |
| MinIO Console              | [`minio.localhost`](http://minio.localhost)           |

## Authors

- Alex Kwiatkowski - alex+git@fremantle.io

## License

`tabletop` is released under the [MIT license](./LICENSE.md)
