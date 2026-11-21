# Ce que le CRM de BTP Performance dit de la demande

Lecture du CRM le 21/11/2026 (Convex de production `patient-ferret-982`),
**en lecture seule** : exports par `convex data`, aucune écriture, aucune
fonction lancée. Chiffres agrégés et citations anonymisées seulement (RGPD :
ces contacts sont venus vers BTP Performance, pas vers la future société).

## À retenir en 30 secondes

- **Le nouveau CRM ne connaît ni la taille, ni le métier, ni le chiffre
  d'affaires, ni la région des membres et des leads.** Ces champs n'existent
  dans aucune table. Les réponses au diagnostic (qui les contiennent
  peut-être) vivent chez Systeme.io, pas dans la base.
- **Le volume est réel mais modeste** : environ 140 nouveaux clients en
  14 mois (dont 85 ventes saisies depuis octobre 2025, 7 450 € HT en
  moyenne), 3 600 leads de février à octobre 2026.
- **Ce que disent les artisans** : manque de temps, désorganisation et
  trésorerie reviennent bien plus que la paperasse. Le mot « administratif »
  n'apparaît que 3 fois, « secrétariat » une fois, « facture », « impayé »,
  « paperasse » jamais.
- **La conjointe est très présente** : sur les 25 prospects vraiment reçus
  en rendez-vous depuis le 27/10/2026, **6 (un sur quatre)** ont une femme
  ou un proche impliqué dans l'entreprise ou la décision, dont **2 où un
  proche fait explicitement l'administratif**.

## 1. Les membres (clients)

Il n'existe pas de table « membres » des clients dans le nouveau CRM (la
table `members` est l'équipe interne). On approche le nombre de clients par
quatre sources :

| Source | Ce qu'elle compte | Chiffre |
| --- | --- | --- |
| Closes relus chez Hyros (`mbCloses`) | nouveaux clients distincts, 01/2025 au 20/11/2026 (presque tous depuis 09/2025) | **140** |
| Ventes saisies (`mbVentes`) | ventes depuis le 01/10/2025 | **85** ventes, valeur moyenne **7 453 € HT** |
| Rendez-vous d'intégration (`integrations`) | clients distincts intégrés depuis le 13/10/2026 (dont passages V1 vers V2) | **62** |
| Paiements GoCardless à venir (`paiementsClients`) | payeurs distincts avec une échéance entre 11/2026 et 05/2027 | **17** |

Nouveaux clients par mois (Hyros, dédoublonnés) :

| Période | Clients |
| --- | --- |
| sept. et oct. 2025 | 19 et 20 |
| nov. 2025 à mars 2026 | 9, 11, 6, 6, 6 |
| avr. à juin 2026 | 10, 8, 7 |
| juil. à oct. 2026 | 3, 9, 9, 11 |

**Membres actifs aujourd'hui : non mesurable dans ce CRM.** Aucune table ne
dit qui est encore accompagné. Ordre de grandeur plausible : une centaine de
dirigeants passés par BTP Performance sur les 12 à 14 derniers mois.

### Métier (approximation)

Aucun champ métier. Seule piste : les mots présents dans l'adresse e-mail ou
le libellé du client (« menuiserie… », « …structure.bois »…). Sur 72
identifiants clients dédoublonnés (doublons possibles entre sources), 37 se
laissent deviner :

| Métier deviné | Clients |
| --- | --- |
| Couverture, toiture, zinguerie | 9 |
| Rénovation, habitat, multiservice, « bâtiment » | 9 |
| Charpente, bois, ossature | 7 |
| Menuiserie | 7 |
| Plomberie, chauffage, énergie | 2 |
| Électricité, peinture, carrelage | 1 chacun |
| Non déductible | 35 |

À lire comme une tendance : **second œuvre et métiers du bois et de
l'enveloppe**, très peu de gros œuvre visible.

### Taille, chiffre d'affaires, région

**Non disponibles.** Le profil « dirigeant / créateur » du diagnostic n'est
connu que pour 5 des 140 clients (tous « dirigeant »).

## 2. Les leads (prospects)

### Volumes mensuels (`mbMois`, février à octobre 2026)

