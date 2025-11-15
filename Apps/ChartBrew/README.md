# ChartBrew for CasaOS

![ChartBrew Logo](https://raw.githubusercontent.com/chartbrew/chartbrew/main/client/public/logo192.png)

ChartBrew is an open-source data visualization platform that connects to your databases or APIs to build beautiful charts and dashboards in minutes.  
Self-host it on CasaOS to create real-time insights for your projects, homelab, or business data — all under your control.

---

## 📊 Features

- Connect to databases (MySQL, PostgreSQL, MongoDB, etc.) and REST APIs  
- Create interactive dashboards with drag-and-drop charting  
- Secure user accounts and team sharing  
- Live data refresh and scheduling  
- Export or embed charts anywhere  
- Works perfectly with CasaOS databases like **MySQL**, **PostgreSQL**, or **SQLite**

---

## 🛠️ CasaOS Setup

| Setting | Value |
|----------|-------|
| **Container Port** | `4018` |
| **Host Port** | `4018` |
| **Volumes** | `/DATA/AppData/chartbrew:/app` |
| **Image** | `chartbrew/chartbrew:latest` |
| **Network** | `bridge` |

### Environment Variables

| Variable | Description | Example |
|-----------|--------------|----------|
| `CB_DB_TYPE` | Database type (sqlite, mysql, postgres) | `sqlite` |
| `CB_DB_NAME` | Database name | `chartbrew` |
| `CB_DB_HOST` | Database host (if external) | `localhost` |
| `CB_DB_PORT` | Database port | `3306` |
| `CB_DB_USER` | Database user | `chartbrew` |
| `CB_DB_PASS` | Database password | `password` |
| `CB_SQLITE_FILENAME` | Path for SQLite (default CasaOS) | `/app/sqlite/chartbrew.db` |
| `CB_SECRET` | Session secret | `changeme` |
| `PORT` | Port for web UI | `4018` |

---

## 🌐 Accessing ChartBrew

Once the container is running, open your browser and visit:
http://<your-casaos-ip>:4018

For example:
http://192.168.1.50:4018


The first user to sign up becomes the admin account.

---

## 🧠 Tips & Recommendations

- For a simple setup, use **SQLite** (default).  
  For production dashboards, connect to **MySQL** or **PostgreSQL** for better performance.  
- Combine with **n8n** to automatically feed ChartBrew dashboards with live automation data.  
- Use CasaOS backups to persist `/DATA/AppData/chartbrew`.  
 - Ensure the application files are persisted by mounting `/DATA/AppData/chartbrew:/app` in your `docker-compose.yml` so SQLite and uploads survive container restarts.
 - Consider pinning the ChartBrew image version (avoid `latest`) to prevent unexpected upgrades.
 - Consider pinning the ChartBrew image version (avoid `latest`) to prevent unexpected upgrades. This repo's compose now pins to `chartbrew/chartbrew:v4.6.0`.
 - You can set values via a `.env` file: copy `.env.sample` to `.env` and update secrets there. For example:

   ```pwsh
   cp .env.sample .env
   # then edit .env to set strong values for CB_ENCRYPTION_KEY and CB_SECRET
   ```
 - If you prefer an alternate runtime config, see `docker-compose.override.yml.sample` for examples (SQLite, reverse-proxy labels, etc.).
 - In production, generate secure keys for `CB_ENCRYPTION_KEY` and `CB_SECRET`. Example:

  ```pwsh
  node -e "console.log(require('crypto').randomBytes(32).toString('hex'))"
  ```
- Expose it securely through a reverse proxy if you need external access.

---

## 📚 Resources

- [Official Website](https://chartbrew.com)  
- [Documentation](https://docs.chartbrew.com)  
- [GitHub Repository](https://github.com/chartbrew/chartbrew)  
- [Community Forum](https://community.chartbrew.com)

---

**Maintainer:** Jason McFeetors  
**Category:** Analytics & Dashboards  
**License:** [MIT](https://opensource.org/licenses/MIT)
