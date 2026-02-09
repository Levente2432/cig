Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$screen = [System.Windows.Forms.Screen]::PrimaryScreen.Bounds

while ($true) {
    $x = Get-Random -Minimum 0 -Maximum $screen.Width
    $y = Get-Random -Minimum 0 -Maximum $screen.Height
    [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($x, $y)
    Start-Sleep -Milliseconds 700
}
