# Au premier message du jour, demande a Claude de lancer le scan des visios.
# La date du dernier scan est dans notes/veille-visios/dernier-scan.txt.
$root = Split-Path (Split-Path $PSScriptRoot)
$f = Join-Path $root 'notes\veille-visios\dernier-scan.txt'
$today = Get-Date -Format 'yyyy-MM-dd'
$last = ''
if (Test-Path $f) { $last = ((Get-Content $f -TotalCount 1) -as [string]).Trim() }
if ($last -eq $today) { exit 0 }
if ($last -eq '') { $last = 'jamais' }
$msg = "SCAN DU JOUR DES VISIOS A FAIRE (dernier scan : $last). Reponds d'abord au message de Roland, puis lance tout de suite le scan des visios de coaching en suivant notes/veille-visios/procedure-scan.md, et termine par le point du jour avec les propositions a valider. Ecris la date du jour dans notes/veille-visios/dernier-scan.txt des le debut du scan."
@{ hookSpecificOutput = @{ hookEventName = 'UserPromptSubmit'; additionalContext = $msg } } | ConvertTo-Json -Compress
