# Syncthing for CasaOS

Syncthing is a continuous file synchronization program. Securely sync files between multiple devices without relying on a central server.

**Features**
- Peer-to-peer file sync (no central server)
- End-to-end encryption
- Version history and file recovery
- Selective sync and ignore patterns
- Cross-platform support
- Web UI for management

**Ports**
- **Web UI:** `8384`
- **Sync:** `22000` (TCP/UDP)
- **Discovery:** `21027` (UDP)

**Volumes**
- `/DATA/AppData/syncthing:/var/syncthing` - Config and metadata
- `/DATA:/DATA` - Folders to sync

**Quick Start**

```pwsh
cp .\Apps\Syncthing\.env.sample .\Apps\Syncthing\.env
docker compose -f .\Apps\Syncthing\docker-compose.yml up -d
```

Access at `http://<CASAOS-IP>:8384`

**Resources**
- [Official Website](https://syncthing.net)
- [Documentation](https://docs.syncthing.net/)
