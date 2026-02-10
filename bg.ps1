$u = 'https://i.imgur.com/Oj2ea4v.png'      # prank image
$timestamp = Get-Date -Format "yyyyMMddHHmmss"
$p = "$env:TEMP\bga_$timestamp.jpg"

# Clear Windows wallpaper cache
$cachedFiles = "$env:APPDATA\Microsoft\Windows\Themes\CachedFiles"
$transcodedWallpaper = "$env:APPDATA\Microsoft\Windows\Themes\TranscodedWallpaper"

Remove-Item -Path "$cachedFiles\*" -Force -Recurse -ErrorAction SilentlyContinue
Remove-Item -Path $transcodedWallpaper -Force -ErrorAction SilentlyContinue

Invoke-WebRequest $u -OutFile $p

Add-Type 'using System;using System.Runtime.InteropServices;public class W{[DllImport("user32.dll")]public static extern int SystemParametersInfo(int a,int b,string c,int d);}'
[W]::SystemParametersInfo(20,0,$p,3)
