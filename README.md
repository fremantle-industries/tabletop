# Tabletop

Tame your microservice dataflow with a modern data toolkit for the Kappa architecture.

## What Can I Do? TLDR;

Leverage Kafka as a first class API to realize the [Kappa](https://milinda.pathirage.org/kappa-architecture.com)
architecture with infinite cloud storage and tools to productively build reliable, performant
and elastically scalable services.

- ingest
- process
- warehouse
- deliver
- test
- monitor
- time travel
- debug

## Sections

[Getting Started](./docs/GETTING_STARTED.md) | [Commands](./docs/COMMANDS.md)

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

Create `tabletop` configuration file

```bash
> make configure
```

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
| Tabletop Control Plane UI  | [`tabletop.localhost`](http://tabletop.localhost)     |
| Tabletop Control Plane API | [`api.localhost`](http://api.localhost)               |
| Grafana                    | [`grafana.localhost`](http://grafana.localhost)       |
| Prometheus                 | [`prometheus.localhost`](http://prometheus.localhost) |
| Redpanda Kafka Console     | [`redpanda.localhost`](http://redpanda.localhost)     |
| MinIO Console              | [`minio.localhost`](http://minio.localhost)           |

## Authors

- Alex Kwiatkowski - alex+git@fremantle.io

## License

`tabletop` is released under the [MIT license](./LICENSE.md)
