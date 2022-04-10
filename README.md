<p align="center">
  <img align="center" src="./assets/icon.svg" height="150px">
</p>

<h1 align="center">Alpine Rsync</h1>
  <h3 align="center">Linux Alpine with rsync preinstalled.</h3>
<br>

<div align="center">

  [![Docker][docker-shield]][docker-url]
  [![Contributors][contributors-shield]][contributors-url]
  [![Forks][forks-shield]][forks-url]
  [![Stargazers][stars-shield]][stars-url]
  [![Issues][issues-shield]][issues-url]
  [![MIT License][license-shield]][license-url]

</div>

## Installation
Run container with public port `222` for connections, and password for root user `123456`. Attach volume `alpine-data` for data exchange. 

### Docker run
```bash
$ docker run -d --name alpine-rsync -p 222:22 -e ROOT_PASSWORD=123456 -v alpine-data:/data chocoearly44/alpine-rsync
```

### Docker compose
```yaml
version: "3.3"
services:
  alpine-ssh:
    container_name: alpine-rsync
    image: chocoearly44/alpine-rsync:latest
    restart: always
    environment:
      ROOT_PASSWORD: "123456"
    ports:
      - "222:22"
    volumes:
      - "alpine-data:/data"
```

## Environment variables
| Variable        | Datatype | Default value |
| --------------- | -------- | ------------- |
| `ROOT_PASSOWRD` | String   | root          |

## Credits
Alpine Rsync is based on [docker-alpine-ssh](https://github.com/devdotnetorg/docker-alpine-ssh) project by [devdotnetorg](https://github.com/devdotnetorg).

## Bug reporting

If you encounter any bugs while using Alpine Rsync, please report them in the [Issues Section][issues-url].

## Support
You can receive additional support in a [Discussions Section][discussions-url].

[contributors-shield]: https://img.shields.io/github/contributors/chocoearly44/alpine-rsync.svg?style=for-the-badge
[forks-shield]: https://img.shields.io/github/forks/chocoearly44/alpine-rsync.svg?style=for-the-badge
[stars-shield]: https://img.shields.io/github/stars/chocoearly44/alpine-rsync.svg?style=for-the-badge
[issues-shield]: https://img.shields.io/github/issues/chocoearly44/alpine-rsync.svg?style=for-the-badge
[license-shield]: https://img.shields.io/github/license/chocoearly44/alpine-rsync.svg?style=for-the-badge
[docker-shield]: https://img.shields.io/docker/pulls/chocoearly44/alpine-rsync?style=for-the-badge

[contributors-url]: https://github.com/chocoearly44/alpine-rsync/graphs/contributors
[forks-url]: https://github.com/chocoearly44/alpine-rsync/network/members
[stars-url]: https://github.com/chocoearly44/alpine-rsync/stargazers
[issues-url]: https://github.com/chocoearly44/alpine-rsync/issues
[license-url]: https://github.com/chocoearly44/alpine-rsync/blob/master/LICENSE
[wiki-url]: https://github.com/chocoearly44/alpine-rsync/wiki
[releases-url]: https://github.com/chocoearly44/alpine-rsync/releases
[discussions-url]: https://github.com/chocoearly44/alpine-rsync/discussions
[docker-url]: https://hub.docker.com/repository/docker/chocoearly44/alpine-rsync
