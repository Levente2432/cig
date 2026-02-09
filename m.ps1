Add-Type -As System.Windows.Forms
Add-Type -As System.Drawing
while (1) {
  $s=[Windows.Forms.Screen]::PrimaryScreen.Bounds
  $x=Get-Random 0 $s.Width
  $y=Get-Random 0 $s.Height
  [Windows.Forms.Cursor]::Position=[Drawing.Point]::new($x,$y)
  Start-Sleep -ms 700
}
