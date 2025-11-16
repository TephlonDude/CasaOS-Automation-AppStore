# NocoDB for CasaOS

Open-source database management interface for SQL and NoSQL databases

## 🚀 Features

- Spreadsheet-like database UI
- Multi-database support (PostgreSQL, MySQL, SQLite, etc.)
- REST and GraphQL API
- User roles and permissions
- Automation and webhooks
- Gallery, grid, and form views

## 🛠️ Setup on CasaOS

**Port Mapping**
- NocoDB listens on port \$(System.Collections.Hashtable.MainPort)\ inside the container
- Mapped to host port \$(System.Collections.Hashtable.MainPort)\ (configurable in compose file)

**Persistent Storage**
- Data is stored at \/DATA/AppData/nocodb\ on your CasaOS host
- Configure via volume mount in \docker-compose.yml\
- Ensure this directory has sufficient permissions and storage space

**Environment Configuration**

- `DATABASE_URL - Primary database connection string`
- `NC_DB - NocoDB metadata database connection`

## 🌐 Access & Integration

**In CasaOS UI:**
- Add the application from the Automation AppStore
- Configure environment variables and ports as needed
- Start the service; it will begin running and be accessible on the mapped port

**For Other Apps:**
- Other CasaOS services can reference this app using its container name on the internal network
- Services deployed in the same compose file or network can communicate directly

## 💡 Tips

- **Backup Data:** Regularly back up \/DATA/AppData/nocodb\ to protect your configuration and data
- **Logs:** Monitor application logs via the CasaOS app management UI to troubleshoot issues
- **Performance:** Allocate sufficient resources (CPU/memory) through CasaOS settings for optimal performance
- **Integration:** Explore integrations with other CasaOS apps to enhance functionality
- **Updates:** Check for updates regularly through the CasaOS AppStore to get bug fixes and new features

## 📚 Resources

- [https://nocodb.com](https://nocodb.com)
- [https://docs.nocodb.com](https://docs.nocodb.com)
- [https://github.com/nocodb/nocodb](https://github.com/nocodb/nocodb)

---

**Category:** Applications  
**Maintainer:** CasaOS Community  
**License:** See individual app licensing information  

For support, please refer to the official documentation or community forums linked above.
