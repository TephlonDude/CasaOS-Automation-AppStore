$foundApps = @('Gitea', 'Homepage', 'MariaDB', 'Metabase', 'n8n', 'NocoDB', 'OliveTin', 'PostgreSQL', 'postgREST', 'QuickChart', 'Redis', 'Syncthing', 'Twingate', 'Uptime Kuma', 'WUD')

Write-Host "Comparing official store compose files with local versions..." -ForegroundColor Cyan
Write-Host ""

foreach ($app in $foundApps) {
    $url = "https://raw.githubusercontent.com/IceWhaleTech/CasaOS-AppStore/main/Apps/$app/docker-compose.yml"
    $localPath = ".\Apps\$app\docker-compose.yml"
    
    $official = (Invoke-WebRequest -Uri $url -UseBasicParsing -ErrorAction SilentlyContinue).Content
    $local = Get-Content $localPath -Raw
    
    if ($official) {
        if ($official -eq $local) {
            Write-Host "$app : SAME" -ForegroundColor Green
        } else {
            Write-Host "$app : DIFFERENT" -ForegroundColor Yellow
            # Save official version to comparison file
            $official | Out-File ".\Apps\$app\docker-compose.official.yml"
            Write-Host "  Saved official version to docker-compose.official.yml"
        }
    } else {
        Write-Host "$app : ERROR fetching official" -ForegroundColor Red
    }
}
