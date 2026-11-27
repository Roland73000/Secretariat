#!/usr/bin/env bash
# Fabrique la planche des dix propositions de O « coup de pinceau » :
# logos/timops-o-pinceau.html, puis PNG, PNG HD et PDF A4.
set -e
cd "$(dirname "$0")/.."
AWK=outils/enso.awk
CHROME="/c/Program Files/Google/Chrome/Application/chrome.exe"
DIR_WIN="C:/Users/osol7/Documents/Claude/Secretariat/logos"

# Chaque proposition : titre | traits (séparés par ;) | extra
# Un trait = liste de variables awk : "a0=183 sw=348 ..."
BASE="R=17 wb=4.6 wbl=1.8 tt=0.5 ex=0.7 rond=0 plume=0 nstr=8 tstr=0.5 seed=3"
P=(
"1. L'ensō actuel, presque fermé|a0=183 sw=348 $BASE|"
"2. Départ en haut, comme une horloge|$BASE a0=-90 sw=345|"
"3. Trait fin et élégant|$BASE a0=183 sw=345 wb=2.4 wbl=1.2 nstr=4|"
"4. La fin chevauche le début|$BASE a0=183 sw=378 tt=0.6 nstr=10|"
"5. Départ arrondi, en goutte d'encre|$BASE a0=160 sw=345 rond=1 wbl=2.6|"
"6. Sens inverse des aiguilles d'une montre|$BASE a0=-3 sw=-348|"
"7. Pinceau sec, plein de stries|$BASE a0=183 sw=345 wb=5.2 wbl=1 tt=0.55 nstr=26 tstr=0.05 seed=11|"
"8. Deux traits, comme deux personnes|$BASE a0=183 sw=330 wb=2.6 wbl=1 nstr=3 seed=5;$BASE a0=0 sw=320 R=11.5 wb=2.2 wbl=0.8 nstr=2 seed=8|"
"9. Plein et délié, comme à la plume|$BASE a0=200 sw=345 plume=1 wb=6 wbl=1.5 nstr=4 seed=9|"
"10. Ensō et point bleu au centre|$BASE a0=183 sw=345 wb=3.6 wbl=1.4 nstr=6|point"
)

logo() { # $1 = index, $2 = suffixe (b ou n), $3 = couleur
  IFS='|' read -r titre traits extra <<< "${P[$1]}"
  local svg="" k=0
  IFS=';' read -ra T <<< "$traits"
  for tr in "${T[@]}"; do
    k=$((k+1))
    # shellcheck disable=SC2086
    svg+=$(awk $(for v in $tr; do printf -- '-v %s ' "$v"; done) -v id="m$1$2$k" -v col="$3" -f $AWK)
  done
  [ "$extra" = point ] && svg+="<circle cx=\"20\" cy=\"20\" r=\"3.6\" fill=\"$3\"/>"
  printf '<div class="cell"><div class="logo">Tim<svg class="o" viewBox="0 0 40 40">%s</svg>ps</div><div class="lab">%s</div></div>\n' "$svg" "$titre"
}

{
cat <<'EOF'
<!doctype html>
<html lang="fr"><head><meta charset="utf-8"><title>Timops : dix O au pinceau</title>
<style>
@page{size:297mm 210mm;margin:0}
*{-webkit-print-color-adjust:exact;print-color-adjust:exact}
html,body{margin:0;font-family:Helvetica,Arial,sans-serif;background:#fff;color:#111214}
.bloc{width:2400px;box-sizing:border-box;padding:40px 40px 30px}
.bloc.n{background:#111214;color:#fff}
h1{font-size:34px;margin:0 0 6px}
.sub{font-size:18px;opacity:.6;margin:0 0 24px}
.grid{display:grid;grid-template-columns:repeat(5,1fr);grid-auto-rows:300px;gap:0;border-top:1px solid rgba(128,128,128,.25);border-left:1px solid rgba(128,128,128,.25)}
.cell{display:flex;flex-direction:column;align-items:center;justify-content:center;gap:22px;border-right:1px solid rgba(128,128,128,.25);border-bottom:1px solid rgba(128,128,128,.25)}
.logo{font-size:94px;font-weight:700;letter-spacing:-.01em;line-height:1;white-space:nowrap}
.o{height:0.84em;width:0.84em;vertical-align:-0.063em;margin:0 0.05em;overflow:visible}
.lab{font-size:19px;letter-spacing:.01em;opacity:.65}
@media print{
  html,body{width:297mm}
  .bloc{zoom:0.465;height:451mm;break-after:page;display:flex;flex-direction:column;justify-content:center}
  .bloc:last-child{break-after:auto}
}
</style></head><body>
<div class="bloc b">
<h1>Timops : dix propositions pour le O au pinceau</h1>
<p class="sub">Planche du 27/11/2026, sur fond blanc. Le O fait la hauteur du T majuscule.</p>
<div class="grid">
EOF
for i in "${!P[@]}"; do logo "$i" b "#2563EB"; done
cat <<'EOF'
</div></div>
<div class="bloc n">
<h1>Timops : dix propositions pour le O au pinceau</h1>
<p class="sub">Les mêmes, sur fond noir.</p>
<div class="grid">
EOF
for i in "${!P[@]}"; do logo "$i" n "#3B82F6"; done
echo '</div></div></body></html>'
} > timops-o-pinceau.html

"$CHROME" --headless=new --disable-gpu --hide-scrollbars --window-size=2400,1530 --screenshot="$DIR_WIN/timops-o-pinceau.png" "file:///$DIR_WIN/timops-o-pinceau.html" 2>&1 | tail -1
"$CHROME" --headless=new --disable-gpu --hide-scrollbars --force-device-scale-factor=2 --window-size=2400,1530 --screenshot="$DIR_WIN/timops-o-pinceau-HD.png" "file:///$DIR_WIN/timops-o-pinceau.html" 2>&1 | tail -1
"$CHROME" --headless=new --disable-gpu --no-pdf-header-footer --print-to-pdf="$DIR_WIN/timops-o-pinceau.pdf" "file:///$DIR_WIN/timops-o-pinceau.html" 2>&1 | tail -1
