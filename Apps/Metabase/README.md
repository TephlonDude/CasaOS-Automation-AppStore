# Metabase for CasaOS

Metabase is an open-source business intelligence and data visualization tool. Build interactive dashboards and explore data without coding.

**Features**
- Drag-and-drop dashboard builder
- SQL query editor
- Support for 20+ databases
- Scheduled reports and alerts
- User permissions and team management
- Mobile-responsive interface

**Ports**
- **Container:** `3000`
- **Host:** `3000`

**Volumes**
- `/DATA/AppData/metabase:/app/data` - Database and config

**Quick Start**

```pwsh
cp .\Apps\Metabase\.env.sample .\Apps\Metabase\.env
docker compose -f .\Apps\Metabase\docker-compose.yml up -d
```

Access at `http://<CASAOS-IP>:3000`

First user to sign up becomes the admin.

**Resources**
- [Official Website](https://www.metabase.com)
- [Documentation](https://www.metabase.com/docs/latest/)
