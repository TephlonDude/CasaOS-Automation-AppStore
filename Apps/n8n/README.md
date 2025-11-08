# n8n for CasaOS

![n8n Logo](https://raw.githubusercontent.com/n8n-io/n8n/master/assets/n8n-logo.png)

n8n (short for **“nodemation”**) is a powerful, open-source workflow automation tool that lets you connect apps, APIs, and services — no coding required. It runs locally on your CasaOS server, giving you full control over your data and automations.

---

## 🧩 Features

- Visual, drag-and-drop workflow builder  
- Over **400+ built-in integrations** (databases, APIs, AI tools, webhooks, and more)  
- Run locally or connect securely to cloud services  
- Supports custom JavaScript and Python nodes  
- Built-in triggers, schedulers, and conditional logic  
- Persistent workflow storage under `/DATA/AppData/n8n`

---

## 🛠️ CasaOS Setup

| Setting | Value |
|----------|-------|
| **Container Port** | `5678` |
| **Host Port** | `5678` |
| **Volumes** | `/DATA/AppData/n8n:/home/node/.n8n` |
| **Image** | `n8nio/n8n:latest` |
| **Network** | `bridge` |

### Environment Variables

| Variable | Description | Example |
|-----------|--------------|----------|
| `N8N_BASIC_AUTH_ACTIVE` | Enable login auth | `true` |
| `N8N_BASIC_AUTH_USER` | Username for login | `admin` |
| `N8N_BASIC_AUTH_PASSWORD` | Password for login | `changeme` |
| `GENERIC_TIMEZONE` | Set your local timezone | `America/Edmonton` |

---

## 🌐 Accessing n8n

Once installed, open your browser and visit:
http://<your-casaos-ip>:5678

For example:
http://192.168.1.50:5678

Log in using the username and password you defined in your environment variables.

---

## 🧠 Tips & Recommendations

- Keep your workflows backed up by copying `/DATA/AppData/n8n` regularly.  
- Use **Webhook nodes** to integrate with other local services.

---

## 📚 Resources

- [Official Website](https://n8n.io)  
- [Documentation](https://docs.n8n.io)  
- [Community Forum](https://community.n8n.io)  
- [GitHub Repository](https://github.com/n8n-io/n8n)

---

**Maintainer:** Jason McFeetors  
**Category:** Automation & AI  
**License:** [Apache 2.0](https://www.apache.org/licenses/LICENSE-2.0)

