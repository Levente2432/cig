Add-Type -AssemblyName Microsoft.VisualBasic
$r=[Microsoft.VisualBasic.Interaction]::MsgBox('Cigany vagy?',4+32,'Cigany')
if($r-eq6){
  [Microsoft.VisualBasic.Interaction]::MsgBox('Jo fiu',64,'Yes')
}else{
  [Microsoft.VisualBasic.Interaction]::MsgBox('Hat pedig az vagy',64,'No')
}
