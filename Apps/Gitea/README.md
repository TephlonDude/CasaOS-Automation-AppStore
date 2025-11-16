# Gitea for CasaOS

Gitea is a self-hosted Git service written in Go. A lightweight, easy-to-use alternative to GitHub for homelabs.

**Features**
- Git hosting and version control
- Lightweight (low memory footprint)
- User authentication and SSH support
- Issue tracking and pull requests
- Webhook support

**Ports**
- **HTTP:** `3000`
- **SSH:** `2222`

**Volumes**
- `/DATA/AppData/gitea:/data` - Persistent repositories and config

**Quick Start**

```pwsh
cp .\Apps\Gitea\.env.sample .\Apps\Gitea\.env
docker compose -f .\Apps\Gitea\docker-compose.yml up -d
```

Access at `http://<CASAOS-IP>:3000`

**Resources**
- [Official Website](https://gitea.io)
- [GitHub](https://github.com/go-gitea/gitea)
