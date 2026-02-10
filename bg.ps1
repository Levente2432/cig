$u = 'https://i1.sndcdn.com/artworks-Tylvt34Y9xym3HW8-FK97Ew-t500x500.png'      # prank image
$p = "$env:TEMP\bg2.jpg"
Invoke-WebRequest $u -OutFile $p

Add-Type 'using System;using System.Runtime.InteropServices;public class W{[DllImport("user32.dll")]public static extern int SystemParametersInfo(int a,int b,string c,int d);}'
[W]::SystemParametersInfo(20,0,$p,3)
