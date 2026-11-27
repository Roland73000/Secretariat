#!/usr/bin/env bash
# Fabrique la planche des formes de O liées à l'activité et aux valeurs
# de Timops : logos/timops-o-formes.html, puis PNG, PNG HD et PDF A4.
set -e
cd "$(dirname "$0")/.."
CHROME="/c/Program Files/Google/Chrome/Application/chrome.exe"
DIR_WIN="C:/Users/osol7/Documents/Claude/Secretariat/logos"

# Anneau de base : même hauteur que le T (diamètre extérieur 34 sur 40).
R='<circle cx="20" cy="20" r="14.4" fill="none" stroke="currentColor" stroke-width="5.2"/>'

# Titre | sens | dessin du O (viewBox 0 0 40 40 ; classe b = bleu plein, bs = trait bleu)
# Les deux favoris de Roland, repris de la planche principale (timops-logos.html)
ENSO=$(grep pinceaub timops-logos.html | grep -o '<svg class="o"[^>]*>.*</svg>' | sed 's/^<svg class="o" viewBox="0 0 40 40">//; s/<\/svg>$//; s/fill="#2563EB"/class="b"/g; s/stroke="#2563EB"/class="bs"/g')
FLECHES=$(grep 'bold big">Tim' timops-logos.html | grep 2563EB | grep -v pinceau | grep -o '<svg class="o"[^>]*>.*</svg>' | sed 's/^<svg class="o" viewBox="0 0 40 40">//; s/<\/svg>$//; s/fill="#2563EB"/class="b"/g; s/stroke="#2563EB"/class="bs"/g')
[ -n "$ENSO" ] && [ -n "$FLECHES" ] || { echo "ensō ou flèches introuvables"; exit 1; }

