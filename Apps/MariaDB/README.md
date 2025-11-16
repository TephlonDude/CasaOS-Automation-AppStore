# MariaDB for CasaOS

MariaDB is an open-source relational database server. MySQL-compatible alternative with improved performance and features.

**Features**
- MySQL-compatible SQL queries and tools
- Reliable ACID compliance
- InnoDB and other storage engines
- User authentication and role-based access
- Backup and recovery support

**Ports**
- **Database:** `3306`

**Volumes**
- `/DATA/AppData/mariadb:/var/lib/mysql` - Database files and config

**Environment Variables**
- `MARIADB_ROOT_PASSWORD` - Root password
- `MARIADB_DATABASE` - Default database name
- `MARIADB_USER` - Application user
- `MARIADB_PASSWORD` - Application user password

**Quick Start**

```pwsh
cp .\Apps\MariaDB\.env.sample .\Apps\MariaDB\.env
# Edit .env to set strong passwords
docker compose -f .\Apps\MariaDB\docker-compose.yml up -d
```

**Resources**
- [Official Website](https://mariadb.org)
- [Documentation](https://mariadb.com/docs/server/)
