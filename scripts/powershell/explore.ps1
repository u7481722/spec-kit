# 確保目錄存在
if (!(Test-Path -Path "memory")) {
    New-Item -ItemType Directory -Path "memory"
}
Write-Output '{"status": "success", "message": "Exploration environment ready"}'