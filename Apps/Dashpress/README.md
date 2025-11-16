# DashPress for CasaOS

DashPress is an open-source, no-code admin dashboard and data analytics platform. Self-host internal tools quickly without coding.

**Features**
- Admin dashboard for databases
- No-code internal tools and dashboards
- User authentication and role-based access
- REST API support
- Works with multiple database backends

**Ports**
- **Container:** `3000`
- **Host:** `3000`

**Volumes**
- `/DATA/AppData/dashpress:/app/data` - Persistent app data

**Quick Start**

```pwsh
cp .\Apps\Dashpress\.env.sample .\Apps\Dashpress\.env
docker compose -f .\Apps\Dashpress\docker-compose.yml up -d
```

Access at `http://<CASAOS-IP>:3000`

**Resources**
- [Official Website](https://dashpress.io)
- [GitHub](https://github.com/dashpresshq/dashpress)
