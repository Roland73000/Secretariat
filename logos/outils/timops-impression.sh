#!/usr/bin/env bash
# Logo Timops retenu (tourbillon à trois pales), en images haute définition,
# sur le modèle de JOM FHM (28/11/2026) :
#   timops-impression.png    : le logo seul sur fond blanc, en grand (3200 x 2400)
#   timops-classique.png     : sur fond noir et sur fond blanc (1600 x 600)
#   timops-classique-hd.png  : la même chose en haute définition (4800 x 1800)
#   timops-icones.png        : l'icône seule, en grand et en petit, sur blanc et sur noir
#   timops-icones-hd.png     : la même chose en haute définition
set -e
cd "$(dirname "$0")/.."
CHROME="/c/Program Files/Google/Chrome/Application/chrome.exe"
DIR_WIN="C:/Users/osol7/Documents/Claude/Secretariat/logos"
O=$(awk -v id=t -v n=3 -v R=17 -v ri=7.2 -v fe=1.6 -v sw=120 -v rot=-90 -v pt=3.6 -v cols=class:af -f outils/pales.awk)
# Chaque cellule a son propre jeu d'identifiants de découpe
o() { printf '%s' "${O//t-/t$1-}"; }

STYLE='html,body{margin:0;font-family:Helvetica,Arial,sans-serif}
.cell{display:flex;align-items:center;justify-content:center;--bleu:#2563EB;background:#fff;color:#111214}
.n{background:#111214;color:#fff;--bleu:#3B82F6}
.af{fill:var(--bleu)}
.logo{font-size:170px;font-weight:700;letter-spacing:-.01em;line-height:1;white-space:nowrap}
.o{height:0.84em;width:0.84em;vertical-align:-0.063em;margin:0 0.05em;overflow:visible}
.icos{display:flex;align-items:flex-end;gap:36px}'

logo() { printf '<div class="logo">Tim<svg class="o" viewBox="0 0 40 40">%s</svg>ps</div>' "$(o "$1")"; }
icones() {
  local s out=""
  for s in 260 128 64 32 16; do out+="<svg viewBox=\"0 0 40 40\" width=\"$s\" height=\"$s\">$(o "$1$s")</svg>"; done
  printf '<div class="icos">%s</div>' "$out"
}

page() { # $1 fichier, $2 largeur, $3 colonnes, $4 contenu
cat > "$1.html" <<EOF
<!doctype html>
<html lang="fr"><head><meta charset="utf-8"><title>Timops</title>
<style>$STYLE
html,body{width:$2px;height:600px}
.row{display:grid;grid-template-columns:$3;height:600px}
</style></head><body><div class="row">$4</div></body></html>
EOF
}
shot() { # $1 html, $2 png, $3 largeur, $4 échelle
"$CHROME" --headless=new --disable-gpu --hide-scrollbars --force-device-scale-factor=$4 --window-size=$3,600 --screenshot="$DIR_WIN/$2" "file:///$DIR_WIN/$1" 2>&1 | tail -1
}

page timops-impression 800 1fr "<div class=\"cell\">$(logo a)</div>"
page timops-classique 1600 "1fr 1fr" "<div class=\"cell n\">$(logo b)</div><div class=\"cell\">$(logo c)</div>"
page timops-icones 1600 "1fr 1fr" "<div class=\"cell\">$(icones d)</div><div class=\"cell n\">$(icones e)</div>"

shot timops-impression.html timops-impression.png 800 4
shot timops-classique.html timops-classique.png 1600 1
shot timops-classique.html timops-classique-hd.png 1600 3
shot timops-icones.html timops-icones.png 1600 1
shot timops-icones.html timops-icones-hd.png 1600 3
