# Olive Tin for CasaOS

Olive Tin is a self-hosted media management/automation helper (containerized) intended for homelab use. This `README` explains how to run Olive Tin on CasaOS using the provided `docker-compose.yaml` and the included `.env.sample`.

**Important:** The OliveTin image and compose in this repository mount `/var/run/docker.sock` and grant elevated permissions. That is a security-sensitive configuration — see the Security section below.

**Features**
- Simple HTTP UI (exposed on port `1337` by default)
- Can access host Docker socket to manage containers/scripts (if enabled)
- Persists config and scripts under `/DATA/AppData/olivetin`

**Ports**
- **Container port:** `1337`
- **Host mapping:** `1337` (via `docker-compose.yaml` `ports` mapping)

**Volumes**
- ` /DATA/AppData/olivetin/config:/config` - persistent configuration and state (CasaOS backups recommended)
- `/DATA/AppData/olivetin/scripts:/scripts` - optional user scripts
- `/DATA/Media:/DATA/Media` - media library (as used in your environment)
- `/DATA/Downloads:/DATA/Downloads` - downloads folder
- `/var/run/docker.sock:/var/run/docker.sock` - (optional) Docker socket access; powerful and potentially dangerous

See `docker-compose.yaml` for the exact mount points.

**Environment & Pinning**
- This repo includes `Apps/OliveTin/.env.sample` — copy it to `Apps/OliveTin/.env` and set values before running.
- The compose supports pinning the image via the `OLIVETIN_IMAGE` variable. Example `.env` entry:

```text
OLIVETIN_IMAGE=jamesread/olivetin:v1.2.3
```

Pinning the image to a tag or digest is strongly recommended to avoid unexpected upgrades.

**Security**
- Mounting `/var/run/docker.sock` gives the container effective root control over the Docker host. Only enable it if Olive Tin requires Docker API access.
- `privileged: true` is present in the compose by default (historical). That grants broad permissions and increases risk. Recommended actions:
  - Preferred: keep the Docker socket mount and remove `privileged: true` (the compose can run without `privileged` in most Docker-socket use cases). This compose now removes `privileged: true` by default and keeps the socket mount — you can add `cap_add` if you find a specific capability is required.
  - If possible, run without the Docker socket and without `privileged` for stronger isolation.
  - If a specific capability is required, prefer `cap_add` with a minimal set instead of `privileged`.

If you are deploying on a multi-tenant or production host, carefully evaluate these settings.

**Healthcheck**
- The `docker-compose.yaml` includes a healthcheck that probes `http://127.0.0.1:1337/` (tries `wget` then `curl`). This helps CasaOS or orchestrators determine when the service is ready.

**Quick Start (PowerShell on CasaOS host)**

1. Copy the sample env and set a pinned image tag:

```pwsh
cp .\Apps\OliveTin\.env.sample .\Apps\OliveTin\.env
# Edit .\Apps\OliveTin\.env and set OLIVETIN_IMAGE to a pinned tag/digest
```

2. Start the service:

```pwsh
docker compose -f .\Apps\OliveTin\docker-compose.yaml up -d
```

3. Check status and logs:

```pwsh
docker compose -f .\Apps\OliveTin\docker-compose.yaml ps
docker compose -f .\Apps\OliveTin\docker-compose.yaml logs -f olivetin
```

4. Visit the UI in your browser at:

```
http://<CASAOS-IP>:1337
```

**Troubleshooting**
- If the container fails to start, check logs with `docker compose logs -f olivetin`.
- If healthcheck is failing, confirm the app listens on port `1337` inside the container and that the health endpoint responds.
- If mounts are not present on the host, ensure the host directories exist and permissions allow the Docker engine to create/write them. On Windows hosts using WSL or path translation, ensure paths are accessible in your Docker environment.

**Notes for CasaOS Maintainers**
- Consider documenting in the CasaOS app listing that OliveTin requires careful review before enabling Docker socket access.
- If you prefer, I can remove `privileged: true` from the compose and leave a README note explaining the rationale — this repository already provides an `.env.sample` for pinning.

**Resources**
- Compose file: `Apps/OliveTin/docker-compose.yaml`
- Env sample: `Apps/OliveTin/.env.sample`

If you want, I can also: remove `privileged: true` from the compose, add `cap_add` with minimal capabilities, or include an extended security section with example `cap_add` values. Tell me which and I’ll apply it.
