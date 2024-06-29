param (
    [switch]$list = $false
)

if ($args[0] -ne $null) {
    $appId = get-StartApps -Name $args[0] | Select AppID -ExpandProperty AppID

    if ($appId -eq $null) {
        Write-Host "Application not found"
        exit
    }

    Start-Process -FilePath "shell:AppsFolder\$appId"
    exit
}

if ($list) {
    get-StartApps | select Name -ExpandProperty Name
    exit
}

Write-Host "Usage: launch.ps1 ApplicationName|[-list]" 
Write-Host ""
Write-Host "  -list     List all applications found in shell:appsFolder"
Write-Host "  ApplicationName     Launch the application"
Write-Host ""

