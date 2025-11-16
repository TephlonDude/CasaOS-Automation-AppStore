# WUD (What's Up Docker) for CasaOS

WUD is a container update monitor. Track available updates for your Docker images and get notified.

**Features**
- Monitor container image updates
- Notification integrations (webhooks, email, etc.)
- Local Docker registry support
- Automatic update detection
- Simple and lightweight
- Web UI dashboard

**Ports**
- **Dashboard:** `3000`

**Volumes**
- `/var/run/docker.sock:/var/run/docker.sock` - Docker daemon access (read-only)
- `/DATA/AppData/wud:/data` - Config and state

**Quick Start**

```pwsh
cp .\Apps\WUD\.env.sample .\Apps\WUD\.env
docker compose -f .\Apps\WUD\docker-compose.yml up -d
```

Access at `http://<CASAOS-IP>:3000`

**Resources**
- [Official Website](https://www.wud.dev)
- [GitHub](https://github.com/getwud/wud)
