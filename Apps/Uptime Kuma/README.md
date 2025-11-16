# Uptime Kuma for CasaOS

Uptime Kuma is a self-hosted monitoring and status page tool. Monitor service uptime and display status publicly.

**Features**
- Service monitoring (HTTP, TCP, DNS, etc.)
- Public status page
- Notifications (email, Slack, Discord, etc.)
- Heartbeat monitoring
- Maintenance windows
- Beautiful dashboard

**Ports**
- **Dashboard:** `3001`

**Volumes**
- `/DATA/AppData/uptime-kuma:/app/data` - Monitoring data and config

**Quick Start**

```pwsh
cp .\Apps\Uptime Kuma\.env.sample .\Apps\Uptime Kuma\.env
docker compose -f .\Apps\Uptime Kuma\docker-compose.yml up -d
```

Access at `http://<CASAOS-IP>:3001`

**Resources**
- [Official Website](https://uptime.kuma.pet)
- [GitHub](https://github.com/louislam/uptime-kuma)
