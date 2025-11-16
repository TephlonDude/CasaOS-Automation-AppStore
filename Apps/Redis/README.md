# Redis for CasaOS

Redis is an in-memory data structure store. High-performance caching, session storage, and pub/sub messaging.

**Features**
- Ultra-fast key-value storage
- Persistence options (RDB and AOF)
- Data structures (strings, lists, sets, hashes, streams)
- Transactions and Lua scripting
- Replication and clustering
- Pub/Sub messaging

**Ports**
- **Server:** `6379`

**Volumes**
- `/DATA/AppData/redis:/data` - Persistent data (AOF and RDB)

**Environment Variables**
- `REDIS_PASSWORD` - Authentication password

**Quick Start**

```pwsh
cp .\Apps\Redis\.env.sample .\Apps\Redis\.env
docker compose -f .\Apps\Redis\docker-compose.yml up -d
```

**Resources**
- [Official Website](https://redis.io)
- [Documentation](https://redis.io/documentation)
