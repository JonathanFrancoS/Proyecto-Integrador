Write-Host "========================================"
Write-Host " DETENIENDO GHOST CMS "
Write-Host "========================================"

$ProjectRoot = "C:\Users\jofra\Desktop\proyecto-ghost"
Set-Location $ProjectRoot

docker compose down

Write-Host ""
Write-Host "Servicios detenidos correctamente"
