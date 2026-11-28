#!/usr/bin/env bash
# Fichiers « haut niveau » du logo Timops retenu (28/11/2026), dans logos/final/ :
#   timops-logo-vectoriel.pdf          logo seul, vectoriel (s'agrandit sans perte)
#   timops-logo-vectoriel-fond-noir.pdf  le même, en blanc sur fond noir
#   timops-icone.svg                   l'icône seule, pour fond clair
#   timops-icone-fond-sombre.svg       l'icône seule, pour fond sombre
#   timops-logo-transparent-noir.png   logo à fond transparent, lettres noires (fond clair)
#   timops-logo-transparent-blanc.png  logo à fond transparent, lettres blanches (fond sombre)
#   timops-icone-transparent.png       icône à fond transparent, pour fond clair
#   timops-icone-transparent-fond-sombre.png  icône à fond transparent, pour fond sombre
set -e
cd "$(dirname "$0")/.."
mkdir -p final
CHROME="/c/Program Files/Google/Chrome/Application/chrome.exe"
DIR_WIN="C:/Users/osol7/Documents/Claude/Secretariat/logos/final"
TMP=final/tmp; mkdir -p "$TMP"
pales() { awk -v id="$1" -v n=3 -v R=17 -v ri=7.2 -v fe=1.6 -v sw=120 -v rot=-90 -v pt=3.6 -v cols="$2" -f outils/pales.awk | sed "s/currentColor/$3/"; }

# 1. Les SVG de l'icône : formes pures, couleurs écrites en dur
icone_svg() { # $1 fichier, $2 bleu, $3 couleur du point
  printf '<svg xmlns="http://www.w3.org/2000/svg" viewBox="3 3 34 34" width="1024" height="1024">%s</svg>\n' "$(pales i "$2" "$3")" > "final/$1"
}
icone_svg timops-icone.svg "#2563EB" "#111214"
icone_svg timops-icone-fond-sombre.svg "#3B82F6" "#FFFFFF"

# Page HTML du logo : $1 fichier, $2 couleur des lettres, $3 bleu, $4 fond (transparent ou couleur), $5 règle @page
logo_html() {
cat > "$TMP/$1.html" <<EOF
<!doctype html>
<html lang="fr"><head><meta charset="utf-8"><title>Timops</title>
<style>
@page{size:200mm 70mm;margin:0}
*{-webkit-print-color-adjust:exact;print-color-adjust:exact}
html,body{margin:0;width:1000px;height:340px;background:$4}
body{display:flex;align-items:center;justify-content:center;font-family:Helvetica,Arial,sans-serif;color:$2}
.logo{font-size:200px;font-weight:700;letter-spacing:-.01em;line-height:1;white-space:nowrap}
.o{height:0.84em;width:0.84em;vertical-align:-0.063em;margin:0 0.05em;overflow:visible}
@media print{html,body{width:200mm;height:70mm}.logo{font-size:40mm}}
</style></head><body>
<div class="logo">Tim<svg class="o" viewBox="0 0 40 40">$(pales l "$3" "$2")</svg>ps</div>
</body></html>
EOF
}
shot() { # $1 html, $2 png, $3 largeur, $4 hauteur, $5 échelle
"$CHROME" --headless=new --disable-gpu --hide-scrollbars --default-background-color=00000000 --force-device-scale-factor=$5 --window-size=$3,$4 --screenshot="$DIR_WIN/$2" "file:///$DIR_WIN/tmp/$1" 2>&1 | tail -1
}
pdf() { "$CHROME" --headless=new --disable-gpu --no-pdf-header-footer --print-to-pdf="$DIR_WIN/$2" "file:///$DIR_WIN/tmp/$1" 2>&1 | tail -1; }

# 2. Les PDF vectoriels
logo_html vec-blanc "#111214" "#2563EB" "#fff"
logo_html vec-noir "#FFFFFF" "#3B82F6" "#111214"
pdf vec-blanc.html timops-logo-vectoriel.pdf
pdf vec-noir.html timops-logo-vectoriel-fond-noir.pdf

# 3. Les PNG transparents, 6000 pixels de large
logo_html tr-noir "#111214" "#2563EB" "transparent"
logo_html tr-blanc "#FFFFFF" "#3B82F6" "transparent"
shot tr-noir.html timops-logo-transparent-noir.png 1000 340 6
shot tr-blanc.html timops-logo-transparent-blanc.png 1000 340 6
for v in clair sombre; do
  if [ $v = clair ]; then f=timops-icone.svg; o=timops-icone-transparent.png; else f=timops-icone-fond-sombre.svg; o=timops-icone-transparent-fond-sombre.png; fi
  printf '<!doctype html><html><head><style>html,body{margin:0;background:transparent}svg{display:block;width:1000px;height:1000px}</style></head><body>%s</body></html>' "$(cat final/$f)" > "$TMP/ico-$v.html"
  shot "ico-$v.html" "$o" 1000 1000 4
done
rm -rf "$TMP"
