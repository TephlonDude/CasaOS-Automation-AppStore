$foundApps = @('Gitea', 'Homepage', 'MariaDB', 'Metabase', 'n8n', 'NocoDB', 'OliveTin', 'PostgreSQL', 'postgREST', 'QuickChart', 'Redis', 'Syncthing', 'Twingate', 'Uptime Kuma', 'WUD')

Write-Host "Updating compose files from official CasaOS AppStore..." -ForegroundColor Cyan
Write-Host ""

foreach ($app in $foundApps) {
    $url = "https://raw.githubusercontent.com/IceWhaleTech/CasaOS-AppStore/main/Apps/$app/docker-compose.yml"
    $localPath = ".\Apps\$app\docker-compose.yml"
    
    try {
        $official = (Invoke-WebRequest -Uri $url -UseBasicParsing -ErrorAction Stop).Content
        $official | Out-File $localPath -Encoding UTF8 -Force
        Write-Host "$app : UPDATED" -ForegroundColor Green
    } catch {
        Write-Host "$app : ERROR" -ForegroundColor Red
    }
}

Write-Host ""
Write-Host "Update complete!" -ForegroundColor Cyan
