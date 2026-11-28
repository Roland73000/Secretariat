# Les logos : synthèse au 28/11/2026

Deux logos sont arrêtés : celui de **Timops** et celui de la holding de
Roland, **JOM FHM**. Tous les fichiers sont dans `logos/`.

## 1. Timops : le tourbillon à trois pales (retenu le 28/11/2026)

### Le logo

- **Le mot** : « TimOps » dans le dessin, en Helvetica (ou Arial) gras, avec
  un **T majuscule**. Les lettres sont noires sur fond clair et blanches sur
  fond foncé.
- **Le O** : un disque bleu exactement de la hauteur du T, découpé en
  **trois pales courbes** qui tournent, avec un **point central** au milieu.
  Le point est noir sur fond clair et blanc sur fond foncé.
- **Les couleurs** : bleu #2563EB sur fond clair, #3B82F6 sur fond foncé.
- **L'icône** : le tourbillon seul, sans le mot. Il reste lisible en petit,
  jusqu'à 32 pixels (favicon, application, réseaux sociaux).

### Les fichiers

| Fichier | Usage |
| --- | --- |
| `logos/timops-tourbillon-3pales.pdf` | planche A4 à imprimer ou envoyer : logo sur blanc et sur noir, icônes en trois tailles |
| `logos/timops-tourbillon-3pales-HD.png` | la même planche en image haute définition |
| `logos/timops-tourbillon-3pales.html` | la source de la planche, à ouvrir dans un navigateur |
| `logos/outils/pales.awk` | le programme qui dessine le tourbillon (pales exactes, sans encoches) |
| `logos/outils/planches-tourbillon.sh` | le script qui refait les planches (HTML, PNG, PNG HD, PDF) |

### Le chemin parcouru

1. **24/11** : décision commune, le logo sera épuré et Romain fait des
   propositions.
2. **Les propositions de Romain** : « timops » en minuscules, le O formé de
   deux flèches arrondies qui tournent. Planche `logos/timops-logos-planche.pdf` :
   1. point bleu ;
   2. point découpé ;
   3. les flèches de Romain, telles qu'il les a envoyées ;
   4. les mêmes flèches avec un T majuscule et un O de la hauteur du T ;
   5. un O en coup de pinceau japonais (ensō).
3. **Dix O au pinceau** (`logos/timops-o-pinceau.pdf`) : écartés, Roland
   voulait d'autres formes que l'ensō.
4. **Les formes du O** (`logos/timops-o-formes.pdf`). La planche compte
   22 propositions :
   - l'ensō, les flèches, 5 cibles et 5 tourbillons ;
   - dix formes liées au métier et aux valeurs.

   Une règle de couleur y est fixée : **le cercle toujours bleu, ce qui
   est autour ou dedans en noir**.
5. **Le tourbillon** : on part de la 12, on garde le point central et on
   ne garde que trois pales. Les pales ont été redessinées au propre :
   formes exactes, fentes fines de largeur constante, aucune encoche.
6. **Trois planches finales** :
   - quatre pales bleues (`timops-tourbillon-4pales.pdf`) ;
   - trois pales bleues ;
   - trois pales bleu, blanc, rouge (`timops-tourbillon-tricolore.pdf`).
     Sur fond blanc, la pale blanche devait passer en gris.
7. **28/11** : **trois pales bleues retenues** par Roland.

### Ce qui reste à faire

- **Romain** : qu'il valide le logo à son tour, si ce n'est pas déjà fait.
  La marque est une décision commune (26/11).
- **Écriture du nom dans les textes** : TimOps ou Timops ? Le logo écrit
  « TimOps » avec un O dessiné, ce qui ne tranche pas pour les textes.
  À décider avec Romain.
- **Fichiers vectoriels définitifs** : les fichiers actuels sont des
  maquettes. Ils sont propres à l'écran et à l'impression de bureau, mais
  pas faits pour un imprimeur ni pour le dépôt de la marque. Il faut :
  - les **fichiers vectoriels** (.svg, .pdf vectoriel, .ai) ;
  - les **versions en une couleur** (tout noir et tout blanc) ;
  - une **charte courte** : couleurs, police, marges, taille minimale.

  **Solution proposée** : confier ce travail à un graphiste, sur la base de
  la planche retenue. C'est un petit travail, de l'ordre de quelques
  centaines d'euros, avec une **cession écrite des droits** à Timops.
- **Droits et IA** : le dessin a été construit avec l'aide de l'IA, à
  partir de l'idée de Romain. À demander à Maître Groine : comment
  sécuriser les droits avant le dépôt ? La cession par le graphiste qui
  refait les fichiers en est une partie.
- **Dépôt de la marque** (`notes/depot-marque.md`) :
  - le **nom** en marque verbale, d'abord ;
  - le **logo** en marque semi-figurative, maintenant que le logo est
    arrêté.

  On attend l'avis et le devis de Maître Groine. Le tout se fait au plus
  tard avant de commercialiser l'offre (décision du 26/11).

## 2. JOM FHM : la holding de Roland (retenu le 28/11/2026)

- **JOM** en lettres à empattements (Georgia, gras), le **O en framboise**
  (#d0587f sur fond foncé, #b03a63 sur fond clair). Le J et le M sont blancs
  sur fond foncé et noirs sur fond clair.
- **FHM** dessous, en capitales fines et très espacées, puis un trait
  framboise et **« les liens du sang »** en italique.
- La légende **Honneur · Dignité · Courage** est un aide-mémoire, pas une
  partie du logo.
- **Fichiers** :
  - `logos/jom-fhm-classique.png` et `.html` ;
  - les versions haute définition pour l'impression :
    `logos/jom-fhm-classique-hd.png`, `logos/jom-fhm-impression.png`.
- **Le sens du nom** est expliqué dans `notes/nom-holding.md`.
- **Reste à faire** : les mêmes fichiers vectoriels que pour Timops, si la
  holding en a l'usage (papier à en-tête, site). C'est moins urgent, car la
  holding ne vend rien au public.
