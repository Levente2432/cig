$u = 'https://i.ytimg.com/vi/8Ew9P5_3ALw/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLAEKHEXyKd-Cq9AdxJTNRKP3VbnRw'      # prank image
$timestamp = Get-Date -Format "yyyyMMddHHmmss"
$p = "$env:TEMP\bga_$timestamp.jpg"
Invoke-WebRequest $u -OutFile $p

Add-Type 'using System;using System.Runtime.InteropServices;public class W{[DllImport("user32.dll")]public static extern int SystemParametersInfo(int a,int b,string c,int d);}'
[W]::SystemParametersInfo(20,0,$p,3)
