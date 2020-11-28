https://github.com/rust-lang/docker-rust

```
docker run --it --rm -v $(pwd)
```

Compile inside the Docker container
```
docker run --rm \
  --user "$(id -u)":"$(id -g)" \
  -e USER=$USER \
  -v "$PWD":/usr/src/myapp \
  -w /usr/src/myapp \
  docker.r.winry.it/rust:1.48.0 cargo build --release
```
