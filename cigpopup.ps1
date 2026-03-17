Add-Type -AssemblyName Microsoft.VisualBasic

do {
    $r = [Microsoft.VisualBasic.Interaction]::MsgBox('Cigany vagy?', 4+32, 'Cigany')
} while ($r -ne 6)

[Microsoft.VisualBasic.Interaction]::MsgBox('Tudom', 64, 'Yes')
