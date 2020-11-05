https://github.com/docker-library/ruby

How to use this image

```
docker container run --rm -it -w /usr/src/app docker.r.winry.it/ruby:2.7 /bin/bash
```

Run a single Ruby script
```
docker container run --rm -it --mount type=bind,source="$(pwd)",target=/usr/src/app -w /usr/src/app docker.r.winry.it/ruby:2.7 ruby script.rb

```