| Mois | Leads | Appels pris | R1 tenus | R2 | Ventes |
| --- | --- | --- | --- | --- | --- |
| févr. | 562 | 90 | 50 | 17 | 10 |
| mars | 543 | 98 | 49 | 26 | 8 |
| avr. | 530 | 74 | 25 | 20 | 6 |
| mai | 373 | 56 | 23 | 11 | 8 |
| juin | 285 | 64 | 22 | 10 | 6 |
| juil. | 271 | 52 | 21 | 9 | 5 |
| août | 363 | 52 | 28 | 14 | 5 |
| sept. | 285 | 61 | 32 | 14 | 6 |
| oct. | 417 | 48 | 21 | 9 | 9 |
| **Total** | **3 629** | **595** | **≈ 271** | **130** | **63** |

Environ **400 leads et 65 demandes de rendez-vous par mois**.

### Profil déclaré au diagnostic (leads de mai à octobre 2026)

| Profil et « température » | Leads | Rendez-vous |
| --- | --- | --- |
| Dirigeant chaud | 57 | 5 |
| Dirigeant tiède | 7 | 2 |
| Dirigeant froid | 21 | 1 |
| Créateur chaud, tiède, froid | 7, 2, 1 | 0 |
| Diagnostic pas fini | 53 | 0 |
| Importés (28/10/2026, profil inconnu) | 129 | 0 |

Parmi les 95 diagnostics finis, **89 % sont des dirigeants installés**, la
cible même du secrétariat.

### Rendez-vous de closing suivis depuis le 27/10/2026 (`clRdv`)

| | Nombre |
| --- | --- |
| R1 réservés | 59 (52 prospects distincts) |
| R1 où le prospect était présent / absent | 23 / 12 |
| Issue des R1 : R2 posé, à relancer, perdu, disqualifié | 10, 8, 6, 6 |
| R2 | 12, dont 3 vendus |
| Prospects reçus pour de vrai (R1 tenu ou R2) | **25** |

Motifs de disqualification relevés : pas le budget (2), salariée et non
dirigeante (1), projet de rachat lointain (1), acquisition digitale ou site
internet renvoyés vers une agence (3 notes).

