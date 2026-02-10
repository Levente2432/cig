param(
    # IDE ÍRD BE A SAJÁT GITHUB KÉP-URL-T
    [string]$ImageUrl = "https://github.com/Levente2432/cig/blob/main/kep.jpg"
)

# Hova mentse le ideiglenesen a képet
$LocalPath = "$env:TEMP\github-bg.png"

try {
    # Kép letöltése a GitHub URL-ről
    Invoke-WebRequest -Uri $ImageUrl -OutFile $LocalPath -UseBasicParsing

    # Háttérkép beállítása a letöltött fájlra
    Set-ItemProperty -Path 'HKCU:\Control Panel\Desktop\' -Name wallpaper -Value $LocalPath
    rundll32.exe user32.dll, UpdatePerUserSystemParameters 1, True
}
catch {
    Write-Host "Hiba történt a kép letöltése vagy beállítása közben: $($_.Exception.Message)"
}
