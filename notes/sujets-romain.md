# Sujets à traiter avec Romain et Gaëlle

Règle de Roland (22/11/2026) : **on s'oriente solution, pas problème.**
Chaque difficulté repérée arrive avec une solution proposée par Claude, ou
devient un sujet à traiter avec Romain et Gaëlle pour en trouver une.

| Problème | Solution proposée | Statut |
| --- | --- | --- |
| Personnalisation contre mises à jour : chez les autres, un ouvrage modifié ne reçoit plus les mises à jour de la base | Voir ci-dessous : la bibliothèque en deux couches | à challenger avec Romain |

## La bibliothèque en deux couches

**Le problème** : aujourd'hui, quand un artisan modifie un ouvrage de la
base, il en fait une copie. La copie ne reçoit plus les mises à jour (prix
des fournitures, nouvelles normes, nouveaux produits). Il doit choisir entre
« mes temps » et « une base à jour ».

**La solution proposée par Claude** : ne jamais copier l'ouvrage, mais le
superposer.
1. **La couche commune** : l'ouvrage de référence, tenu à jour par nous
   (fournitures, normes, temps moyens du réseau).
2. **La couche de l'entreprise** : seulement ce qui diffère chez elle,
   champ par champ. Par exemple un coefficient sur le temps de pose
   (« chez moi, 1,15 fois le temps moyen »), une fourniture remplacée par sa
   marque habituelle, une méthode à elle.
3. **Ce que voit l'artisan** : le résultat des deux couches. Tout ce qu'il
   n'a pas modifié suit les mises à jour tout seul ; tout ce qu'il a
   modifié reste à lui.
4. **Quand la base change un champ que l'artisan a modifié** : le système le
   prévient (« le prix de référence a augmenté de 8 %, votre prix est
   inchangé : garder le vôtre ou suivre la base ? »). Le bras droit peut
   s'en occuper pour lui.
5. **Pour les temps, c'est encore plus simple** : la couche de l'entreprise
   ne stocke pas un temps figé, mais un **écart par rapport au temps
   moyen**, recalculé à partir de ses heures réelles. Quand le temps moyen
   du réseau évolue, le sien évolue avec, tout en gardant son écart.

C'est le principe des « surcharges » qu'on connaît en informatique : la
base reste unique, chaque entreprise n'enregistre que ses différences.
Romain saura dire comment l'organiser techniquement.