Taille, métier, chiffre d'affaires et région des leads : **non disponibles**,
sauf ce que le prospect écrit lui-même (un « couvreur », une
« plâtrerie-peinture », une « petite structure qui emploie 4 personnes »,
une EURL après 15 ans d'auto-entreprise, une entreprise de fenêtres de toit
et d'ossature bois).

## 3. Ce que disent les artisans

### Textes lus

- **40 réponses distinctes** à la question Calendly « ce qui vous attire dans
  notre programme » (écrites par le prospect lui-même) ;
- **59 notes distinctes** des closers sur les rendez-vous, plus 1 note de
  l'ancien tableur ;
- **18 comptes rendus** du jour des closers ;
- **5 réponses** à la prospection à froid (Instantly).

### Comptage des mots-clés

« Brut » : nombre de textes qui contiennent le mot. « Utile » : après
lecture, ceux qui parlent vraiment du sujet (les closers écrivent
« relance » pour leurs propres relances, « bureau d'étude », « bonne
soirée », « bon week-end »).

| Mot-clé | Motivations (40) | Notes closers (60) | Comptes rendus (18) | Utile |
| --- | --- | --- | --- | --- |
| administratif | 1 | 2 | 0 | **3** |
| paperasse | 0 | 0 | 0 | 0 |
| devis | 3 | 1 | 1 | **2** (performer sur les devis, logiciel de devis) |
| factur | 0 | 0 | 0 | 0 |
| relance | 0 | 1 | 16 | 0 (relances commerciales des closers) |
| impayé | 0 | 0 | 0 | 0 |
| secrétaire, secrétariat | 1 | 0 | 0 | **1** |
| bureau | 0 | 2 | 0 | 0 |
| femme | 0 | 7 | 0 | **7** (6 à 7 prospects) |
| épouse, conjointe | 0 | 0 | 0 | 0 |
| temps | 6 | 1 | 0 | **5** (manque de temps, famille) |
| soir | 0 | 2 | 4 | 0 |
| week-end, dimanche | 1 | 0 | 4 | **1** (« du lundi au dimanche ») |
| recrut | 1 | 0 | 0 | **1** |
| *trésorerie, argent, rentabilité* | 9 prospects | 2 | 0 | **9** |
| *organisation, structure, planning, process* | 9 prospects | 0 | 0 | **9** |

Lecture : **sur 39 prospects qui ont écrit leur motivation, 9 parlent
d'organisation, 9 de trésorerie ou de rentabilité, 5 de manque de temps ou
de vie de famille, 2 de délégation administrative ou de secrétariat.** Les
artisans formulent leur douleur en « je cours », « je n'ai pas de
visibilité », « je ne gagne pas d'argent », presque jamais en « j'ai trop de
paperasse ».

### Citations anonymisées

Écrites par les prospects (réponse Calendly, orthographe corrigée) :

1. « Déléguer des tâches administratives pour réduire le temps où je suis le moins efficace. Apprendre à structurer. Travailler maximum 50 heures par semaine. »
2. « Une connaissance des outils secrétariat et un suivi complet de A à Z. »
3. « Mieux piloter mon entreprise, gagner en organisation et retrouver du temps pour ma famille. » (plâtrerie-peinture)
4. « Je voudrais plus de temps pour moi, profiter de ma famille, et me perfectionner sur les devis. »
5. « Mettre en place des méthodes ou automatismes pour perdre moins de temps, pérenniser l'entreprise, fidéliser les salariés. »
6. « Apprendre à me structurer, à éviter de passer de tâche en tâche en oubliant ce que j'avais à faire. À prioriser mes actions. »
7. « Je suis obligé de travailler du lundi au dimanche […] je voudrais voir l'avancement sans avoir tout le temps à regarder les chiffres et à courir. » (EURL, ancien auto-entrepreneur)
8. « Je dirige une petite structure qui emploie 4 personnes […] je n'arrive pas à avoir un planning clair, ni à stabiliser ma trésorerie. »
9. « Beaucoup de chantiers mais plus de trésorerie. Courir après l'argent. »
10. « Comprendre pourquoi j'ai beaucoup de travail, des clients satisfaits, mais aucune rentabilité. »
11. « À force de faire des recherches sur certains points, recrutements, logiciel de devis… »
12. « Je suis couvreur, et je cherche de la stabilité dans mon planning et une bonne trésorerie. »
13. « Repreneur d'entreprise familiale, j'ai l'impression de naviguer au doigt mouillé […] mettre de vrais process en place. »
14. « Je suis souvent en sous-traitance, j'aurais aimé avoir des chantiers en direct. »

Écrites par les closers après le rendez-vous :

15. « [L'épouse] gère l'administratif, son mari est sur le terrain (elle est comptable à côté). »
16. « Sa femme est salariée de l'entreprise et impliquée (comme une associée). »
17. « Doit débriefer avec sa femme, son associée à 50 %, et sa nièce qui travaille avec lui sur la partie administrative. »
18. « Voit les disponibilités de sa femme, qui travaille avec lui, pour qu'on cale le R2 tous les trois. »
19. « Il débriefe avec sa femme (son fils, sa fille et son frère travaillent avec lui), car tout le monde a son mot à dire. »
20. « Le R2 avait été calé loin pour que sa femme soit présente. »
21. « Peu de patience devant un ordinateur… »
22. « Pas de trésorerie, pas de salaire […] aucune capacité d'investissement actuellement. » (disqualifié)
23. « Salariée consciente des soucis dans la boîte, elle va essayer de convaincre son patron. » (disqualifiée, non dirigeante)

Prospection à froid : 5 réponses, toutes négatives (« non merci », « pas de
besoin », une entreprise « en réduction voire fermeture »).

## 4. La conjointe ou une proche qui gère l'administratif

Le CRM n'a **aucun champ** pour le savoir ; seules les notes libres des
closers en parlent, et seulement depuis le 27/10/2026.

| | Prospects |
| --- | --- |
| Reçus pour de vrai (R1 tenu ou R2) | 25 |
| Avec une femme ou un proche impliqué (salariée, associée, présente à la décision) | **6** (24 %), 8 sur l'ensemble des 52 |
| Dont un proche qui fait **explicitement** l'administratif (épouse, nièce) | **2** (8 %) |

C'est un **plancher** : un closer ne note la conjointe que si elle pèse sur
la vente. Pour les membres déjà clients, impossible à dire depuis le CRM.

## 5. Limites des données

- **Pas de fiche client ni de fiche lead** dans le nouveau CRM : il suit les
  rendez-vous, les ventes et les paiements, pas l'entreprise de l'artisan.
  Taille, chiffre d'affaires, métier, région : rien.
- **Suivi des rendez-vous très récent** (depuis le 27/10/2026) : 59 R1,
  25 prospects reçus. Les pourcentages de la section 4 portent sur de petits
  nombres.
- **Les questions du diagnostic** (profil, et peut-être taille ou chiffre
  d'affaires) sont chez Systeme.io ; le CRM n'en garde que le profil et la
  température. Les relire demanderait une action Convex qui appelle
  Systeme.io : non lancée (lecture seule).
- **L'ancien CRM** (`neat-mockingbird-683`) et la plateforme Citadel
  contiennent peut-être les fiches des membres (métier, effectif, chiffre
  d'affaires) : non lus ici.
- Les **notes des closers** reflètent ce qui sert la vente de BTP
  Performance, pas un questionnaire sur l'administratif : l'absence d'un
  mot ne prouve pas l'absence du besoin.
- Métier deviné par l'adresse e-mail : indicatif, la moitié des clients reste
  inconnue.

## 6. Ce que ça dit de la demande pour chacune des deux formules

### Formule « bras droit » (la conjointe ou une proche fait l'administratif, outillée et formée)

- **Signal le plus net du CRM.** Un prospect reçu sur quatre a déjà sa femme
  ou un proche dans l'entreprise, et les closers calent les R2 pour qu'elle
  soit là : **c'est souvent elle qui décide avec lui**. Elle existe, elle
  est déjà au bureau, elle est déjà dans la boucle commerciale de BTP
  Performance.
- Le besoin exprimé (organisation, planning, visibilité sur la trésorerie)
  colle à une offre « outil + formation + suivi » plus qu'à une
  sous-traitance complète.
- Les membres de BTP Performance ont déjà appris la gestion : prolonger la
  formation vers la personne qui tient le bureau est cohérent et peu cher à
  vendre (même canal, mêmes closers).
- **Risque** : le budget. Une partie des prospects n'a pas de trésorerie ;
  la formule moins chère est la seule accessible pour eux.

### Formule « tout compris » (le service fait tout)

- **Signal plus faible mais réel** : 2 prospects sur 39 demandent
  explicitement de déléguer l'administratif ou un secrétariat, 5 parlent de
  manque de temps et de vie de famille, un travaille « du lundi au
  dimanche ». Ce sont les plus mûrs pour payer quelqu'un.
- Aucun artisan ne parle spontanément de factures, de relances clients ou
  d'impayés : **ces douleurs sont à faire émerger**, pas à supposer. Le
  discours devra partir de « vous courez, vous ne voyez pas votre
  trésorerie » pour arriver au service.
- Cible probable : le dirigeant installé (89 % des diagnostics finis), avec
  quelques salariés, **sans conjointe disponible pour le bureau**, et une
  trésorerie qui permet de payer (les clients de BTP Performance paient
  7 450 € HT en moyenne : ils ont une capacité d'investissement).

### Pour aller plus loin

1. Ajouter **deux questions** au R1 ou au diagnostic : « Qui fait
   l'administratif aujourd'hui (vous, conjoint, salarié, personne) ? » et
   « Combien d'heures par semaine y passez-vous ? ». En un mois, on aurait
   un vrai chiffre.
2. Lire, en lecture seule, les fiches de l'ancien CRM ou de Citadel pour
   la taille, le métier et la région des membres.
3. Sonder une dizaine de membres actuels (et leurs conjointes) en entretien,
   après avoir vérifié le cadre RGPD : ils sont clients de BTP Performance,
   pas de la future société.
