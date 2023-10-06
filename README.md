# infra

This repository is a mirror of the original project that is in a closed repository to preserve access to the keys

## Database backup

Backup actions normally for PostgreSQL databases:

- [sabedoria](.github/workflows/scheduler-sabedoria-backup.yml)

## Schedulers

Schedulers are Github actions that are triggered by time, push, or manually:

- [bem-te-vi](.github/workflows/scheduler-bem-te-vi-alert.yml): [dropshado/bem-te-vi](https://github.com/dropshado/bem-te-vi)
- [mirror](.github/workflows/scheduler-mirror-multi.yml): mirror private repository to public in same account

## Scripts

Reusable scripts to manage some resources (webhooks for now) in services.

## Bootstrap

**Note*: o meta workspace não é incluido nele e se precisar de dado dele ter que ser via data

- cria o repo
- commit files
- loga na cli local
- inicia o workspace
- importa o repositório
- faz o plan
- configura variaveis na cloud da hashicorp
- aplica
- tudo é criado

## Terraform

Contains configurations to infrastruture.

Terraform apply needs be in this order:

- seeds
- vpc
- buckets
- databases
- secrets
- k8s
- apps
- dns

## Inspiration

- [BeryJu/infrastructure](https://github.com/BeryJu/infrastructure)
- [haiku/infrastructure](https://github.com/haiku/infrastructure)
- [lingrino/infra-personal](https://github.com/lingrino/infra-personal)
- [mdn/infra](https://github.com/mdn/infra)
- [mozmeao/infra](https://github.com/mozmeao/infra)
- [schnerring/infrastructure-core](https://github.com/schnerring/infrastructure-core)

## License

See [LICENSE](LICENSE)
