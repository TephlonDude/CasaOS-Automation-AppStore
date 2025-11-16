# Duplicati for CasaOS

Duplicati is an encrypted, incremental backup client that can store backups locally or to cloud providers. Use it in CasaOS to protect important data with scheduled backups.

## 🚀 Features

- Encrypted, incremental backups
- Supports many cloud backends (S3, Backblaze, OneDrive, etc.)
- Web-based interface
- Scheduling and retention policies

## 🛠️ Setup on CasaOS

**Persistent Storage**
- App config and databases are stored at `/DATA/AppData/duplicati`
- Backups can be stored under `/DATA/Backups` or an external cloud provider

**Environment Configuration**
- `DUPLICATI_ADMIN_PASSWORD` — Set a strong admin password before deploying

## 🌐 Access & Integration

**In CasaOS UI:**
- Add the application from the Automation AppStore and configure the `DUPLICATI_ADMIN_PASSWORD` in the environment settings
- Configure backup source folders and destinations using the web UI once the app is running

## 💡 Tips

- **Backup Target:** If storing backups on the CasaOS host, put them under `/DATA/Backups` and ensure adequate free space
- **Encryption:** Keep your passphrase safe — if it's lost, encrypted backups cannot be recovered
- **Retention:** Use sensible retention rules to avoid filling disk space

## 📚 Resources

- https://www.duplicati.com
- https://forum.duplicati.com
