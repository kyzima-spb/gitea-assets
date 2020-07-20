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

