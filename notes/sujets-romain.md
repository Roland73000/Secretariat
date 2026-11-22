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

## Alobees, à égaler puis à dépasser (fiche du 22/11/2026)

Voir `veille/fiche-alobees.md`. Alobees fait déjà la moitié de notre boucle :
des tâches avec unité, quantité et heures estimées, la saisie quotidienne
des quantités posées sur mobile, la comparaison réalisé contre estimé. Il
ne renvoie rien vers le chiffrage : c'est la moitié qu'il nous reste à
construire, et vite, car Alobees (racheté par le groupe belge Eternia en
2025) a toutes les briques pour le faire.

## L'API Costructor : que peut-on y écrire ?

**Le besoin** : notre IA écrit toute seule dans Costructor (création de
devis en brouillon, lignes d'ouvrage, articles de bibliothèque), puis
récupère les devis signés et les factures.
**À vérifier** : la documentation de l'API Costructor n'a pas pu être lue
(réservée aux comptes). Elle est vendue 10 € par mois en option, et un
serveur MCP existe. **Solution proposée** : un artisan pilote (ou un compte
BTP Performance) active l'option, et Romain teste ce qu'elle permet
d'écrire ; en parallèle, le demander directement à Costructor dans le
rendez-vous de partenariat.

## Comment communiquer avec les clients de l'artisan ?

**Le problème** (Roland, 22/11/2026) : chaque client a son canal préféré
(SMS, e-mail, WhatsApp…). Le SMS coûte, WhatsApp Business aussi (facturé
par message pour les messages envoyés à l'initiative de l'entreprise), et
une appli à télécharger est un frein pour un client qui ne fait des travaux
qu'une fois tous les dix ans.

**La solution proposée par Claude : la page de suivi du chantier.**
- Chaque chantier a **sa page privée**, ouverte d'un simple lien, sans rien
  télécharger ni créer de compte (comme le suivi d'une livraison) : le
  planning et les dates d'intervention, la météo et les décalages, les
  photos d'avancement, les documents (devis signé, factures, attestations),
  le paiement en ligne, et une messagerie avec le bras droit.
- **Les notifications partent par le canal le moins cher qui marche** :
  e-mail par défaut (gratuit), notification de navigateur si le client
  l'accepte (gratuit, la page peut s'installer comme une appli sur le
  téléphone), et SMS seulement pour l'urgent (intervention décalée le jour
  même), inclus dans le forfait avec un quota.
- **Le client choisit** son canal préféré une fois ; le système s'adapte.
- **Une vraie appli plus tard**, seulement si les clients la demandent :
  la même page, emballée en appli.
- **Pourquoi c'est disruptif sans réinventer la roue** : l'artisan donne à
  son client une expérience de grande enseigne (suivi en direct, photos,
  documents au même endroit), et tout part en automatique depuis Citadelle
  et notre système. C'est aussi une vitrine : le client montre la page à
  ses proches, et la fin du chantier enchaîne sur la demande d'avis.

À valider avec Romain : la technique (page installable, notifications), et
les coûts réels des SMS et de WhatsApp Business au moment de choisir.
