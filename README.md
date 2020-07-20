# gitea-assets
Docker static files compiler for Gitea.

## How to use

Compile assets into current directory directory:
```bash
docker run --rm -v $(pwd):/assets kyzimaspb/gitea-assets <version>
```

Compile assets into a named volume:
```bash
docker run --rm -v gitea-assets:/assets kyzimaspb/gitea-assets <version>
```

By default, the owner of the assets is the user with UID 1000 and GID 1000, but this can be changed using environment variables:
```bash
docker run --rm \
    -e UID=1001 \
    -e GID=1001 \
    -v gitea-assets:/assets kyzimaspb/gitea-assets <version>
```

