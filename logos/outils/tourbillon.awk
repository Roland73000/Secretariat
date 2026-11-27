# Génère un O « tourbillon » : un disque bleu percé au centre et découpé
# par des fentes courbes, comme un diaphragme ou un rotor. Boîte 0 0 40 40.
# Variables (passées avec -v) :
#   id   identifiant unique du masque
#   n    nombre de pales
#   R    rayon extérieur (17 = hauteur du T)
#   ri   rayon du trou central
#   fe   largeur des fentes
#   sw   courbure des fentes en degrés (négatif = sens inverse)
#   rot  rotation de l'ensemble en degrés
#   pt   rayon d'un point noir au centre (0 = aucun)
BEGIN{
  pi = atan2(0,-1); s = ""
  for (k=0; k<n; k++) {
    th = rot + 360*k/n; d = ""
    for (i=0; i<=24; i++) {
      t = i/24; r = (ri-0.6) + (R+1.2-(ri-0.6))*t; a = (th + sw*(t^0.85))*pi/180
      d = d sprintf("%s%.2f %.2f", (i==0 ? "M" : " L"), 20+r*cos(a), 20+r*sin(a))
    }
    s = s sprintf("<path d=\"%s\"/>", d)
  }
  printf "<mask id=\"%s\" maskUnits=\"userSpaceOnUse\" x=\"-2\" y=\"-2\" width=\"44\" height=\"44\"><rect x=\"-2\" y=\"-2\" width=\"44\" height=\"44\" fill=\"#fff\"/><circle cx=\"20\" cy=\"20\" r=\"%.2f\" fill=\"#000\"/><g fill=\"none\" stroke=\"#000\" stroke-width=\"%.2f\" stroke-linecap=\"round\">%s</g></mask>", id, ri, fe, s
  printf "<circle class=\"af\" cx=\"20\" cy=\"20\" r=\"%.2f\" mask=\"url(#%s)\"/>", R, id
  if (pt > 0) printf "<circle class=\"b\" cx=\"20\" cy=\"20\" r=\"%.2f\"/>", pt
}
