# Metabase for CasaOS

Business intelligence and data visualization tool for your database

## 🚀 Features

- Interactive dashboards and reports
- SQL query editor
- Scheduled reports via email
- User and permission management
- Multiple data source support
- Mobile-friendly interface

## 🛠️ Setup on CasaOS

**Port Mapping**
- Metabase listens on port \$(System.Collections.Hashtable.MainPort)\ inside the container
- Mapped to host port \$(System.Collections.Hashtable.MainPort)\ (configurable in compose file)

**Persistent Storage**
- Data is stored at \/DATA/AppData/metabase\ on your CasaOS host
- Configure via volume mount in \docker-compose.yml\
- Ensure this directory has sufficient permissions and storage space

**Environment Configuration**

- `MB_DB_TYPE - Database type (postgres, mysql, h2)`
- `MB_DB_DBNAME - Metabase database name`
- `MB_DB_USER - Database user`
- `MB_DB_PASS - Database password`

## 🌐 Access & Integration

**In CasaOS UI:**
- Add the application from the Automation AppStore
- Configure environment variables and ports as needed
- Start the service; it will begin running and be accessible on the mapped port

**For Other Apps:**
- Other CasaOS services can reference this app using its container name on the internal network
- Services deployed in the same compose file or network can communicate directly

## 💡 Tips

- **Backup Data:** Regularly back up \/DATA/AppData/metabase\ to protect your configuration and data
- **Logs:** Monitor application logs via the CasaOS app management UI to troubleshoot issues
- **Performance:** Allocate sufficient resources (CPU/memory) through CasaOS settings for optimal performance
- **Integration:** Explore integrations with other CasaOS apps to enhance functionality
- **Updates:** Check for updates regularly through the CasaOS AppStore to get bug fixes and new features

## 📚 Resources

- [https://www.metabase.com](https://www.metabase.com)
- [https://www.metabase.com/docs](https://www.metabase.com/docs)
- [https://github.com/metabase/metabase](https://github.com/metabase/metabase)

---

**Category:** Applications  
**Maintainer:** CasaOS Community  
**License:** See individual app licensing information  

For support, please refer to the official documentation or community forums linked above.
