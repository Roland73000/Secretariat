#!/usr/bin/env bash
# Les trois planches du tourbillon (27/11/2026) :
#   timops-tourbillon-4pales : quatre pales bleues et point central
#   timops-tourbillon-3pales : trois pales bleues et point central
#   timops-tourbillon-tricolore : trois pales bleu, blanc, rouge et point central
# Chaque planche : .html, .png, -HD.png et .pdf (A4 paysage).
set -e
cd "$(dirname "$0")/.."
CHROME="/c/Program Files/Google/Chrome/Application/chrome.exe"
DIR_WIN="C:/Users/osol7/Documents/Claude/Secretariat/logos"
pales() { awk $(for v in "$@"; do printf -- '-v %s ' "$v"; done) -f outils/pales.awk; }

logo() { printf '<div class="logo">Tim<svg class="o" viewBox="0 0 40 40">%s</svg>ps</div>' "$1"; }
icones() { printf '<div class="icos"><svg class="ico" viewBox="0 0 40 40">%s</svg><svg class="ico s" viewBox="0 0 40 40">%s</svg><svg class="ico xs" viewBox="0 0 40 40">%s</svg></div>' "$1" "$1" "$1"; }

# $1 nom du fichier, $2 titre, $3 sous-titre, $4 O sur fond blanc, $5 O sur fond foncé, $6 cellule en plus (facultatif)
planche() {
cat > "$1.html" <<EOF
<!doctype html>
<html lang="fr"><head><meta charset="utf-8"><title>$2</title>
<style>
@page{size:297mm 210mm;margin:0}
*{-webkit-print-color-adjust:exact;print-color-adjust:exact}
html,body{margin:0;font-family:Helvetica,Arial,sans-serif;background:#fff;color:#111214}
.page{width:2400px;box-sizing:border-box;padding:50px}
h1{font-size:40px;margin:0 0 8px}
.sub{font-size:20px;opacity:.6;margin:0 0 30px}
.grid{display:grid;grid-template-columns:1fr 1fr;border-top:1px solid #ddd;border-left:1px solid #ddd}
.cell{display:flex;flex-direction:column;align-items:center;justify-content:center;gap:26px;height:400px;border-right:1px solid #ddd;border-bottom:1px solid #ddd;--bleu:#2563EB}
.n{background:#111214;color:#fff;--bleu:#3B82F6}
.nuit{background:#0B1F3A;color:#fff;--bleu:#3B82F6}
.af{fill:var(--bleu)}
.logo{font-size:180px;font-weight:700;letter-spacing:-.01em;line-height:1;white-space:nowrap}
.o{height:0.84em;width:0.84em;vertical-align:-0.063em;margin:0 0.05em;overflow:visible}
.lab{font-size:20px;opacity:.7;text-align:center}
.ico{width:170px;height:170px}
.ico.s{width:64px;height:64px}
.ico.xs{width:32px;height:32px}
.icos{display:flex;align-items:flex-end;gap:44px}
@media print{html,body{width:297mm}.page{zoom:0.465}}
</style></head><body><div class="page">
<h1>$2</h1>
<p class="sub">$3</p>
<div class="grid">
<div class="cell">$(logo "$4")<div class="lab">Sur fond blanc</div></div>
<div class="cell n">$(logo "$5")<div class="lab">Sur fond noir</div></div>
<div class="cell">$(icones "$4")<div class="lab">L'icône seule, en grand et en petit</div></div>
<div class="cell n">$(icones "$5")<div class="lab">L'icône seule, sur fond noir</div></div>
$6
</div>
</div></body></html>
EOF
local h=1000; [ -n "$6" ] && h=1400
"$CHROME" --headless=new --disable-gpu --hide-scrollbars --window-size=2400,$h --screenshot="$DIR_WIN/$1.png" "file:///$DIR_WIN/$1.html" 2>&1 | tail -1
"$CHROME" --headless=new --disable-gpu --hide-scrollbars --force-device-scale-factor=2 --window-size=2400,$h --screenshot="$DIR_WIN/$1-HD.png" "file:///$DIR_WIN/$1.html" 2>&1 | tail -1
"$CHROME" --headless=new --disable-gpu --no-pdf-header-footer --print-to-pdf="$DIR_WIN/$1.pdf" "file:///$DIR_WIN/$1.html" 2>&1 | tail -1
}

SOUS="Planche du 27/11/2026. Le O fait exactement la hauteur du T majuscule, de la ligne de base au haut du T."

# 1. Quatre pales bleues
O4=$(pales id=q n=4 R=17 ri=7.2 fe=1.6 sw=100 rot=-90 pt=3.6 cols=class:af)
planche timops-tourbillon-4pales "Timops : le tourbillon à quatre pales" "$SOUS Pales bleues, point central noir (blanc sur fond noir)." "$O4" "$O4"

# 2. Trois pales bleues
O3=$(pales id=t n=3 R=17 ri=7.2 fe=1.6 sw=120 rot=-90 pt=3.6 cols=class:af)
planche timops-tourbillon-3pales "Timops : le tourbillon à trois pales" "$SOUS Pales bleues, point central noir (blanc sur fond noir)." "$O3" "$O3"

# 3. Trois pales bleu, blanc, rouge
BLEU="#0055A4"; BLANC="#FFFFFF"; ROUGE="#EF4135"
OF=$(pales id=f n=3 R=17 ri=7.2 fe=1.6 sw=120 rot=-90 pt=3.6 cols="$BLEU,$BLANC,$ROUGE")
OG=$(pales id=g n=3 R=17 ri=7.2 fe=1.6 sw=120 rot=-90 pt=3.6 cols="$BLEU,#D5DAE1,$ROUGE")
NUIT="<div class=\"cell nuit\">$(logo "$OF")<div class=\"lab\">Sur fond bleu nuit</div></div><div class=\"cell nuit\">$(icones "$OF")<div class=\"lab\">L'icône, sur fond bleu nuit</div></div>"
planche timops-tourbillon-tricolore "Timops : le tourbillon bleu, blanc, rouge" "$SOUS Pales aux couleurs du drapeau. Sur fond blanc, la pale blanche passe en gris clair pour rester visible." "$OG" "$OF" "$NUIT"