P=(
"L'ensō presque fermé|Un geste juste, le cercle presque bouclé|$ENSO"
"Les flèches|Tout tourne : on fait avancer le bureau|$FLECHES"
"La cible|On vise juste|$R<circle class=\"bs\" cx=\"20\" cy=\"20\" r=\"7.6\" fill=\"none\" stroke-width=\"3.2\"/><circle cx=\"20\" cy=\"20\" r=\"2.6\" fill=\"currentColor\"/>"
"Dans le mille|Chaque dossier traité, chaque client rappelé|$R<circle class=\"b\" cx=\"20\" cy=\"20\" r=\"4.2\"/><path class=\"bs\" d=\"M20 20 L35.5 4.5 M35.5 4.5 L35.5 0.6 M35.5 4.5 L39.4 4.5 M33.2 6.8 L33.2 2.9 M33.2 6.8 L37.1 6.8\" fill=\"none\" stroke-width=\"2.4\" stroke-linecap=\"round\"/>"
"Le viseur|L'œil sur ce qui compte|$R<path d=\"M20 7.6 L20 11.4 M20 28.6 L20 32.4 M7.6 20 L11.4 20 M28.6 20 L32.4 20\" stroke=\"currentColor\" stroke-width=\"2.6\" stroke-linecap=\"round\" transform=\"rotate(0 20 20)\"/><circle class=\"b\" cx=\"20\" cy=\"20\" r=\"3.6\"/>"
"La cible inversée|Le cercle bleu protège, le cœur reste à l'artisan|<circle class=\"bs\" cx=\"20\" cy=\"20\" r=\"14.4\" fill=\"none\" stroke-width=\"5.2\"/><circle cx=\"20\" cy=\"20\" r=\"7.6\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"3.2\"/><circle class=\"b\" cx=\"20\" cy=\"20\" r=\"2.6\"/>"
"La cible fine|Concentré sur l'essentiel|<circle cx=\"20\" cy=\"20\" r=\"15.3\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"3.4\"/><circle cx=\"20\" cy=\"20\" r=\"9.6\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2.4\"/><circle class=\"b\" cx=\"20\" cy=\"20\" r=\"4.6\"/>"
)
P+=(
"La coche|C'est fait : on s'occupe du reste|$R<path class=\"bs\" d=\"M13 20.5 L18 25.5 L27.5 15\" fill=\"none\" stroke-width=\"4.2\" stroke-linecap=\"round\" stroke-linejoin=\"round\"/>"
"La bulle|Un humain décroche et répond|$R<path d=\"M9.6 28.5 L4.5 37 L15.5 33.2 Z\" fill=\"currentColor\"/><circle class=\"b\" cx=\"13.6\" cy=\"20\" r=\"2.3\"/><circle class=\"b\" cx=\"20\" cy=\"20\" r=\"2.3\"/><circle class=\"b\" cx=\"26.4\" cy=\"20\" r=\"2.3\"/>"
"Les deux moitiés|L'artisan et son bras droit font un tout|<path d=\"M17.5 34.18 A14.4 14.4 0 0 1 17.5 5.82\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"5.2\"/><path class=\"bs\" d=\"M22.5 5.82 A14.4 14.4 0 0 1 22.5 34.18\" fill=\"none\" stroke-width=\"5.2\"/>"
"L'horloge|Tim comme time : on vous rend du temps|$R<path class=\"bs\" d=\"M20 20 L20 10.5 M20 20 L26.5 23.5\" fill=\"none\" stroke-width=\"3.2\" stroke-linecap=\"round\"/><circle class=\"b\" cx=\"20\" cy=\"20\" r=\"2.4\"/>"
"L'écrou|Le bâtiment, le solide, l'outil|<path fill-rule=\"evenodd\" fill=\"currentColor\" d=\"M39.2 20 L29.6 36.6 L10.4 36.6 L0.8 20 L10.4 3.4 L29.6 3.4 Z M20 10 A10 10 0 1 0 20 30 A10 10 0 1 0 20 10 Z\"/><circle class=\"bs\" cx=\"20\" cy=\"20\" r=\"6.6\" fill=\"none\" stroke-width=\"2.6\"/>"
"Le cercle de l'équipe|Le premier cercle, la communauté|<g fill=\"currentColor\"><circle cx=\"28.82\" cy=\"7.86\" r=\"2.7\"/><circle cx=\"34.27\" cy=\"15.36\" r=\"2.7\"/><circle cx=\"34.27\" cy=\"24.64\" r=\"2.7\"/><circle cx=\"28.82\" cy=\"32.14\" r=\"2.7\"/><circle cx=\"20\" cy=\"35\" r=\"2.7\"/><circle cx=\"11.18\" cy=\"32.14\" r=\"2.7\"/><circle cx=\"5.73\" cy=\"24.64\" r=\"2.7\"/><circle cx=\"5.73\" cy=\"15.36\" r=\"2.7\"/><circle cx=\"11.18\" cy=\"7.86\" r=\"2.7\"/></g><circle class=\"b\" cx=\"20\" cy=\"5\" r=\"3.3\"/>"
"La maison|Le métier de nos clients : le bâtiment|$R<path class=\"b\" d=\"M20 11.5 L28 18.5 L26 18.5 L26 27 L21.7 27 L21.7 22 L18.3 22 L18.3 27 L14 27 L14 18.5 L12 18.5 Z\"/>"
"La boussole|Le cap : on pilote le bureau avec vous|$R<path class=\"b\" d=\"M27.5 12.5 L22.3 22.3 L17.7 17.7 Z\"/><path d=\"M12.5 27.5 L17.7 17.7 L22.3 22.3 Z\" fill=\"currentColor\" opacity=\".45\"/>"
"Le sourire|Le client content, l'artisan serein|$R<path class=\"bs\" d=\"M13.6 21.8 A6.6 6.6 0 0 0 26.4 21.8\" fill=\"none\" stroke-width=\"3.4\" stroke-linecap=\"round\"/><circle class=\"b\" cx=\"15.6\" cy=\"15.6\" r=\"1.9\"/><circle class=\"b\" cx=\"24.4\" cy=\"15.6\" r=\"1.9\"/>"
"La serrure|La confiance : on nous confie les clés du bureau|$R<circle class=\"b\" cx=\"20\" cy=\"16.8\" r=\"3.8\"/><path class=\"b\" d=\"M18.2 18.5 L16.6 27.2 L23.4 27.2 L21.8 18.5 Z\"/>"
)

