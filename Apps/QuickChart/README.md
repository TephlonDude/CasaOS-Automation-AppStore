# QuickChart for CasaOS

QuickChart is an open-source API for generating chart images. Create beautiful charts (bar, pie, line, etc.) via simple URL parameters.

**Features**
- Chart image generation API
- Multiple chart types supported
- URL-based configuration
- PNG and SVG export
- No JavaScript required
- Lightweight and fast

**Ports**
- **API:** `3400`

**Quick Start**

```pwsh
cp .\Apps\QuickChart\.env.sample .\Apps\QuickChart\.env
docker compose -f .\Apps\QuickChart\docker-compose.yml up -d
```

Access at `http://<CASAOS-IP>:3400`

**Example Chart URL**
```
http://<CASAOS-IP>:3400/chart?c={type:'bar',data:{labels:['A','B'],datasets:[{label:'Data',data:[1,2]}]}}
```

**Resources**
- [Official Website](https://quickchart.io)
- [GitHub](https://github.com/ianw/quickchart)
