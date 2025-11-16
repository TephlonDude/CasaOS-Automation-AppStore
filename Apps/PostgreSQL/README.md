# PostgreSQL for CasaOS

PostgreSQL is an advanced open-source relational database. Powerful SQL database with advanced features and reliability.

**Features**
- ACID compliance
- Complex queries and indexing
- JSON and full-text search support
- Replication and high availability
- Advanced security and user permissions
- Extensible with custom functions

**Ports**
- **Database:** `5432`

**Volumes**
- `/DATA/AppData/postgres:/var/lib/postgresql/data` - Database files

**Environment Variables**
- `POSTGRES_PASSWORD` - Superuser password
- `POSTGRES_DB` - Default database
- `POSTGRES_USER` - Superuser username

**Quick Start**

```pwsh
cp .\Apps\PostgreSQL\.env.sample .\Apps\PostgreSQL\.env
# Edit .env to set strong passwords
docker compose -f .\Apps\PostgreSQL\docker-compose.yml up -d
```

**Resources**
- [Official Website](https://www.postgresql.org)
- [Documentation](https://www.postgresql.org/docs/)
