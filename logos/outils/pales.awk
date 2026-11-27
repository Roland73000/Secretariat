# Tourbillon propre : chaque pale est une forme exacte, comprise entre deux
# fentes de largeur constante, un cercle extérieur et un cercle intérieur.
# Pas de bouts arrondis ni d'encoches. Boîte 0 0 40 40.
# Variables (passées avec -v) :
#   id    identifiant unique
#   n     nombre de pales
#   R     rayon extérieur (17 = hauteur du T)
#   ri    rayon du trou central
#   fe    largeur des fentes
#   sw    courbure des fentes en degrés
#   rot   rotation de l'ensemble en degrés
#   pt    rayon du point central (0 = aucun)
#   cols  couleurs des pales, séparées par des virgules ; « class:xx » met
#         une classe CSS au lieu d'une couleur (ex. class:af)
function ease(t){ return 1.25*t - 0.25*t*t }
function pos(k, t,   r, a){
  r = ri + (R-ri)*t; a = (rot + 360*k/n + sw*ease(t))*pi/180
  X = 20 + r*cos(a); Y = 20 + r*sin(a)
}
# point de la fente k au paramètre t, décalé de s*fe/2 sur la normale
# (s = +1 : côté des angles croissants)
function bord(k, t, s,   x0, y0, x1, y1, tx, ty, l, nx, ny, vx, vy, h){
  h = 0.002
  pos(k, t-h); x0 = X; y0 = Y
  pos(k, t+h); x1 = X; y1 = Y
  pos(k, t)
  tx = x1-x0; ty = y1-y0; l = sqrt(tx*tx+ty*ty); tx /= l; ty /= l
  nx = -ty; ny = tx
  vx = -(Y-20); vy = (X-20)
  if (nx*vx + ny*vy < 0) { nx = -nx; ny = -ny }
  return sprintf("%.3f %.3f", X + s*nx*fe/2, Y + s*ny*fe/2)
}
function loin(a){ return sprintf("%.3f %.3f", 20 + 40*cos(a*pi/180), 20 + 40*sin(a*pi/180)) }
BEGIN{
  pi = atan2(0,-1); m = split(cols, C, ","); t0 = -0.3; t1 = 1.35; N = 500
  an = sprintf("M20 %.3f A%.3f %.3f 0 1 1 20 %.3f A%.3f %.3f 0 1 1 20 %.3f Z M20 %.3f A%.3f %.3f 0 1 0 20 %.3f A%.3f %.3f 0 1 0 20 %.3f Z", 20-R, R, R, 20+R, R, R, 20-R, 20-ri, ri, ri, 20+ri, ri, ri, 20-ri)
  for (k=0; k<n; k++) {
    d = "M20 20"
    for (i=0; i<=N; i++) d = d " L" bord(k, t0+(t1-t0)*i/N, 1)
    a1 = rot + 360*k/n + sw*ease(t1); a2 = a1 + 360/n
    for (a=a1; a<a2; a+=2) d = d " L" loin(a)
    d = d " L" loin(a2)
    for (i=N; i>=0; i--) d = d " L" bord(k+1, t0+(t1-t0)*i/N, -1)
    d = d " Z"
    c = C[(k % m) + 1]
    if (c ~ /^class:/) f = sprintf("class=\"%s\"", substr(c, 7)); else f = sprintf("fill=\"%s\"", c)
    printf "<clipPath id=\"%s-%d\"><path d=\"%s\"/></clipPath>", id, k, d
    printf "<path %s fill-rule=\"evenodd\" clip-path=\"url(#%s-%d)\" d=\"%s\"/>", f, id, k, an
  }
  if (pt > 0) printf "<circle cx=\"20\" cy=\"20\" r=\"%.2f\" fill=\"currentColor\"/>", pt
}
