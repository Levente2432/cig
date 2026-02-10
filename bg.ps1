$u = 'https://raw.githubusercontent.com/Levente2432/cig/main/kep.jpg'      # prank image
$p = "$env:TEMP\bg.jpg"
Invoke-WebRequest $u -OutFile $p

Add-Type 'using System;using System.Runtime.InteropServices;public class W{[DllImport("user32.dll")]public static extern int SystemParametersInfo(int a,int b,string c,int d);}'
[W]::SystemParametersInfo(20,0,$p,3)