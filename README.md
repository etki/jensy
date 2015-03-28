# Jensy

Hi there!

This repository is made with the sole purpose to provide me with
one-command-and-up CI / issue tracking / git / mail server. So i took
docker-compose and launched it up in the sky.

## Usage

```bash
cd jenkins # gitlab, postfix, redmine, sonarqube
docker-compose -d up
```

## Known issues

* I use a hack to pre-build images on DinD container attached to jenkins, so
upping jenkins container takes quite a while.

* Whenever DinD tries to use an allocated port, everything crashes to hell.