cellules() {
  local n=0
  for item in "${P[@]}"; do n=$((n+1))
    IFS='|' read -r titre sens svg <<< "$item"
    printf '<div class="cell"><div class="logo">Tim<svg class="o" viewBox="0 0 40 40">%s</svg>ps</div><div class="lab"><b>%s. %s</b><br>%s</div></div>\n' "$svg" "$n" "$titre" "$sens"
  done
}

{
cat <<'EOF'
<!doctype html>
<html lang="fr"><head><meta charset="utf-8"><title>Timops : formes de O</title>
<style>
@page{size:297mm 210mm;margin:0}
*{-webkit-print-color-adjust:exact;print-color-adjust:exact}
html,body{margin:0;font-family:Helvetica,Arial,sans-serif;background:#fff;color:#111214}
.bloc{width:2400px;box-sizing:border-box;padding:40px 40px 30px;--bleu:#2563EB}
.bloc.n{background:#111214;color:#fff;--bleu:#3B82F6}
.b{fill:var(--bleu)} .bs{stroke:var(--bleu)}
h1{font-size:34px;margin:0 0 6px}
.sub{font-size:18px;opacity:.6;margin:0 0 24px}
.grid{display:grid;grid-template-columns:repeat(5,1fr);grid-auto-rows:320px;border-top:1px solid rgba(128,128,128,.25);border-left:1px solid rgba(128,128,128,.25)}
.cell{display:flex;flex-direction:column;align-items:center;justify-content:center;gap:24px;border-right:1px solid rgba(128,128,128,.25);border-bottom:1px solid rgba(128,128,128,.25)}
.logo{font-size:94px;font-weight:700;letter-spacing:-.01em;line-height:1;white-space:nowrap}
.o{height:0.84em;width:0.84em;vertical-align:-0.063em;margin:0 0.05em;overflow:visible}
.lab{font-size:19px;line-height:1.45;text-align:center;opacity:.7}
.lab b{opacity:1}
@media print{
  html,body{width:297mm}
  .bloc{zoom:0.465;height:451mm;break-after:page;display:flex;flex-direction:column;justify-content:center}
  .bloc:last-child{break-after:auto}
}
</style></head><body>
<div class="bloc b0">
<h1>Timops : formes pour le O</h1>
<p class="sub">Planche du 27/11/2026, sur fond blanc. Vos deux favoris (ensō et flèches), cinq cibles, puis dix formes liées à l'activité et aux valeurs.</p>
<div class="grid">
EOF
cellules
cat <<'EOF'
</div></div>
<div class="bloc n">
<h1>Timops : formes pour le O</h1>
<p class="sub">Les mêmes, sur fond noir.</p>
<div class="grid">
EOF
cellules
echo '</div></div></body></html>'
} > timops-o-formes.html

"$CHROME" --headless=new --disable-gpu --hide-scrollbars --window-size=2400,2900 --screenshot="$DIR_WIN/timops-o-formes.png" "file:///$DIR_WIN/timops-o-formes.html" 2>&1 | tail -1
"$CHROME" --headless=new --disable-gpu --hide-scrollbars --force-device-scale-factor=2 --window-size=2400,2900 --screenshot="$DIR_WIN/timops-o-formes-HD.png" "file:///$DIR_WIN/timops-o-formes.html" 2>&1 | tail -1
"$CHROME" --headless=new --disable-gpu --no-pdf-header-footer --print-to-pdf="$DIR_WIN/timops-o-formes.pdf" "file:///$DIR_WIN/timops-o-formes.html" 2>&1 | tail -1
