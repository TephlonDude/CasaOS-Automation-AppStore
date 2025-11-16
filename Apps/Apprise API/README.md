# Apprise API for CasaOS

Apprise API exposes a simple HTTP API to send notifications through the Apprise notification framework.

## 🚀 Features

- Simple HTTP-based notification API
- Supports many notification services via Apprise (email, push, chat services)
- Lightweight and easy to integrate with CasaOS automations

## 🛠️ Setup on CasaOS

**Persistent Storage**
- Configuration is stored at `/DATA/AppData/apprise-api`

**Environment Configuration**
- `APPRISE_API_KEY` — API key used to authorize requests (set a secure value)

## 🌐 Access & Integration

**In CasaOS UI:**
- Add the app from the Automation AppStore and set `APPRISE_API_KEY` in environment settings
- Use the provided HTTP endpoint to trigger notifications from other CasaOS apps or automations

## 💡 Tips

- **Secrets:** Treat your `APPRISE_API_KEY` like a password — rotate if compromised
- **Integrations:** Configure multiple Apprise services for redundancy (e.g., email + push)

## 📚 Resources

- https://github.com/caronc/apprise-api
- https://github.com/caronc/apprise
