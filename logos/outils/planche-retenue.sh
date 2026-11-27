#!/usr/bin/env bash
# Planche du logo retenu le 27/11/2026 : tourbillon à trois pales avec un
# point central (la 12 avec le tourbillon de la 9).
# Produit logos/timops-retenu.html, .png, -HD.png et .pdf (A4 paysage).
set -e
cd "$(dirname "$0")/.."
CHROME="/c/Program Files/Google/Chrome/Application/chrome.exe"
DIR_WIN="C:/Users/osol7/Documents/Claude/Secretariat/logos"
tb() { awk $(for v in "$@"; do printf -- '-v %s ' "$v"; done) -f outils/tourbillon.awk; }

# Réglages du logo retenu
O=$(tb id=r0 n=3 R=17 ri=7.2 fe=2.2 sw=120 rot=-90 pt=3.6)
# La 12 de la planche des formes : quatre pales et point central
O4=$(tb id=r4 n=4 R=17 ri=7.4 fe=1.6 sw=110 rot=-90 pt=3.6)

logo() { printf '<div class="logo">Tim<svg class="o" viewBox="0 0 40 40">%s</svg>ps</div>' "$1"; }
icone() { printf '<svg class="ico" viewBox="0 0 40 40">%s</svg>' "$1"; }

cat > timops-retenu.html <<EOF
<!doctype html>
<html lang="fr"><head><meta charset="utf-8"><title>Timops : tourbillon 12 ou 3 pales</title>
<style>
@page{size:297mm 210mm;margin:0}
*{-webkit-print-color-adjust:exact;print-color-adjust:exact}
html,body{margin:0;font-family:Helvetica,Arial,sans-serif;background:#fff;color:#111214}
.page{width:2400px;box-sizing:border-box;padding:50px}
h1{font-size:40px;margin:0 0 8px}
.sub{font-size:20px;opacity:.6;margin:0 0 30px}
.grid{display:grid;grid-template-columns:1fr 1fr;border-top:1px solid #ddd;border-left:1px solid #ddd}
.cell{display:flex;flex-direction:column;align-items:center;justify-content:center;gap:26px;height:380px;border-right:1px solid #ddd;border-bottom:1px solid #ddd;--bleu:#2563EB}
.cell.n{background:#111214;color:#fff;--bleu:#3B82F6}
.af{fill:var(--bleu)} .b{fill:currentColor}
.logo{font-size:170px;font-weight:700;letter-spacing:-.01em;line-height:1;white-space:nowrap}
.o{height:0.84em;width:0.84em;vertical-align:-0.063em;margin:0 0.05em;overflow:visible}
.lab{font-size:20px;opacity:.65;text-align:center}
.row3{display:grid;grid-template-columns:repeat(4,1fr);border-left:1px solid #ddd;margin-top:30px;border-top:1px solid #ddd}
.row3 .cell{height:300px}
.ico{width:150px;height:150px}
.ico.s{width:64px;height:64px}
.ico.xs{width:32px;height:32px}
.icos{display:flex;align-items:flex-end;gap:40px}
.row3 .logo{font-size:96px}
@media print{html,body{width:297mm}.page{zoom:0.465}}
</style></head><body><div class="page">
<h1>Timops : le tourbillon, quatre ou trois pales</h1>
<p class="sub">27/11/2026. Le O fait exactement la hauteur du T majuscule, de la ligne de base au haut du T. Le O est bleu, le point est noir (blanc sur fond noir).</p>
<div class="grid">
<div class="cell">$(logo "$O4")<div class="lab"><b>La 12 : quatre pales et point central</b></div></div>
<div class="cell n">$(logo "$O4")<div class="lab">La 12, sur fond noir</div></div>
<div class="cell">$(logo "$O")<div class="lab"><b>La nouvelle : trois pales et point central</b></div></div>
<div class="cell n">$(logo "$O")<div class="lab">La nouvelle, sur fond noir</div></div>
</div>
<div class="row3">
<div class="cell"><div class="icos">$(icone "$O4")$(printf '<svg class="ico s" viewBox="0 0 40 40">%s</svg>' "$O4")$(printf '<svg class="ico xs" viewBox="0 0 40 40">%s</svg>' "$O4")</div><div class="lab">La 12 en icône, en grand et en petit</div></div>
<div class="cell n"><div class="icos">$(icone "$O4")$(printf '<svg class="ico s" viewBox="0 0 40 40">%s</svg>' "$O4")$(printf '<svg class="ico xs" viewBox="0 0 40 40">%s</svg>' "$O4")</div><div class="lab">La 12 en icône, sur fond noir</div></div>
<div class="cell"><div class="icos">$(icone "$O")$(printf '<svg class="ico s" viewBox="0 0 40 40">%s</svg>' "$O")$(printf '<svg class="ico xs" viewBox="0 0 40 40">%s</svg>' "$O")</div><div class="lab">La nouvelle en icône</div></div>
<div class="cell n"><div class="icos">$(icone "$O")$(printf '<svg class="ico s" viewBox="0 0 40 40">%s</svg>' "$O")$(printf '<svg class="ico xs" viewBox="0 0 40 40">%s</svg>' "$O")</div><div class="lab">La nouvelle en icône, sur fond noir</div></div>
</div>
</div></body></html>
EOF

"$CHROME" --headless=new --disable-gpu --hide-scrollbars --window-size=2400,1500 --screenshot="$DIR_WIN/timops-retenu.png" "file:///$DIR_WIN/timops-retenu.html" 2>&1 | tail -1
"$CHROME" --headless=new --disable-gpu --hide-scrollbars --force-device-scale-factor=2 --window-size=2400,1500 --screenshot="$DIR_WIN/timops-retenu-HD.png" "file:///$DIR_WIN/timops-retenu.html" 2>&1 | tail -1
"$CHROME" --headless=new --disable-gpu --no-pdf-header-footer --print-to-pdf="$DIR_WIN/timops-retenu.pdf" "file:///$DIR_WIN/timops-retenu.html" 2>&1 | tail -1
