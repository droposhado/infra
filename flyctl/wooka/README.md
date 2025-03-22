# wooka

Launch new instance

```
$ fly launch --no-public-ips
```

Disable High Avaliability, because HA execute 2 times same command

```
$ fly deploy --ha=false
```

## TODO

- [ ] Move process to worker type
- [ ] Create a command line health check
