# NocoDB for CasaOS

NocoDB is an open-source Airtable alternative. Turn databases into smart spreadsheets without coding.

**Features**
- Visual database/spreadsheet interface
- REST API for integrations
- Team collaboration and sharing
- Form views and gallery views
- Automation and workflow support
- MySQL, PostgreSQL, SQLite support

**Ports**
- **Container:** `8080`
- **Host:** `8080`

**Volumes**
- `/DATA/AppData/nocodb:/app/data` - Database and config

**Quick Start**

```pwsh
cp .\Apps\NocoDB\.env.sample .\Apps\NocoDB\.env
docker compose -f .\Apps\NocoDB\docker-compose.yml up -d
```

Access at `http://<CASAOS-IP>:8080`

**Resources**
- [Official Website](https://nocodb.com)
- [GitHub](https://github.com/nocodb/nocodb)
