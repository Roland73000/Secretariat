# Génère un O « coup de pinceau » (ensō) en SVG, dans une boîte 0 0 40 40.
# Variables (passées avec -v) :
#   id     identifiant unique du masque
#   col    couleur de remplissage
#   a0     angle de départ en degrés (0 = droite, 90 = bas, sens SVG)
#   sw     balayage en degrés (négatif = sens inverse des aiguilles)
#   R      rayon extérieur (17 = hauteur du T)
#   wb     largeur de base du trait
#   wbl    surépaisseur au départ du pinceau
#   tt     moment où le trait commence à s'affiner (0 à 1)
#   ex     vitesse d'affinement
#   rond   1 = départ arrondi en goutte
#   plume  1 = plein et délié (épais à gauche et à droite, fin en haut et en bas)
#   nstr   nombre de stries de pinceau sec
#   tstr   à partir de quand les stries apparaissent (0 à 1)
#   seed   graine du hasard des stries
function wid(t,   w, a){
  w = wb + wbl*exp(-(t/0.10)^2)
  if (t > tt) w = w*((1-t)/(1-tt))^ex
  if (rond == 1 && t < 0.05) w = w*(0.35 + 0.65*sqrt(1-((0.05-t)/0.05)^2))
  if (plume == 1) { a = (a0 + sw*t)*pi/180; w = w*(0.30 + 0.70*(cos(a))^2) }
  return w + 0.25
}
BEGIN{
  pi = atan2(0,-1); n = 260; srand(seed)
  for (i=0; i<=n; i++) {
    t = i/n; a = (a0 + sw*t)*pi/180; w = wid(t)
    ro = R; if (t > 0.92) ro = R - 0.4*(t-0.92)/0.08
    ox[i] = 20+ro*cos(a); oy[i] = 20+ro*sin(a)
    ix[i] = 20+(ro-w)*cos(a); iy[i] = 20+(ro-w)*sin(a)
  }
  d = sprintf("M%.2f %.2f", ox[0], oy[0])
  for (i=1; i<=n; i++) d = d sprintf(" L%.2f %.2f", ox[i], oy[i])
  for (i=n; i>=0; i--) d = d sprintf(" L%.2f %.2f", ix[i], iy[i])
  d = d " Z"
  s = ""; fl = (sw > 0) ? 1 : 0
  for (k=1; k<=nstr; k++) {
    t1 = tstr + rand()*(0.92-tstr); t2 = t1 + 0.06 + rand()*0.25; if (t2 > 0.995) t2 = 0.995
    wmin = wid(t2); off = 0.3 + rand()*(0.8*wmin - 0.3); if (off < 0.3) continue
    r = R - off; b1 = (a0+sw*t1)*pi/180; b2 = (a0+sw*t2)*pi/180
    s = s sprintf("<path d=\"M%.2f %.2f A%.2f %.2f 0 0 %d %.2f %.2f\"/>", 20+r*cos(b1), 20+r*sin(b1), r, r, fl, 20+r*cos(b2), 20+r*sin(b2))
  }
  printf "<mask id=\"%s\" maskUnits=\"userSpaceOnUse\" x=\"0\" y=\"0\" width=\"40\" height=\"40\"><rect width=\"40\" height=\"40\" fill=\"#fff\"/><g fill=\"none\" stroke=\"#000\" stroke-width=\"0.22\" stroke-linecap=\"round\">%s</g></mask>", id, s
  printf "<path d=\"%s\" fill=\"%s\" mask=\"url(#%s)\"/>", d, col, id
}
