# ZeroTier One for CasaOS

ZeroTier One provides virtual, software-defined networking to connect devices across the internet as if they are on the same LAN.

## 🚀 Features

- Virtual LANs across devices
- Encrypted peer-to-peer connections
- Easy network management via ZeroTier Central

## 🛠️ Setup on CasaOS

**Persistent Storage**
- ZeroTier stores node identity in `/DATA/AppData/zerotier`

**Environment Configuration**
- `ZT_NETWORK_ID` — (optional) join a specific network at startup

## 🌐 Access & Integration

**In CasaOS UI:**
- Add the app from the Automation AppStore and provide `ZT_NETWORK_ID` if you want it to auto-join a network
- After the container starts, copy the node ID and add it to your ZeroTier network via ZeroTier Central

## 💡 Tips

- **Security:** Keep ZeroTier node IDs private and approve nodes cautiously in ZeroTier Central
- **Networking:** ZeroTier may require additional host capabilities; if networking issues occur consider adding `NET_ADMIN` capability or using host networking

## 📚 Resources

- https://www.zerotier.com
- https://docs.zerotier.com
