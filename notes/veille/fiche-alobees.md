# Fiche concurrent : Alobees

Fiche du 22/11/2026, faite par Claude à la demande de Roland, pour Romain.
Lecture publique seulement : aucun compte, aucun essai gratuit, aucune démo,
aucun formulaire, aucun contact.

**Légende** : [lu] = lu sur la page citée (ou dans l'extrait renvoyé par le
moteur de recherche) ; [supposé] = déduction de Claude, non vérifiée. Les
pages d'Alobees et de Sage sont des pages commerciales : ce sont des
promesses, pas des preuves d'usage.

**Pages non lisibles** (refus du site ou page vide) : Capterra (.com et .fr),
GetApp, La Fabrique du Net, la fiche Google Play, la page produit Sage
e-chantier. Les notes de ces sites viennent d'agrégateurs (independant.io,
Appvizer) ou des extraits du moteur de recherche. Aucune vidéo YouTube n'a pu
être regardée : seuls leurs liens sont cités.

---

## 1. En bref

- **Ce que c'est** : une application web et mobile de **planning, feuilles
  d'heures et suivi de chantier** pour les PME du BTP. Pas de devis, pas de
  facture, pas de comptabilité : elle se branche sur l'ERP (Batigest, EBP,
  Codial, Graneet…) [lu] ([independant.io](https://independant.io/avis/alobees/),
  [connecteurs](https://www.alobees.com/services/connecteurs)).
- **Le point qui nous concerne** : depuis 2025, Alobees a des **tâches avec
  unité, quantité estimée et heures estimées**, des **feuilles de tâches**
  où le compagnon saisit les **quantités réalisées chaque jour**, et une vue
  « réalisé contre estimé ». Depuis octobre 2026, les heures saisies sur les
  tâches remplissent les feuilles d'heures [lu] ([changelog](https://www.alobees.com/changelog)).
  **C'est la moitié de notre boucle** : ils mesurent heures et quantités par
  tâche. **Ils ne renvoient rien vers le chiffrage** : aucun temps unitaire
  calculé, aucune proposition de mise à jour des modèles ou du devis, aucune
  mise en commun [lu, absence sur toutes les pages lues].
- **Qui** : société française créée fin 2016 (lancée en 2017), 2,5 M€ de
  chiffre d'affaires 2025, 10 à 19 salariés, rachetée en septembre 2025 par
  le groupe belge **Eternia Group** (avec Traxxeo) [lu] (registre, sources
  en partie 5).

---

## 2. Ce que fait l'outil, fonction par fonction

Les fonctions sont réparties en packs ; le centre d'aide parle encore de
« Pack standard / pro / expert », la page tarifs de Pro, Performance, Expert,
Entreprise [lu] ([centre d'aide](https://intercom.help/alobees/fr/),
[tarifs](https://www.alobees.com/tarifs)).

### 2.1 Pointage (arrivées et départs)

- **Comment** : sur le **téléphone du compagnon**, un clic pour l'arrivée, un
  clic pour le départ, puis validation [lu]
  ([aide arrivées/départs](https://intercom.help/alobees/fr/articles/10396833-les-arrivees-departs)).
- **Géolocalisation** : chaque pointage enregistre une adresse, visible sur le
  web [lu] (même source).
- **Qui pointe** : seul le compagnon pointe pour lui-même ; administrateurs et
  conducteurs de travaux consultent et vérifient [lu] (même source).
- **Par chantier** : oui, les pointages sont rattachés et regroupables par
  chantier ou par collaborateur [lu] (même source).
- **Alerte d'oubli** : notification 15 minutes après l'heure de début prévue
  du chantier si le salarié n'a pas pointé, envoyée au compagnon, au
  conducteur de travaux et au chef de chantier [lu] (même source).
- **Badge, borne, pointage d'équipe par le chef** : non mentionnés [lu,
  absence] (même source). Les pauses ne sont pas décrites [lu, absence].
- Une option relie les pointages aux feuilles d'heures pour les remplir
  automatiquement [lu] (même source).
- Vidéo : [Les arrivées/départs sur Alobees](https://youtu.be/XblSEU14WmE)
  [non regardée].

### 2.2 Feuilles d'heures

- **Création automatique** : une feuille d'heures est créée dès qu'un
  collaborateur est affecté à une intervention ; elle est **pré-remplie avec
  les heures du planning** [lu]
  ([page feuilles d'heures](https://www.alobees.com/fonctionnalites/feuilles-d-heures),
  [aide feuilles d'heures](https://intercom.help/alobees/fr/articles/10396686-les-feuilles-d-heures)).
- **Code couleur** : gris = heures prévisionnelles non modifiées ; orange =
  modifiées par le collaborateur ; vert = validées avec signature [lu] (aide).
  Autrement dit, **le compagnon ne saisit que s'il s'écarte du planning**
  [supposé, déduit du gris par défaut].
- **Saisie** : par le compagnon, ou en lecture seule, ou réservée au chef
  d'équipe, conducteur et administrateur, selon la configuration [lu] (aide).
- **Signature individuelle** sur mobile ; une fois signée, la feuille n'est
  plus modifiable [lu] (aide).
- **Alertes légales** : rouge si dépassement de la durée quotidienne légale,
  orange si plus de 48 h dans la semaine [lu] (aide).
- **Validation** : circuit de validation par rôle et blocage après validation
  (juin 2026) ; validation de toute l'équipe en un clic, export sur 18 mois
  (novembre 2026, version 5.8.0) [lu] ([changelog](https://www.alobees.com/changelog)).
- **Export** Excel ; **macro de paie** qui calcule les variables (panier,
  transport, congés, heures supplémentaires) [lu] (aide ;
  [tarifs](https://www.alobees.com/tarifs)).
- Vidéo : [Les feuilles d'heures sur Alobees](https://youtu.be/wf0E300QWuk)
  [non regardée].

### 2.3 Tâches et feuilles de tâches (le point le plus proche de nous)

- **Tâches et sous-tâches** hiérarchisées ; pour chaque tâche : dates,
  **quantité estimée**, **heures estimées**, **unité** (m², litre,
  quantité…) [lu] ([page tâches](https://www.alobees.com/fonctionnalites/taches),
  [changelog 25/06/2025](https://www.alobees.com/changelog)).
- **Modèles de tâches** réutilisables « autant de fois que nécessaire », avec
  description et unité, formant une bibliothèque [lu] (page tâches). Rien
  n'indique que les heures estimées d'un modèle se mettent à jour [lu,
  absence] (même page).
- **Création** : « automatiquement depuis l'ERP ou manuellement depuis
  l'application web », par administrateurs et conducteurs ; pas depuis le
  mobile [lu] (page tâches ;
  [aide planifier](https://intercom.help/alobees/fr/articles/10386440-planifier-vos-taches-pack-pro)).
  Le centre d'aide ne documente pas l'import de tâches depuis un ERP [lu,
  absence] ([aide connecteur ERP](https://intercom.help/alobees/fr/articles/10415884-les-caracteristiques-du-connecteur-erp-pack-pro)).
- **Feuilles de tâches** : chaque tâche affectée génère une feuille ; le
  compagnon **saisit les quantités réalisées chaque jour** sur mobile et
  valide ; le conducteur ou l'administrateur peut corriger puis valide
  (statuts : non soumise, à valider, validée) [lu]
  ([aide feuilles de tâches](https://intercom.help/alobees/fr/articles/10386510-les-feuilles-de-taches-pack-pro)).
- **Réalisé contre estimé** : depuis le 08/12/2025, « visualiser les
  quantités et heures réalisées vs estimées » directement dans l'affectation
  [lu] ([changelog](https://www.alobees.com/changelog)). Un **code couleur**
  dit si l'on est « dans les temps » [lu] (page tâches).
- **Lien tâches et heures** : depuis le 12/10/2026, à la validation d'une
  feuille de tâche, le total des heures réalisées est reporté dans la feuille
  d'heures [lu] (changelog).
- **Ce qui n'est pas dit** : aucun calcul de cadence (heures par unité), aucun
  historique par type de tâche, aucune proposition de corriger l'heure
  estimée du modèle, aucun retour vers le devis ou l'ERP [lu, absence sur la
  page tâches, le changelog et les articles d'aide lus].

### 2.4 Planning

- Planning des collaborateurs par salarié et par chantier, web et mobile,
  partagé en temps réel ; vues semaine, mois, trimestre ; filtres par statut,
  métier, chef de chantier [lu]
  ([accueil](https://www.alobees.com/), [Appvizer](https://www.appvizer.fr/construction/chantier/alobees),
  [independant.io](https://independant.io/avis/alobees/)).
- Plainte : pas de glisser-déposer des affectations, ergonomie jugée
  insuffisante (avis Capterra, 4/5) [lu dans l'extrait]
  ([recherche Capterra](https://www.capterra.fr/software/1029479/alobees)).

### 2.5 Planning de charge (Expert)

- Taux d'occupation par chantier et par semaine, besoins en main-d'œuvre
  « selon les estimations » ; bleu sous 100 %, rouge au-dessus, alerte sur
  les métiers sous-occupés [lu]
  ([aide besoins](https://intercom.help/alobees/fr/articles/10394875-afficher-vos-besoins-en-main-d-oeuvre-pack-expert)).
- Colonne « Planifié » et « main-d'œuvre restante à planifier » [lu]
  ([page planning de charge](https://www.alobees.com/fonctionnalites/planning-de-charge)).
- Selon independant.io : temps estimé, réalisé, restant, chargé, à charger ;
  y compris intérimaires et sous-traitants [lu]
  ([independant.io](https://independant.io/avis/alobees/)). Non confirmé sur
  les pages d'Alobees [lu, absence].

### 2.6 Suivi du chantier et du chiffre d'affaires

- Espace chantier : client, adresse, **prévisionnel**, contacts, personnes en
  charge, et un **avancement** qui « prend en compte les heures
  prévisionnelles, les heures planifiées et les heures réalisées » [lu]
  ([aide espace chantier](https://intercom.help/alobees/fr/articles/10371771-l-espace-chantier)).
- Le prévisionnel du chantier est un champ **« Heures estimées »**, facultatif,
  **au niveau du chantier**, saisi sur le web [lu]
  ([aide créer un chantier](https://intercom.help/alobees/fr/articles/10371293-creer-un-chantier)).
- Fil d'actualité (photos, vidéos, signatures), mémos épinglés, formulaires
  terrain personnalisables [lu] ([page chantiers](https://www.alobees.com/fonctionnalites/chantiers)).
- **Suivi du chiffre d'affaires** (janvier 2026, plan Expert puis
  Performance) : CA hebdomadaire par chantier, consolidation mensuelle et
  trimestrielle, mise à jour dès qu'une heure est planifiée ou réalisée,
  « comparer votre estimation avec votre productivité réelle », « détecter
  tôt les dérives » [lu]
  ([page CA](https://www.alobees.com/fonctionnalites/suivi-chiffre-d-affaires),
  [changelog](https://www.alobees.com/changelog)). **Pas de marge ni de coût**
  [lu, absence] (page CA).
- Côté Sage : « suivi de la rentabilité et du budget, avec détail des heures
  travaillées » par la macro [lu]
  ([marketplace Sage](https://fr-marketplace.sage.com/en-US/apps/60667/alobees/features)).

### 2.7 Matériel, documents, interventions, sous-traitants

- **Matériel (« Logistique »)** : liste des outils et réservation, avec
  disponibilité ; rien sur la maintenance ou le coût [lu]
  ([aide logistique](https://intercom.help/alobees/fr/collections/11328091-la-logistique-pack-pro)).
- **Documents** : dossiers par chantier, droits d'accès par rôle, stockage
  illimité ; documents de l'ERP (devis, factures, bons) envoyés dans Alobees ;
  par exemple les compagnons ne voient que les devis non chiffrés [lu]
  ([page chantiers](https://www.alobees.com/fonctionnalites/chantiers),
  [aide connecteur ERP](https://intercom.help/alobees/fr/articles/10415884-les-caracteristiques-du-connecteur-erp-pack-pro)).
- **Interventions** (option e-SAV) : planification et rapports signables par
  le client ; 840 € HT par an chez Sage [lu]
  ([tarifs](https://www.alobees.com/tarifs), [independant.io](https://independant.io/avis/alobees/)).
- **Sous-traitants** : utilisateurs temporaires ou invités (feuilles de
  tâches pour utilisateurs passifs, septembre 2025) [lu]
  ([changelog](https://www.alobees.com/changelog)). Pas de gestion de contrat
  ou de facturation de sous-traitant [lu, absence].
- **Absences**, congés, automatisations, formulaires prêts à l'emploi (plans
  Expert, via des « crédits ») [lu] ([tarifs](https://www.alobees.com/tarifs)).
- **Ce qui n'existe pas** : devis, facturation, comptabilité, lecture de
  plans ; pour les gros volumes, independant.io renvoie vers Procore [lu]
  ([independant.io](https://independant.io/avis/alobees/)).

---

## 3. Le lien avec les devis et la bibliothèque

| Question | Réponse | Source |
| --- | --- | --- |
| D'où viennent les heures prévues ? | Du **connecteur ERP** (heures prévisionnelles du chantier, avec nom, adresse, dates) ou d'une **saisie manuelle** (« Heures estimées » du chantier, heures estimées de chaque tâche) | [lu] [aide connecteur ERP](https://intercom.help/alobees/fr/articles/10415884-les-caracteristiques-du-connecteur-erp-pack-pro), [aide créer un chantier](https://intercom.help/alobees/fr/articles/10371293-creer-un-chantier), [page tâches](https://www.alobees.com/fonctionnalites/taches) |
| Import du devis Batigest ? | Sage écrit qu'Alobees « récupère les éléments du devis dans Batigest et organise le chantier » (témoignage IGC, génie climatique, 15 salariés, 1 M€, 2023) | [lu] [blog Sage IGC](https://www.sage.com/fr-fr/blog/digitalisation-atout-majeur-igc-temoignage/) |
| Ce qui est vraiment documenté | Le centre d'aide ne cite que les **heures prévisionnelles du chantier** ; les articles « connexions à Batigest » et « connexions à EBP » disent seulement « À VENIR » | [lu] [aide Batigest](https://intercom.help/alobees/fr/articles/10458406-les-connexions-a-batigest-pack-pro), [aide EBP](https://intercom.help/alobees/fr/articles/10458412-les-connexions-a-ebp-pack-pro) |
| Niveau de détail | **Chantier** pour le prévisionnel venant de l'ERP ; **tâche ou sous-tâche** (avec unité et quantité) pour le prévisionnel saisi ou importé ; **aucune mention d'ouvrage ni de lot** dans l'aide, mais le changelog parle de « suivre facilement vos ouvrages » avec les tâches | [lu] mêmes sources, [changelog](https://www.alobees.com/changelog) |
| Ce qui est fait de l'écart | **Affichage** (jauge, code couleur « dans les temps », réalisé contre estimé dans l'affectation, CA estimé contre réel) et, selon Sage, **avertissement en temps réel** des dérapages par rapport au temps devisé | [lu] [page feuilles d'heures](https://www.alobees.com/fonctionnalites/feuilles-d-heures), [page tâches](https://www.alobees.com/fonctionnalites/taches), [blog Sage IGC](https://www.sage.com/fr-fr/blog/digitalisation-atout-majeur-igc-temoignage/) |
| L'écart revient-il vers le chiffrage ? | **Non.** Seules les **heures brutes** remontent vers l'ERP (par chantier, date, nombre d'heures, note), quotidiennement, chaque semaine ou à la main. Aucune cadence, aucun temps unitaire, aucune mise à jour de bibliothèque | [lu] [aide connecteur ERP](https://intercom.help/alobees/fr/articles/10415884-les-caracteristiques-du-connecteur-erp-pack-pro), [aide Graneet](https://intercom.help/alobees/fr/articles/10416124-les-connexions-avec-graneet-pack-pro) |
| Ce qu'ils en disent eux-mêmes | Leur blog conseille, après le chantier, d'« analyser les écarts pour affiner les futurs chiffrages » : **c'est laissé à l'artisan, à la main** | [lu] [blog Alobees](https://www.alobees.com/conseils/suivi-chantier-btp) |

**Lecture de Claude** : Alobees sait mesurer, par tâche, des heures et des
quantités réalisées face à une estimation. La quantité saisie au jour le jour
et la validation par le conducteur sont exactement les données dont notre
boucle a besoin. Ce qui manque, c'est le **dernier kilomètre** : transformer
ces mesures en un temps unitaire par ouvrage, le proposer au dirigeant, le
renvoyer dans la bibliothèque du logiciel de devis, et le comparer à celui
des autres artisans [supposé, à partir des absences relevées].

---

## 4. Les intégrations

- **ERP et logiciels de devis** : Sage Batigest Connect, Codial, EBP,
  Kalitics, Graneet, Odoo [lu]
  ([connecteurs](https://www.alobees.com/services/connecteurs)). Le centre
  d'aide cite Batigest, EBP, Graneet et Codial [lu]
  ([aide connecteur ERP](https://intercom.help/alobees/fr/articles/10415783-le-connecteur-erp-qu-est-ce-que-c-est-pack-pro)).
- **Fonctionnement du connecteur ERP** : un service Windows avec une clé
  API [lu dans l'extrait] ([recherche](https://intercom.help/alobees/fr/articles/10415783-le-connecteur-erp-qu-est-ce-que-c-est)).
  - Chantiers : ERP vers Alobees (création, modification, fermeture ; nom,
    code, adresse, contact, dates, heures prévisionnelles) ; reprise des
    chantiers des 24 derniers mois à l'installation.
  - Documents : ERP vers Alobees.
  - Heures : Alobees vers ERP, périodique ou manuel.
  [lu] ([aide caractéristiques](https://intercom.help/alobees/fr/articles/10415884-les-caracteristiques-du-connecteur-erp-pack-pro))
- **Graneet** : intervenants et heures dans les deux sens (délai de 30 s
  d'Alobees vers Graneet) ; chantiers de Graneet vers Alobees [lu]
  ([aide Graneet](https://intercom.help/alobees/fr/articles/10416124-les-connexions-avec-graneet-pack-pro)).
- **Sage** : Alobees est revendu par Sage sous le nom **« Sage e-chantier
  Alobees »**, synchronisation « sans ressaisie » avec Batigest [lu]
  ([marketplace Sage](https://fr-marketplace.sage.com/en-US/apps/60667/alobees/features),
  [tarifs](https://www.alobees.com/tarifs)).
- **Paie et SIRH** : Lucca, Silae, Eurécia ; macro de variables de paie [lu]
  ([connecteurs](https://www.alobees.com/services/connecteurs)).
- **Expert-comptable** : aucun connecteur comptable cité [lu, absence] (même
  page). Le lien passe par l'ERP ou la paie [supposé].
- **Bureautique** : Google Drive, Google Sheets, OneDrive ; **Make** pour
  l'automatisation [lu] (même page).
- **API et webhooks** : API à partir du plan Performance, webhooks au plan
  Expert [lu] ([tarifs](https://www.alobees.com/tarifs)). Pas de
  documentation d'API publique trouvée [lu, absence].
- **Revendeurs** : un portail revendeurs existe [lu]
  ([accueil](https://www.alobees.com/), lien revendeur.alobees.com).

---

## 5. Prix, cible, clients, équipe, société

### 5.1 Prix (page tarifs lue le 22/11/2026)

| Formule | Mensuel | Annuel (par mois) | Contenu ajouté |
| --- | --- | --- | --- |
| Pro | 108 € HT | 90 € HT | planning, feuilles d'heures, pointages, documents, tâches, mémos, stockage et support illimités |
| Performance (« le plus populaire ») | 168 € HT | 140 € HT | suivi du CA, validation des heures, planning de charge, utilisateurs temporaires, variables de paie, API |
| Expert | 228 € HT | 190 € HT | 5 crédits (congés, formulaires, automatisations), webhooks, chargé de compte |
| Entreprise | sur devis | sur devis | SSO, formulaires sur mesure, support prioritaire |

- **Plus 10 € HT par utilisateur et par mois** ; engagement d'un an
  mentionné ; essai de 14 jours sans carte [lu]
  ([tarifs](https://www.alobees.com/tarifs)).
- **Chez Sage** : e-chantier 240 € HT par utilisateur et par an ;
  e-chantier Expert 1 680 € HT par an plus 240 € par utilisateur [lu] (même
  page).
- Ordre de grandeur pour une entreprise de 10 personnes au plan Performance
  annuel : 140 + 10 × 10 = **240 € HT par mois, soit environ 2 900 € par an**
  [supposé, calcul de Claude].
- Les anciens prix cités par les comparatifs (Standard 40 €, Pro 80 €,
  Expert 190 €) montrent une **hausse et un réagencement récents** [lu]
  ([Appvizer](https://www.appvizer.fr/construction/chantier/alobees),
  [independant.io](https://independant.io/avis/alobees/)).

### 5.2 Cible

- Entreprises du BTP de **5 à 100 salariés** selon le site ; **10 à 200**
  selon le communiqué Eternia [lu]
  ([accueil](https://www.alobees.com/),
  [communiqué](https://www.alobees.com/en/conseils/traxxeo-et-alobees-unissent-leurs-forces-pour-creer-eternia-group-le-leader-de-la-gestion-des-temps-et-activites-et-du-suivi-de-chantier)).
- Métiers : couvreurs, charpentiers, carreleurs, peintres, cordistes,
  menuisiers, électriciens, maçons, plaquistes, paysagistes, plombiers,
  chauffagistes, terrassiers, tous corps d'état [lu] ([accueil](https://www.alobees.com/)).
- **Pas l'artisan seul ou avec 1 à 3 compagnons** : le prix plancher et le
  discours (conducteur de travaux, planning de charge) visent l'entreprise
  structurée [supposé].

### 5.3 Clients annoncés (chiffres qui ne concordent pas)

- « 4,8/5 par +9000 dirigeants du BTP » [lu] ([accueil](https://www.alobees.com/)).
- « 500K chantiers, 10K entreprises activées, 25K utilisateurs activés » [lu]
  ([à propos](https://www.alobees.com/a-propos)).
- « Plus de 15 000 utilisateurs et 1 million de chantiers depuis 2017 » [lu]
  ([App Store](https://apps.apple.com/fr/app/alobees/id1205981436)).
- Le groupe Eternia annonce plus de 2 000 clients (avec Traxxeo) [lu dans
  l'extrait] ([CB Insights](https://www.cbinsights.com/company/alobees),
  [Traxxeo](https://traxxeo.com/en/news/traxxeo-and-alobees-join-forces-to-create-eternia-group-the-leader-in-time-and-activity-management-and-site-monitoring/)).
- **Lecture** : « entreprises activées » compte sans doute les essais ; avec
  2,5 M€ de CA et un panier de 2 000 à 3 000 € par an, le nombre de **clients
  payants** serait plutôt de l'ordre de **800 à 1 500** [supposé, calcul de
  Claude].

### 5.4 Société (registre des entreprises)

Source : [recherche-entreprises.api.gouv.fr](https://recherche-entreprises.api.gouv.fr/search?q=alobees),
interrogée le 22/11/2026 [lu].

- **ALOBEES**, SAS, SIREN 824 811 186, créée le **21/12/2016**, active.
- Activité : 58.29C (édition de logiciels applicatifs) ; convention
  collective Syntec (IDCC 1486).
- Siège : 8 B rue Abel, 75012 Paris (depuis septembre 2025) ; anciens
  établissements au Kremlin-Bicêtre, à Ivry, à **Station F**, à
  Marolles-en-Brie.
- Effectif : tranche **10 à 19 salariés** (2024) [lu, code de tranche 11].
- **Chiffre d'affaires 2025 : 2 514 316 €, résultat net 342 788 €** :
  entreprise rentable [lu].
- Président : **ETERNIA GROUP** ; directeur général : la société
  **BAYNAUD** (holding, SIREN 823 718 838) ; commissaire aux comptes Fidurex
  [lu].

### 5.5 Fondateurs, équipe, fonds

- Fondée en 2017 par **Erwan Baynaud** (écrit « Beynaud » sur la page à
  propos), expert des nouvelles technologies, et **Franck Sousa**, dirigeant
  d'une entreprise de pose de parquet [lu]
  ([à propos](https://www.alobees.com/a-propos)).
- Fonds : environ 535 k$ en seed, investisseur **The Moon Venture** (selon
  VCBacked, annonce de novembre 2023) [lu dans l'extrait]
  ([VCBacked](https://www.vcbacked.co/company/alobees)). Montant non confirmé
  par une autre source [supposé].
- **Septembre 2025 : rapprochement avec le belge Traxxeo** (fondé en 2008,
  gestion des temps pour les entreprises de 200 à plus de 20 000 personnes)
  au sein d'**Eternia Group**, CEO Charles le Hodey ; Erwan Baynaud reste CEO
  d'Alobees ; marchés France, Belgique, Luxembourg ; ambition : intégrer
  l'IA, devenir leader européen [lu]
  ([communiqué](https://www.alobees.com/en/conseils/traxxeo-et-alobees-unissent-leurs-forces-pour-creer-eternia-group-le-leader-de-la-gestion-des-temps-et-activites-et-du-suivi-de-chantier),
  [CFNews, extrait](https://www.cfnews.net/L-actualite/International/Operations/M-A/Alobees-equipe-un-belge-542846)).
  CFNews parle d'un **rachat** ; le montant n'est pas public [lu, extrait].

---

## 6. Ce que disent les utilisateurs

### 6.1 Notes

| Plateforme | Note | Nombre d'avis | Source |
| --- | --- | --- | --- |
| App Store (France) | 4,7 / 5 | 114 notes | [lu] [App Store](https://apps.apple.com/fr/app/alobees/id1205981436) |
| Google Play | 4,2 / 5 | 158 | [lu, via independant.io] [independant.io](https://independant.io/avis/alobees/) |
| Capterra | 4,4 / 5 | 34 | [lu, via independant.io et extrait] |
| Google | 4,8 à 4,9 / 5 | 49 | [lu] [independant.io](https://independant.io/avis/alobees/), [page avis Alobees](https://www.alobees.com/alobees-avis) |
| Appvizer | 4,7 / 5 | 188 (dont 51 sur Appvizer) | [lu] [Appvizer](https://www.appvizer.fr/construction/chantier/alobees) |
| Trustpilot | 4,1 / 5 | 12 sur un an | [lu] [Trustpilot](https://ch.trustpilot.com/review/alobees.com) |

Les avis visibles sont souvent anciens (2018 à 2022) et généraux [lu]
(Appvizer, App Store).

### 6.2 Points forts

- **Simplicité, prise en main rapide**, y compris par des ouvriers peu à
  l'aise avec le numérique [lu] (Appvizer ; App Store ; extrait Capterra).
- **Remplace le planning Excel** et les feuilles papier ; « on arrête de
  courir après l'info » [lu] ([page avis](https://www.alobees.com/alobees-avis)).
- **Support réactif**, souvent cité par prénom sur Trustpilot ; récupération
  de données perdues [lu] ([Trustpilot](https://ch.trustpilot.com/review/alobees.com)).
- **Modulaire** : on n'active que ce dont on a besoin [lu] (page avis).
- Plusieurs clients disent **économiser un poste** administratif [lu, page
  éditeur] (page avis). Argument direct contre notre offre de secrétariat
  [supposé].

### 6.3 Plaintes

- **Bug de calcul des heures pendant plusieurs mois**, jusqu'à 20 h d'écart
  par salarié, reconnu tard, dédommagement refusé (1 étoile, juin 2026) [lu]
  ([Trustpilot](https://ch.trustpilot.com/review/alobees.com)).
- **Synchronisation Batigest** « de temps en temps un peu difficile » ;
  **exports à affiner** par zone et par heures imputées par chantier [lu dans
  l'extrait] ([recherche Capterra](https://www.capterra.com/p/251246/Alobees/reviews/?page=2)).
- **Options payantes** pour des fonctions jugées de base (déplacements, temps
  de route) [lu dans l'extrait] ([GetApp](https://www.getapp.fr/software/2057043/alobees)).
- **Lenteurs** au chargement des photos et commentaires ; planning sans
  glisser-déposer ; tableaux parfois en anglais ; fonctions manquantes sur
  mobile pour les administrateurs [lu dans l'extrait]
  ([Capterra FR](https://www.capterra.fr/software/1029479/alobees)).
- « Quelques manques mais ils prennent rapidement les retours » [lu]
  ([App Store](https://apps.apple.com/fr/app/alobees/id1205981436)).
- Centre d'aide incomplet : articles Batigest et EBP « À VENIR » [lu]
  ([aide Batigest](https://intercom.help/alobees/fr/articles/10458406-les-connexions-a-batigest-pack-pro)).

---

## 7. Pour Romain

### 7.1 Ce qu'Alobees fait bien, et qu'il faut au moins égaler

1. **Le pointage en un clic avec géolocalisation**, et la relance
   automatique 15 minutes après l'heure prévue si personne n'a pointé.
2. **La feuille d'heures pré-remplie par le planning** : le compagnon ne
   touche à rien si tout s'est passé comme prévu (gris), il corrige sinon
   (orange), il signe (vert). C'est la saisie la plus légère possible pour
   les heures.
3. **La quantité réalisée saisie chaque jour par tâche**, validée par le
   conducteur, avec la possibilité de corriger avant validation.
4. **Les tâches avec unité, quantité et heures estimées**, en modèles
   réutilisables.
5. **La signature individuelle et le verrouillage** après validation (preuve
   pour la paie et les litiges).
6. **Les alertes légales** (durée quotidienne, 48 h).
7. **La macro de paie** (paniers, trajets, heures supplémentaires) et les
   connecteurs paie (Silae, Lucca).
8. **Les connecteurs ERP** (Batigest, EBP, Codial, Graneet), avec reprise de
   24 mois d'historique de chantiers.
9. **La modularité** et un vrai support humain réactif.

### 7.2 Ce qui manque, et que notre système doit faire en mieux

1. **La boucle complète, heures réelles vers bibliothèque.** Alobees mesure
   heures et quantités par tâche, puis s'arrête. Nous devons : calculer la
   cadence réelle par ouvrage (heures divisées par quantité posée), la lisser
   sur plusieurs chantiers, **proposer** au dirigeant un nouveau temps
   unitaire, et l'écrire dans la bibliothèque du logiciel de devis après sa
   validation. Leur propre blog laisse ce travail à l'artisan, à la main.
2. **Le lien ouvrage du devis et tâche du chantier.** Chez Alobees, le
   prévisionnel venant de l'ERP est **au niveau du chantier** ; les tâches
   sont créées à la main ou par un import peu documenté. Il nous faut une
   correspondance automatique **ligne d'ouvrage du devis = tâche pointable**,
   avec sa quantité et son temps devisé, sinon la cadence ne veut rien dire.
3. **La saisie ultra simple sur le chantier.** Les tâches ne se créent que
   sur le web, et le compagnon doit tenir deux feuilles (heures et tâches),
   reliées seulement depuis octobre 2026. Viser une seule action : « j'ai
   passé ma journée sur tel ouvrage, j'en ai posé tant », à la voix ou en
   deux touches, et le reste calculé.
4. **La mise en commun.** Rien chez Alobees. Un référentiel anonymisé par
   métier et région permettrait de dire à l'artisan « vous posez ce placo
   20 % plus lentement que la moyenne », et de donner un temps de départ à
   celui qui n'a pas d'historique.
5. **L'humain qui s'en occupe.** Alobees vend l'outil et un support ; les
   clients disent même économiser un poste. Notre différence : Gaëlle et les
   conjointes font le calage de départ, relancent le pointage, préparent la
   revue mensuelle des écarts, et présentent les propositions au dirigeant.
6. **La marge, pas seulement le chiffre d'affaires.** Alobees suit le CA par
   chantier, sans coût ni marge [lu]. Nous devons montrer la marge réelle par
   ouvrage et par chantier.
7. **La petite entreprise.** Prix plancher d'environ 100 € par mois et
   discours de PME structurée : l'artisan avec 1 à 5 compagnons est mal
   servi [supposé].

### 7.3 Les pièges à éviter

1. **Des heures fausses tuent la confiance** : un bug de calcul des heures a
   coûté à Alobees un client furieux et un avis à 1 étoile. Tests
   automatiques sur les calculs d'heures, et correction rapide et
   dédommagée.
2. **Les connecteurs fragiles** : la synchronisation Batigest est critiquée,
   la documentation manque. Un connecteur par ERP est un gros chantier
   permanent ; commencer par un seul logiciel de devis, bien fait.
3. **Les options payantes qui énervent** : trajets et déplacements facturés
   à part sont mal vécus. Inclure l'essentiel du BTP dans le prix de base.
4. **Le double pointage** (heures plus tâches) : chaque saisie en plus fait
   chuter la discipline, et sans discipline la boucle ne marche pas.
5. **Les chiffres gonflés** : Alobees affiche trois nombres de clients
   différents. Rester précis et vérifiable.
6. **Copiable** : Alobees a déjà les briques (quantités, heures estimées,
   modèles de tâches, connecteur ERP, ambition IA du groupe Eternia). Il
   pourrait ajouter « proposer un nouveau temps estimé au modèle » en
   quelques mois [supposé]. Notre avance durable doit être le **service** et
   le **stock de temps réels mutualisés**, pas la fonction seule.
7. **Partenaire possible plutôt qu'ennemi** : Alobees a une API et des
   webhooks ; on pourrait lire ses heures et quantités plutôt que refaire le
   pointage chez les artisans qui l'ont déjà [supposé, à vérifier sur la
   documentation de l'API, non publique].

### 7.4 Fonctions à reprendre / à dépasser

**À reprendre (au moins aussi bien)**
- Pointage en un clic, géolocalisé, avec relance d'oubli.
- Feuille d'heures pré-remplie par le planning, signée, verrouillée.
- Quantité réalisée par tâche, validée par le chef.
- Modèles de tâches avec unité et heures estimées.
- Alertes légales et variables de paie, export vers Silae ou Lucca.
- Connecteur avec le logiciel de devis, historique repris à l'installation.

**À dépasser (notre différence)**
- Tâche pointable créée automatiquement **depuis chaque ligne d'ouvrage du
  devis**, avec quantité et temps devisé.
- **Cadence réelle par ouvrage**, lissée, et **proposition de nouveau temps
  unitaire** validée par le dirigeant, réécrite dans la bibliothèque.
- **Une seule saisie** sur le chantier (ouvrage plus quantité, à la voix).
- **Référentiel mutualisé et anonymisé** de temps par métier et région.
- **Marge réelle** par ouvrage et par chantier, pas seulement le CA.
- **Une personne** qui tient le système pour l'artisan (calage, relances,
  revue mensuelle).
