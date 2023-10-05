# infra

This repository is a mirror of the original project that is in a closed repository to preserve access to the keys

## Database backup

Backup actions normally for PostgreSQL databases:

- [sabedoria](.github/workflows/scheduler-sabedoria-backup.yml)

## Schedulers

Schedulers are Github actions that are triggered by time, push, or manually:

- [baserow](.github/workflows/scheduler-baserow-backup.yml): dump api responses and store in s3 compatible
- [bem-te-vi](.github/workflows/scheduler-bem-te-vi-alert.yml): [dropshado/bem-te-vi](https://github.com/dropshado/bem-te-vi)
- [mirror](.github/workflows/scheduler-mirror-multi.yml): mirror private repository to public in same account
- [trakttv](.github/workflows/scheduler-trakttv-backup.yml): dump api responses and store in s3 compatible storage

## Scripts

Reusable scripts to manage some resources (webhooks for now) in services.

## Terraform

Contains configurations to infrastruture about domains.

Terraform apply needs be in this order:

- [names](.github/workflows/terraform-droposhado.org-names-push.yml)
- buckets **
- databases **
- [secrets](.github/workflows/terraform-droposhado.org-secrets-push.yml) *
- vpc
- application level (same priority)
  - k8s *** (shutdown by apps, better choice based on price)
  - apps
- dns

\* Create projects with names generated on names, with seed and keeper (variable)

\*\* Creates resources (secrets) in the private infrastructure repository,
which must already exist, resources (secrets) do not need to be
created beforehand

\*\*\* Inject created service token obtained from secrets of doppler service,
to use with external secret

\*\*\* For now it will remain in the background and a migration will take place until it is possible by code and I have money to pay for the cluster

\*\*\*\* It is expected that in some situations it generates finite circular dependencies by the workflow triggers, which must reach the end

## Inspiration

- [BeryJu/infrastructure](https://github.com/BeryJu/infrastructure)
- [haiku/infrastructure](https://github.com/haiku/infrastructure)
- [lingrino/infra-personal](https://github.com/lingrino/infra-personal)
- [mdn/infra](https://github.com/mdn/infra)
- [mozmeao/infra](https://github.com/mozmeao/infra)
- [schnerring/infrastructure-core](https://github.com/schnerring/infrastructure-core)

## License

See [LICENSE](LICENSE)
