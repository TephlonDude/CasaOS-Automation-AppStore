# Twingate for CasaOS

Twingate provides zero-trust network access. Secure remote access to private resources without VPN complexity.

**Features**
- Zero-trust security model
- Remote access to private networks
- Device posture checks
- Multi-factor authentication support
- Granular access policies
- No port forwarding or VPN required

**Ports**
- **Admin UI:** `8080` (optional)

**Volumes**
- `/DATA/AppData/twingate:/var/twingate` - Config and state

**Configuration**
This requires a Twingate account and API credentials. Obtain `TWINGATE_URL`, `ACCESS_URL`, and `REFRESH_URL` from your Twingate dashboard.

**Quick Start**

```pwsh
cp .\Apps\Twingate\.env.sample .\Apps\Twingate\.env
# Edit .env with your Twingate credentials
docker compose -f .\Apps\Twingate\docker-compose.yml up -d
```

**Resources**
- [Official Website](https://www.twingate.com)
- [Documentation](https://docs.twingate.com/)
