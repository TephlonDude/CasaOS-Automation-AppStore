# ChartBrew for CasaOS

Open-source data visualization and analytics platform

## 🚀 Features

- Create interactive charts and dashboards
- Connect to multiple data sources (SQL, MongoDB, APIs)
- Real-time data visualization
- Team collaboration features
- CSV/JSON data import support
- Self-hosted analytics solution

## 🛠️ Setup on CasaOS

**Port Mapping**
- ChartBrew listens on port \$(System.Collections.Hashtable.MainPort)\ inside the container
- Mapped to host port \$(System.Collections.Hashtable.MainPort)\ (configurable in compose file)

**Persistent Storage**
- Data is stored at \/DATA/AppData/chartbrew\ on your CasaOS host
- Configure via volume mount in \docker-compose.yml\
- Ensure this directory has sufficient permissions and storage space

**Environment Configuration**

- `CHARTBREW_DB_USERNAME - Database username`
- `CHARTBREW_DB_PASSWORD - Database password (set a strong value)`

## 🌐 Access & Integration

**In CasaOS UI:**
- Add the application from the Automation AppStore
- Configure environment variables and ports as needed
- Start the service; it will begin running and be accessible on the mapped port

**For Other Apps:**
- Other CasaOS services can reference this app using its container name on the internal network
- Services deployed in the same compose file or network can communicate directly

## 💡 Tips

- **Backup Data:** Regularly back up \/DATA/AppData/chartbrew\ to protect your configuration and data
- **Logs:** Monitor application logs via the CasaOS app management UI to troubleshoot issues
- **Performance:** Allocate sufficient resources (CPU/memory) through CasaOS settings for optimal performance
- **Integration:** Explore integrations with other CasaOS apps to enhance functionality
- **Updates:** Check for updates regularly through the CasaOS AppStore to get bug fixes and new features

## 📚 Resources

- [https://chartbrew.com](https://chartbrew.com)
- [https://docs.chartbrew.com](https://docs.chartbrew.com)
- [https://github.com/chartbrew/chartbrew](https://github.com/chartbrew/chartbrew)

---

**Category:** Applications  
**Maintainer:** CasaOS Community  
**License:** See individual app licensing information  

For support, please refer to the official documentation or community forums linked above.
