Write-Host "=============================================="
Write-Host " DESPLIEGUE AUTOMATIZADO - GHOST CMS PLATFORM "
Write-Host "=============================================="

# Ruta del proyecto
$ProjectRoot = "C:\Users\jofra\Desktop\proyecto-ghost"
Set-Location $ProjectRoot

Write-Host "Proyecto:"
Get-Location

# Verificar Docker
Write-Host "`nVerificando Docker Desktop..."

$dockerReady = $false

try {
    docker info | Out-Null
    $dockerReady = $true
    Write-Host "Docker ya está activo"
}
catch {
    Write-Host "Docker no está activo. Iniciando Docker Desktop..."
    $dockerExe = "C:\Program Files\Docker\Docker\Docker Desktop.exe"

    if (Test-Path $dockerExe) {
        Start-Process "$dockerExe"
    } else {
        Write-Host "Docker Desktop no encontrado"
        exit 1
    }
}

# Esperar Docker
Write-Host "Esperando que Docker esté listo..."
while (-not $dockerReady) {
    Start-Sleep -Seconds 5
    try {
        docker info | Out-Null
        $dockerReady = $true
        Write-Host "Docker listo"
    }
    catch {
        Write-Host "Aún esperando Docker..."
    }
}

# Levantar servicios
Write-Host "`nLevantando servicios..."
docker compose up -d

# Esperar que los servicios arranquen
Write-Host "Esperando que los servicios se estabilicen..."
Start-Sleep -Seconds 15

# Mostrar contenedores
Write-Host "`nContenedores activos:"
docker ps

# Abrir servicios web
Write-Host "`nAbriendo servicios en el navegador..."

Start-Process "http://localhost:2368"          # Ghost
Start-Process "http://localhost:2368/ghost"    # Ghost Admin
Start-Process "http://localhost:3000"          # Grafana
Start-Process "http://localhost:9090"          # Prometheus
Start-Process "http://localhost:8080"          # phpMyAdmin

Write-Host "`nDespliegue completo"
