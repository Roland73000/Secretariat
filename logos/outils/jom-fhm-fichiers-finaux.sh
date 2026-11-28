#!/usr/bin/env bash
# Fichiers « haut niveau » du logo JOM FHM retenu (28/11/2026), dans logos/final/ :
#   jom-fhm-logo-vectoriel.pdf            logo seul, vectoriel, sur fond clair
#   jom-fhm-logo-vectoriel-fond-noir.pdf  le même, en clair sur fond noir
#   jom-fhm-logo-vectoriel-valeurs.pdf    le logo avec « Honneur · Dignité · Courage » dessous
#   jom-fhm-logo-vectoriel-valeurs-fond-noir.pdf  le même, sur fond noir
#   jom-fhm-icone.svg                     l'icône (O framboise sur pastille noire), pour fond clair
#   jom-fhm-icone-fond-sombre.svg         l'icône (O framboise sur pastille blanche), pour fond sombre
#   jom-fhm-logo-transparent-noir.png     logo à fond transparent, lettres noires (fond clair)
#   jom-fhm-logo-transparent-blanc.png    logo à fond transparent, lettres blanches (fond sombre)
#   jom-fhm-icone-transparent.png         icône à fond transparent, pour fond clair
#   jom-fhm-icone-transparent-fond-sombre.png  icône à fond transparent, pour fond sombre
set -e
cd "$(dirname "$0")/.."
mkdir -p final
CHROME="/c/Program Files/Google/Chrome/Application/chrome.exe"
DIR_WIN="C:/Users/osol7/Documents/Claude/Secretariat/logos/final"
TMP=final/tmp; mkdir -p "$TMP"
SERIF="Georgia,'Times New Roman',serif"

# 1. Les SVG de l'icône : pastille arrondie et O framboise
icone_svg() { # $1 fichier, $2 fond de la pastille, $3 framboise
  printf '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100" width="1024" height="1024"><rect x="0" y="0" width="100" height="100" rx="22" fill="%s"/><text x="50" y="50.5" text-anchor="middle" dominant-baseline="central" font-family="%s" font-weight="700" font-size="86" fill="%s">O</text></svg>\n' "$2" "$SERIF" "$3" > "final/$1"
}
icone_svg jom-fhm-icone.svg "#141210" "#d0587f"
icone_svg jom-fhm-icone-fond-sombre.svg "#FFFFFF" "#b03a63"

# Page HTML du logo : $1 fichier, $2 lettres, $3 framboise, $4 signature, $5 fond, $6 valeurs (facultatif : on les affiche si non vide)
logo_html() {
cat > "$TMP/$1.html" <<EOF
<!doctype html>
<html lang="fr"><head><meta charset="utf-8"><title>JOM FHM</title>
<style>
@page{size:200mm 120mm;margin:0}
*{-webkit-print-color-adjust:exact;print-color-adjust:exact}
html,body{margin:0;width:1000px;height:600px;background:$5}
body{display:flex;flex-direction:column;align-items:center;justify-content:center;font-family:Helvetica,Arial,sans-serif;color:$2}
.jom{font-family:$SERIF;font-size:240px;font-weight:700;letter-spacing:.04em;line-height:1;white-space:nowrap}
.jom span{color:$3}
.fhm{font-size:48px;font-weight:300;letter-spacing:.9em;margin:22px 0 0 .9em}
.rule{width:320px;height:3px;background:$3;margin:42px 0 30px}
.sig{font-family:$SERIF;font-style:italic;font-size:38px;color:$4}
.val{font-size:26px;letter-spacing:.08em;color:$4;margin-top:56px}
@media print{
html,body{width:200mm;height:120mm;overflow:hidden}
body{box-sizing:border-box}
.jom{font-size:48mm}
.fhm{font-size:9.6mm;margin:4.4mm 0 0 .9em}
.rule{width:64mm;height:.6mm;margin:8.4mm 0 6mm}
.sig{font-size:7.6mm}
.val{font-size:5.2mm;margin-top:11mm}
}
</style></head><body>
<div class="jom">J<span>O</span>M</div><div class="fhm">FHM</div><div class="rule"></div><div class="sig">les liens du sang</div>${6:+<div class="val">Honneur · Dignité · Courage</div>}
</body></html>
EOF
}
shot() { # $1 html, $2 png, $3 largeur, $4 hauteur, $5 échelle
"$CHROME" --headless=new --disable-gpu --hide-scrollbars --default-background-color=00000000 --force-device-scale-factor=$5 --window-size=$3,$4 --screenshot="$DIR_WIN/$2" "file:///$DIR_WIN/tmp/$1" 2>&1 | tail -1
}
pdf() { "$CHROME" --headless=new --disable-gpu --no-pdf-header-footer --print-to-pdf="$DIR_WIN/$2" "file:///$DIR_WIN/tmp/$1" 2>&1 | tail -1; }

# 2. Les PDF vectoriels
logo_html vec-blanc "#1c1916" "#b03a63" "#6f665c" "#fff"
logo_html vec-noir "#f4efe8" "#d0587f" "#b9b0a5" "#141210"
pdf vec-blanc.html jom-fhm-logo-vectoriel.pdf
pdf vec-noir.html jom-fhm-logo-vectoriel-fond-noir.pdf
logo_html val-blanc "#1c1916" "#b03a63" "#6f665c" "#fff" oui
logo_html val-noir "#f4efe8" "#d0587f" "#b9b0a5" "#141210" oui
pdf val-blanc.html jom-fhm-logo-vectoriel-valeurs.pdf
pdf val-noir.html jom-fhm-logo-vectoriel-valeurs-fond-noir.pdf

# 3. Les PNG transparents, 6000 pixels de large
logo_html tr-noir "#1c1916" "#b03a63" "#6f665c" "transparent"
logo_html tr-blanc "#FFFFFF" "#d0587f" "#e8e2da" "transparent"
shot tr-noir.html jom-fhm-logo-transparent-noir.png 1000 600 6
shot tr-blanc.html jom-fhm-logo-transparent-blanc.png 1000 600 6
for v in clair sombre; do
  if [ $v = clair ]; then f=jom-fhm-icone.svg; o=jom-fhm-icone-transparent.png; else f=jom-fhm-icone-fond-sombre.svg; o=jom-fhm-icone-transparent-fond-sombre.png; fi
  printf '<!doctype html><html><head><style>html,body{margin:0;background:transparent}svg{display:block;width:1000px;height:1000px}</style></head><body>%s</body></html>' "$(cat final/$f)" > "$TMP/ico-$v.html"
  shot "ico-$v.html" "$o" 1000 1000 4
done
rm -rf "$TMP"
