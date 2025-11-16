# n8n for CasaOS

Workflow automation platform to connect and automate your apps

## 🚀 Features

- 400+ integrations with popular services
- Visual workflow builder
- Self-hosted workflow execution
- Scheduling and triggers
- Error handling and retries
- Multi-user support

## 🛠️ Setup on CasaOS

**Port Mapping**
- n8n listens on port \$(System.Collections.Hashtable.MainPort)\ inside the container
- Mapped to host port \$(System.Collections.Hashtable.MainPort)\ (configurable in compose file)

**Persistent Storage**
- Data is stored at \/DATA/AppData/n8n\ on your CasaOS host
- Configure via volume mount in \docker-compose.yml\
- Ensure this directory has sufficient permissions and storage space

**Environment Configuration**

- `N8N_BASIC_AUTH_ACTIVE - Enable basic auth (true/false)`
- `N8N_BASIC_AUTH_USER - Admin username`
- `N8N_BASIC_AUTH_PASSWORD - Admin password (set a strong value)`

## 🌐 Access & Integration

**In CasaOS UI:**
- Add the application from the Automation AppStore
- Configure environment variables and ports as needed
- Start the service; it will begin running and be accessible on the mapped port

**For Other Apps:**
- Other CasaOS services can reference this app using its container name on the internal network
- Services deployed in the same compose file or network can communicate directly

## 💡 Tips

- **Backup Data:** Regularly back up \/DATA/AppData/n8n\ to protect your configuration and data
- **Logs:** Monitor application logs via the CasaOS app management UI to troubleshoot issues
- **Performance:** Allocate sufficient resources (CPU/memory) through CasaOS settings for optimal performance
- **Integration:** Explore integrations with other CasaOS apps to enhance functionality
- **Updates:** Check for updates regularly through the CasaOS AppStore to get bug fixes and new features

## 📚 Resources

- [https://n8n.io](https://n8n.io)
- [https://docs.n8n.io](https://docs.n8n.io)
- [https://github.com/n8n-io/n8n](https://github.com/n8n-io/n8n)

---

**Category:** Applications  
**Maintainer:** CasaOS Community  
**License:** See individual app licensing information  

For support, please refer to the official documentation or community forums linked above.
