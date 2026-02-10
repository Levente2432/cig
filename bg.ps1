$u = 'https://github.com/Levente2432/cig/blob/main/kep.jpg?raw=true'      # prank image
$p = "$env:TEMP\bg.jpg"
Invoke-WebRequest $u -OutFile $p

Add-Type 'using System;using System.Runtime.InteropServices;public class W{[DllImport("user32.dll")]public static extern int SystemParametersInfo(int a,int b,string c,int d);}'
[W]::SystemParametersInfo(20,0,$p,3)
