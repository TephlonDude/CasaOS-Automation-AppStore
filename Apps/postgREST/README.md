# PostgREST for CasaOS

PostgREST is an auto-generated REST API layer for PostgreSQL. Instantly expose your database as a REST API without writing code.

**Features**
- Auto-generated REST API from database schema
- OpenAPI specification support
- Role-based access control
- Full-text search and filtering
- Real-time updates via webhooks
- Instant scaling

**Ports**
- **REST API:** `3000`

**Volumes**
- `/DATA/AppData/postgrest-db:/var/lib/postgresql/data` - PostgreSQL data

**Quick Start**

```pwsh
cp .\Apps\postgREST\.env.sample .\Apps\postgREST\.env
docker compose -f .\Apps\postgREST\docker-compose.yml up -d
```

Access API at `http://<CASAOS-IP>:3000`

**Resources**
- [Official Website](https://postgrest.org)
- [Documentation](https://postgrest.org/en/v11/api/)
