# Redis for CasaOS

In-memory data structure store for caching and real-time applications

## 🚀 Features

- Ultra-fast key-value storage
- Persistence options (RDB and AOF)
- Rich data structures (strings, lists, sets, hashes, streams)
- Transactions and Lua scripting
- Pub/Sub messaging
- Replication and clustering

## 🛠️ Setup on CasaOS

**Port Mapping**
- Redis listens on port \$(System.Collections.Hashtable.MainPort)\ inside the container
- Mapped to host port \$(System.Collections.Hashtable.MainPort)\ (configurable in compose file)

**Persistent Storage**
- Data is stored at \/DATA/AppData/redis\ on your CasaOS host
- Configure via volume mount in \docker-compose.yml\
- Ensure this directory has sufficient permissions and storage space

**Environment Configuration**

- `REDIS_PASSWORD - Authentication password (set a strong value)`

## 🌐 Access & Integration

**In CasaOS UI:**
- Add the application from the Automation AppStore
- Configure environment variables and ports as needed
- Start the service; it will begin running and be accessible on the mapped port

**For Other Apps:**
- Other CasaOS services can reference this app using its container name on the internal network
- Services deployed in the same compose file or network can communicate directly

## 💡 Tips

- **Backup Data:** Regularly back up \/DATA/AppData/redis\ to protect your configuration and data
- **Logs:** Monitor application logs via the CasaOS app management UI to troubleshoot issues
- **Performance:** Allocate sufficient resources (CPU/memory) through CasaOS settings for optimal performance
- **Integration:** Explore integrations with other CasaOS apps to enhance functionality
- **Updates:** Check for updates regularly through the CasaOS AppStore to get bug fixes and new features

## 📚 Resources

- [https://redis.io](https://redis.io)
- [https://redis.io/documentation](https://redis.io/documentation)
- [https://redis.io/commands](https://redis.io/commands)

---

**Category:** Applications  
**Maintainer:** CasaOS Community  
**License:** See individual app licensing information  

For support, please refer to the official documentation or community forums linked above.
