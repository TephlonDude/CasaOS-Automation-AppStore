# Homepage for CasaOS

A highly customizable homepage for your homelab. Create a beautiful start page for your CasaOS dashboard with quick links, status monitors, and integrations.

**Features**
- Customizable widgets and layouts
- Service status monitoring
- Weather and news integration
- Dark/light theme support
- Mobile-friendly design

**Ports**
- **Container:** `3000`
- **Host:** `3000`

**Volumes**
- `/DATA/AppData/homepage:/app/config` - Configuration and custom widgets

**Quick Start**

```pwsh
cp .\Apps\Homepage\.env.sample .\Apps\Homepage\.env
docker compose -f .\Apps\Homepage\docker-compose.yml up -d
```

Access at `http://<CASAOS-IP>:3000`

**Resources**
- [Official Website](https://gethomepage.dev)
- [GitHub](https://github.com/gethomepage/homepage)
