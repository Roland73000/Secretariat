# Veille : les doublons entre notre système, Costructor et Dougs

Recherche du 22/11/2026, lecture publique seulement (sites costructor.co et
dougs.fr, centre d'aide support.costructor.co, blogs, comparatifs). Aucun
compte, aucun essai, aucune démo, aucun formulaire, aucun contact.

Légende : **[lu]** = vu sur la page citée ; **[supposé]** = déduit, indirect,
source tierce, ou page marketing ambiguë. Complète `api-logiciels.md` et
`dougs.md`, et sert le **cahier de l'inexistant** (`../cahier-de-l-inexistant.md`).

## En bref

- **Costructor fait déjà beaucoup plus que des devis** : chantier, planning
  Gantt créé à partir des lignes de main d'oeuvre du devis, feuilles d'heures,
  rentabilité prévu contre réel, banque et rapprochement, achats, stock, CRM
  avec pipelines, portail client, prévisionnel de trésorerie, agent IA qui
  peut relancer une facture impayée, MCP. [lu]
- **Dougs fait aussi des devis et factures** (gratuits, sans situations ni
  acomptes nommés), la banque, les justificatifs, le tableau de bord et la
  facture électronique. [lu]
- **Doublon Costructor contre Dougs** sur trois sujets : facturation, banque
  et rapprochement, réception des factures fournisseurs. Il faut choisir un
  seul maître par sujet, sinon l'artisan saisit deux fois.
- **Ce que ni l'un ni l'autre ne fait** : l'humain (rappel, relance au
  téléphone, relecture), la bibliothèque qui apprend des heures réelles, le
  pointage par ouvrage avec quantités, l'appel manqué, la prise de
  rendez-vous, la vue multi-clients du bras droit et de Gaëlle, la
  communauté. C'est là qu'est notre valeur.
- **Correction pour le cahier** : la brique 2 dit que personne ne crée les
  tâches depuis les lignes du devis. Costructor le fait déjà pour le
  **planning** (lignes de main d'oeuvre converties en tâches). Ce qu'il ne
  fait pas : quantités posées par ouvrage, retour des écarts vers les temps
  de la bibliothèque. [lu]
  https://support.costructor.co/fr/article/comment-creer-un-planning-de-chantier-s6jnge/

---

## 1. Costructor : inventaire des fonctions

### Formules (HT par mois, rappel et compléments)

| Formule | Prix | Ce qui s'ajoute |
| --- | --- | --- |
| Starter | gratuit | devis et factures illimités, facture électronique en émission et réception |
| Pro | 15 € (12,50 en annuel) | devis IA dictés ou écrits, agent IA, serveur MCP, 150 crédits IA ; acomptes automatiques, bibliothèque d'ouvrages et de prix, 100 M d'articles fournisseurs, signature électronique ; rentabilité des devis, 1 connexion bancaire, livre des recettes, exports et accès comptable |
| Business+ | 30 € (25) | IA avancée, 750 crédits, OCR ; planning équipes et chantiers, bons d'intervention, équipes et rôles, suivi de chantier collaboratif ; situations détaillées, factures récurrentes, retenues de garantie, primes CEE, révisions de prix, **relances automatiques d'impayés**, modèles de devis, signature et paiement en ligne illimités ; achats (OCR), fournisseurs, demandes de prix, bons de commande, stock ; **CRM : opportunités, fiches contacts** ; rentabilité des chantiers, 2 banques, plan comptable |
| Premium | 60 € (50) | IA Max, 2 250 crédits, analyse DPGF, BPU, DQE ; **feuilles d'heures et pointage**, portail client, rôles personnalisés (« bientôt ») ; pipelines commerciaux multiples, historique des échanges ; banques illimitées, **tableau de pilotage, prévisionnel de trésorerie**, tags analytiques ; Stripe (CB), synchronisation comptable, SMTP, Gmail et Microsoft 365, **accès API** |
| Options | 10 € chacune (8,33 en annuel) | utilisateur, synchronisation comptable, **API et serveur MCP** ; signature 0,90 € et paiement en ligne 0,90 € (unité non précisée) |

Source : https://costructor.co/tarifs/ [lu]. Le tableau comparatif place
signature et paiement en option payante en Pro et illimités en Business+ :
ambigu. [lu]

### Fonction par fonction

| Fonction | Ce que fait Costructor | Formule | Source |
| --- | --- | --- | --- |
| Devis | création, ouvrages détaillés, sections, options, avenants, versions, modèles, bons de commande et de livraison, statut d'ouverture de l'e-mail envoyé [lu] | Starter et plus | https://support.costructor.co/fr/category/ventes-f6feit/ |
| Factures | devis en facture en un clic, acompte (et déduction au prorata), situation avec décompte général, avoir, retenue de garantie, plus-value et moins-value, débours, proforma, état de compte client [lu] ; autoliquidation automatisée [lu] | situations détaillées en Business+ | même source ; https://costructor.co/logiciel-facturation/ |
| Signature électronique | devis signé en ligne ou sur l'écran du téléphone, choix des options avant signature, eIDAS [lu] | Pro (option) ou Business+ | https://support.costructor.co/fr/article/comment-signer-un-devis-electroniquement-1xpk3m9/ ; https://costructor.co/appli-suivi-chantier/ |
| Paiement en ligne | « e-paiement », « e-virement » [lu] ; paiement CB par Stripe en Premium [lu] ; prestataire du e-virement non nommé | Business+, Stripe en Premium | https://costructor.co/logiciel-facturation/ ; tarifs |
| Relances | **relances automatiques d'impayés** (factures) [lu], réglage du calendrier et canal non publiés [lu, absence] ; **relance automatique des devis non trouvée** [lu, absence] ; l'agent IA peut « relancer une facture impayée à votre place » [lu] et « relancer les clients sans réponse » avec validation [lu, formulation ambiguë] | Business+ | tarifs ; https://costructor.co/assistant-ia/ ; https://costructor.co/blog/costructor-recommande-par-le-ministere-2026/ |
| Assistant IA (agent) | chat sur ordinateur et mobile, commande vocale ; crée devis, factures, clients, chantiers, exports comptables ; modifie des lignes en langage naturel ; devis signé en facture ; acomptes et situations ; remplit les feuilles d'heures ; répond sur CA, impayés, marge par chantier, trésorerie ; **toute action sensible (envoi de devis, émission de facture, relance) passe par la validation de l'artisan** [lu] | Pro (standard), Business+ (avancé), Premium (Max) ; la page assistant dit « inclus dans Premium » [lu, contradiction] | https://costructor.co/assistant-ia/ ; https://support.costructor.co/fr/article/comment-utiliser-lia-conversationnelle-1h3my79/ |
| Devis IA | à partir d'une description dictée ou écrite, chiffrage ligne par ligne, quantités et métrés, main d'oeuvre et fournitures, prix BTP à jour et 100 catalogues fournisseurs ; l'artisan valide chaque ligne [lu] ; **pas d'apprentissage sur les devis ou chantiers de l'artisan annoncé** [lu, absence] ; photo, plan, PDF non mentionnés (mais import DPGF et devis PDF existe) [lu] | Pro et plus, quotas | https://costructor.co/devis-ia/ ; https://support.costructor.co/fr/article/comment-importer-un-devis-dpgf-dqe-excelpdf-1btrzbp/ |
| Bibliothèques | bibliothèque personnelle (import CSV, Excel), ouvrages détaillés ; **Batiprix** en option (28 000 ouvrages avec temps de pose, mis à jour chaque mois, par lot) ; **CostLib**, bibliothèque collaborative notée par les utilisateurs (prix, composition, pose, libellé), prix en moyenne nationale [lu] ; temps de pose chiffré dans CostLib non indiqué [lu, absence] | Pro et plus ; Batiprix payant | https://costructor.co/logiciel-de-chiffrage-batiment/ ; https://support.costructor.co/fr/article/comment-acceder-et-utiliser-a-la-bibliotheque-costlib-1xxi4w7/ |
| Métrés | cités dans les pages métiers et dans le devis IA, pas d'outil de métré détaillé [lu] | | https://costructor.co/logiciel-de-chiffrage-batiment/ |
| Planning | Gantt (lots, tâches, jalons), **conversion du devis finalisé en planning : seules les lignes de main d'oeuvre sont reprises**, membres assignés, couleurs, planning simplifié jour par jour [lu] ; glisser-déposer, matériel, point de perte non mentionnés [lu, absence] | Business+ | https://support.costructor.co/fr/article/comment-creer-un-planning-de-chantier-s6jnge/ |
| Suivi de chantier | fil d'actualité, photos, notes, documents, rapports PDF, PV de réception, bordereau de chantier [lu] | Business+ | https://costructor.co/suivi-de-chantier/ ; https://support.costructor.co/fr/category/chantiers-129k71b/ |
| Pointage | feuilles d'heures des salariés, intérimaires, sous-traitants ; rattachement au chantier **facultatif** ; validation ou refus avec motif, puis verrouillage ; les heures validées alimentent la rentabilité [lu] ; **par tâche ou par ouvrage, quantités posées, géolocalisation, export paie : non mentionnés** [lu, absence] | Premium | https://support.costructor.co/fr/article/comment-utiliser-les-feuilles-dheures-ypj0g5/ |
| Rentabilité | **par chantier, pas par ouvrage** ; prévu tiré des devis acceptés ; réel tiré des achats ou des ventes, des heures pointées valorisées au coût horaire, frais généraux en coefficient ; prévu contre réel [lu] | Pro (devis), Business+ (chantiers) | https://support.costructor.co/fr/article/comment-suivre-la-rentabilite-de-mon-chantier-zc3nkk/ |
| Interventions | bons et rapports d'intervention sur mobile, signature sur place, tournées, interventions récurrentes de maintenance, suivi des équipements [lu] ; SMS et prise de rendez-vous non mentionnés [lu, absence] | Business+ | https://costructor.co/logiciel-interventions/ |
| CRM, prospects | fiches clients et prospects, opportunités, pipelines multiples et historique des échanges en Premium [lu] ; rappels, source du lead, agenda non documentés [lu, absence] | Business+ et Premium | tarifs ; https://support.costructor.co/fr/article/comment-creer-un-client-prospect-ue8wib/ |
| Agenda, prise de rendez-vous | **aucun module agenda ni réservation en ligne** ; le planning en tient lieu [lu, absence] | | https://costructor.co/logiciel-interventions/ |
| Site internet | site gratuit « à vie », créé en 5 minutes ; formulaire de demande de devis vers le CRM non mentionné [lu, absence] | gratuit | https://costructor.co/site-internet/ |
| Portail client | lien de partage par e-mail, SMS ou WhatsApp : actualités, photos, devis, factures, interventions ; actualités dictées à la voix [lu] ; paiement et messagerie non mentionnés [lu, absence] | Premium | https://support.costructor.co/fr/article/comment-fonctionne-le-portail-clientchantier-17oxarx/ |
| Appli mobile | Android et iOS : devis, signature, photos, heures, interventions ; **pas de hors ligne** [lu] | | https://costructor.co/appli-suivi-chantier/ |
| Dictée | devis IA, commande vocale de l'agent, actualités du portail [lu] | Pro et plus | assistant-ia, portail |
| Achats | factures d'achat par OCR, fournisseurs, demandes de prix, bons de commande, stock [lu] | Business+ | tarifs |
| Banque | connexion bancaire, catégorisation, **rapprochement transaction et facture proposé par l'IA**, ajout du justificatif depuis la transaction [lu] | 1 banque en Pro, illimité en Premium | https://support.costructor.co/fr/article/comment-justifier-une-transaction-bancaire-7y52fe/ |
| Pilotage, trésorerie | CA contre N-1, devis, meilleurs clients, achats, stock ; prévisionnel (réel passé, encaissements attendus, décaissements) ; retards reportés sur le mois en cours [lu] | Premium | https://support.costructor.co/fr/article/comment-fonctionne-le-pilotage-fm83ry/ |
| Facture électronique | « solution compatible », branché sur **Pennylane et SuperPDP** (PA immatriculées) ; émission, réception, e-reporting gratuits ; Dougs non cité [lu] | Starter | https://costructor.co/facturation-electronique/ |
| Export comptable | exports « dans de nombreux formats », accès du comptable invité par e-mail, synchronisation comptable en option ; **aucun logiciel comptable nommé** [lu] | Pro ; synchro Premium ou option | https://support.costructor.co/fr/article/comment-inviter-mon-comptable-1gj4div/ ; https://support.costructor.co/fr/category/imports-exports-9zgwst/ |
| API et MCP | API en Premium ou option 10 € ; MCP pour ChatGPT, Claude, Gemini ; **documentation non publique** [lu] | Premium ou option | tarifs ; https://costructor.co/blog/costructor-recommande-par-le-ministere-2026/ |
| Intégrations | Stripe, Gmail, Microsoft 365, SMTP, synchronisation comptable [lu] ; pas de Zapier [lu, voir `api-logiciels.md`] | Premium | tarifs |
| Rôles | membres et droits en Business+ et Premium ; rôles personnalisés « bientôt » [lu] | | https://support.costructor.co/fr/category/equipe-collaborateurs-1sc87vh/ |

### Ce qu'on en dit ailleurs

- Note Google 4,9 sur 5 et plus de 700 avis selon un comparatif ; 4,8 sur
  95 avis chez Appvizer ; suivi de chantier « pour besoins simples », pas
  pour plus de 100 salariés. [supposé, sources tierces]
  https://tool-advisor.fr/logiciel-facturation/comparatif/costructor/ ;
  https://www.appvizer.fr/construction/btp/costructor
- Partenaire officiel de la CAPEB depuis août 2026 ; cité par le ministère de
  l'Économie dans « Oser l'IA » (octobre 2026). [lu]
  https://costructor.co/blog/partenariat-capeb-costructor/ ;
  https://costructor.co/blog/costructor-recommande-par-le-ministere-2026/
- Pas de page « nouveautés » ni de feuille de route publique ; centre
  d'aide public mais sans article sur les relances, l'API, le MCP. [lu,
  absence] https://support.costructor.co/fr/

---

## 2. Dougs : inventaire des fonctions

| Fonction | Ce que fait Dougs | Source |
| --- | --- | --- |
| Banque | synchronisation temps réel, plus de 180 banques, pré-catégorisation, suggestion de rapprochement [lu] ; compte pro Dougs opéré par **Qonto** (11, 23, 59 € HT par mois) [lu] | https://www.dougs.fr/logiciel-comptabilite/ ; https://www.dougs.fr/compte-pro/ |
| Justificatifs | photo ou glisser-déposer, montant et TVA pré-remplis, rapprochement ; justificatif exigé au-delà de 100 € pour les PME (2025) [lu] ; adresse e-mail de collecte non trouvée [lu, absence, voir `dougs.md`] | même source ; https://www.dougs.fr/blog/retrospective-annee/ |
| Facturation | devis, devis en facture, avoir, catalogue, clients, suivi des encaissements, mobile, gratuit et illimité [lu] ; **acomptes, situations, signature électronique, paiement en ligne, import : non mentionnés** [lu, absence] | https://www.dougs.fr/logiciel-facturation-gratuit/ |
| Relances de paiement | « suivi du statut de paiement des factures électroniques, avec relance possible » ; **aucune relance automatique documentée** [lu] ; le MCP ne relance pas (« elle reste votre décision ») [lu] | https://www.dougs.fr/fonctionnalites/ ; https://www.dougs.fr/mcp/ |
| Tableau de bord | encaissements, dépenses, CA, charges, trésorerie, compte de résultat en continu, estimation TVA, IS, CFE ; « Dougs Performance » (rémunération minimale, seuils de TVA, IS) [lu] | https://www.dougs.fr/fonctionnalites/ ; retrospective |
| Échéances | rappels par e-mail et notification, onglet « À faire », télédéclaration en un clic [lu] | https://www.dougs.fr/logiciel-comptabilite/ |
| Prévisionnel | **pack de création** à 200 € HT, sur trois ans, rédigé par un comptable ; pas d'offre de prévisionnel glissant pour une entreprise en activité [lu] | https://www.dougs.fr/previsionnel-financier/ |
| Paie | fiches de paie, DSN, RH, dès 15 € par fiche plus abonnement social [lu] | https://www.dougs.fr/fonctionnalites/ |
| Facture électronique | plateforme agréée, Factur-X, réception centralisée des factures fournisseurs, e-reporting [lu] | https://www.dougs.fr/logiciel-facturation-gratuit/ |
| Appli | web, iOS, Android, refonte 2025 : validation du bilan, questions du comptable, factures [lu] | retrospective |
| MCP | lecture (résultat, trésorerie, tâches en attente, impayés, CA, factures d'achat) et écriture en brouillon (catégoriser, justificatifs, notes de frais, kilomètres, devis, factures, clients, produits), plusieurs sociétés sans vue consolidée ; pas de TVA, virements, relances ; titulaire seul ; CGU qui interdisent l'intégration dans d'autres systèmes [lu] | https://www.dougs.fr/mcp/ ; https://www.dougs.fr/mcp/cgu/ |
| Intégrations | banques, Qonto, MCP ; rien d'autre, aucune API publique, aucun connecteur avec un logiciel de devis BTP [lu] | https://www.dougs.fr/fonctionnalites/ |
| Multi-utilisateurs | non documenté [lu, absence] | https://www.dougs.fr/logiciel-comptabilite/ |
| BTP | rien de spécifique (pas de situations, pas de chantier) [lu, voir `dougs.md`] | |
| Stratégie | levée de 50 M€ (15/10/2026) : accélérer l'IA, élargir la plateforme, réseau de partenaires locaux dès 2027, acquisitions ; plus de 50 000 clients, objectif 100 000 [lu] | https://www.dougs.fr/blog/levee-fonds-dougs/ |

---

## 3. Le tableau des doublons, brique par brique

Recommandations : **le leur** (on s'en sert, on ne refait pas), **le nôtre**
(personne ne le fait, ou on doit en être maître), **doublon assumé** (les
deux existent, on garde le nôtre pour une raison précise et on évite la
double saisie par synchronisation).

### Brique 1 : bibliothèque d'ouvrages et chiffrage

| Sous-fonction | Costructor | Dougs | Notre système | Recommandation et raison |
| --- | --- | --- | --- | --- |
| Base d'ouvrages | bibliothèque perso, Batiprix (temps de pose), CostLib collaborative | catalogue produits simple | base commune en deux couches | **Doublon assumé, le nôtre maître.** Nos temps sont la valeur ; on pousse nos ouvrages dans la bibliothèque Costructor par l'API (à vérifier : l'API écrit-elle la bibliothèque ?). L'artisan ne saisit jamais un ouvrage deux fois. |
| Prix fournisseurs | 100 M d'articles, 100 catalogues | non | non | **Le leur.** Inutile de refaire des catalogues. |
| Temps corrigés par le réel | non (aucun apprentissage annoncé) | non | cadence réelle par ouvrage, proposition validée en un clic | **Le nôtre.** Cœur de l'accroche « chaque chantier rend votre prochain devis plus juste ». |
| Temps mis en commun | CostLib : notes et prix moyens nationaux, pas de temps réels | non | temps anonymisés entre artisans | **Le nôtre**, mais surveiller CostLib (voir risques). |
| Devis par IA | devis dicté ou écrit, chiffré sur prix BTP et catalogues | non | brouillon chiffré avec notre bibliothèque, relu par le bras droit | **Doublon assumé.** Leur IA ne connaît pas nos temps corrigés ; la nôtre écrit le devis dans Costructor (boucle validée le 22/11). Ne pas payer deux IA pour le même devis : l'artisan peut rester en Pro. |
| Import DPGF, DQE | oui (Premium) | non | non | **Le leur.** |

### Brique 2 : pointage et suivi de chantier

| Sous-fonction | Costructor | Dougs | Notre système (Citadelle) | Recommandation et raison |
| --- | --- | --- | --- | --- |
| Tâches depuis le devis | oui pour le planning (lignes de main d'oeuvre) | non | chaque ligne d'ouvrage devient une tâche pointable avec quantité et temps prévu | **Doublon assumé** (décision du 22/11 : Citadelle). Costructor ne gère ni quantités ni ouvrage. Corriger le cahier : « personne » est faux pour la création des tâches. |
| Pointage des heures | feuilles d'heures (Premium), par chantier facultatif, validées et verrouillées | non | pointage par ouvrage, en un clic, à la voix | **Le nôtre.** Granularité ouvrage indispensable à la brique 1. **Règle :** le compagnon pointe une seule fois, dans Citadelle ; ne jamais activer les feuilles d'heures Costructor en parallèle. |
| Quantités posées | non | non | oui | **Le nôtre.** |
| Photos, journal, PV de réception, portail client | oui | non | photos de visite | **Le leur** pour le journal, le PV et le portail client ; ne pas refaire un portail. |
| Rentabilité | par chantier, prévu contre réel | tableau global | rentabilité dans Citadelle | **Doublon assumé, Citadelle maître** pour la main d'oeuvre (Costructor n'aura pas nos heures, sauf à les lui pousser par l'API, à vérifier). Le dire à l'artisan pour éviter deux chiffres de marge différents. |

### Brique 3 : planning (Citadelle)

| Sous-fonction | Costructor | Dougs | Citadelle | Recommandation et raison |
| --- | --- | --- | --- | --- |
| Gantt, équipes | oui (Business+) | non | oui | **Doublon assumé** (décidé le 22/11). Costructor n'a ni point de perte, ni matériel unique, ni durée calculée par l'effectif, ni temps qui apprennent. L'artisan ne doit pas tenir deux plannings : ne pas utiliser celui de Costructor. |
| Relance des sous-traitants | non | non | bras droit ou automatisation | **Le nôtre.** |

### Brique 4 : appels et joignabilité

| Sous-fonction | Costructor | Dougs | Notre système | Recommandation et raison |
| --- | --- | --- | --- | --- |
| Appel manqué, SMS, rappel dans l'heure | non | non | oui | **Le nôtre.** Personne ne le fait. |
| Fiche prospect | CRM opportunités (Business+), pipelines (Premium) | clients simples | fiche créée seule | **Doublon assumé, le nôtre maître avant le devis.** Le prospect naît chez nous (appel, site, plateformes) ; il est créé dans Costructor par l'API au moment du devis, jamais ressaisi. L'artisan n'a pas besoin du CRM Costructor. |
| Site et formulaire | site gratuit, formulaire vers le CRM non mentionné | non | tous les contacts au même endroit | **Le leur pour le site** (gratuit) si son formulaire peut nous parvenir [supposé, à vérifier] ; sinon le nôtre. |

### Brique 5 : visite et devis

| Sous-fonction | Costructor | Dougs | Notre système | Recommandation et raison |
| --- | --- | --- | --- | --- |
| Liste de contrôle de visite | non | non | par type de travaux | **Le nôtre.** |
| Photos et dictée | dictée pour le devis IA, photos du chantier | non | dans notre appli | **Doublon assumé.** Notre dictée nourrit la liste de contrôle et la bibliothèque ; les photos du devis sont ensuite jointes au chantier Costructor par l'API (à vérifier). |
| Relecture humaine | non | non | bras droit | **Le nôtre.** |
| Mise en forme, envoi, signature, choix des options | oui | devis simple, sans signature | non | **Le leur.** Déjà acté dans le cahier. |
| Acompte à la signature | acomptes, paiement en ligne | non | non | **Le leur.** |

### Brique 6 : relances jusqu'à la signature

| Sous-fonction | Costructor | Dougs | Notre système | Recommandation et raison |
| --- | --- | --- | --- | --- |
| Savoir si le devis a été ouvert | statut de l'e-mail envoyé | non | lecture par l'API | **Le leur** (on lit le statut). |
| Relance automatique du devis | non trouvée en natif ; l'agent IA relance sur demande, avec validation | non | relances programmées | **Le nôtre** pour le calendrier et la décision ; l'e-mail part de préférence depuis Costructor (historique unique), si l'API le permet [supposé]. |
| Appel du bras droit | non | non | oui | **Le nôtre.** |
| Rendez-vous de présentation dans l'agenda | aucun agenda | non | oui | **Le nôtre**, branché sur l'agenda Google ou Outlook de l'artisan. |

### Brique 7 : facture et encaissement

| Sous-fonction | Costructor | Dougs | Notre système | Recommandation et raison |
| --- | --- | --- | --- | --- |
| Émission (acompte, situation, retenue de garantie, autoliquidation, avoir) | complet | basique, sans situations | non | **Le leur (Costructor).** Ne jamais facturer dans Dougs en même temps (double saisie et numérotation). |
| Facture préparée à la fin du chantier | non (le devis devient facture à la main ou par l'agent) | non | déclenchée par Citadelle, validée en un clic | **Le nôtre** pour le déclencheur ; la facture est créée en brouillon dans Costructor. |
| Paiement en ligne | e-paiement, Stripe (Premium) | non (compte Qonto à part) | non | **Le leur.** |
| Relances d'impayés automatiques | oui (Business+), réglages non publiés | non | relances auto puis humaines | **Le leur pour les e-mails automatiques, le nôtre pour l'humain.** Une seule chaîne d'e-mails : soit celle de Costructor, soit la nôtre, jamais les deux (le client recevrait deux relances). À trancher selon ce que permet le réglage Costructor. |
| Tableau des retards | par artisan (tableau de bord, pilotage Premium) | impayés par artisan | vue multi-clients pour le bras droit | **Le nôtre**, alimenté par l'API Costructor. |
| Facture électronique | via Pennylane ou SuperPDP | PA Dougs | non | **Le leur.** Ne rien développer. Point ouvert : Costructor émettra-t-il via la PA Dougs ? |

### Brique 8 : lien avec l'expert-comptable

| Sous-fonction | Costructor | Dougs | Notre système | Recommandation et raison |
| --- | --- | --- | --- | --- |
| Banque, catégorisation, rapprochement | oui (IA de rapprochement) | oui, c'est son métier | non | **Le leur, Dougs seul.** Désactiver ou ignorer la banque Costructor pour la compta : deux catégorisations divergentes, c'est la double saisie qu'on combat. Costructor peut garder la banque pour marquer les factures payées [supposé]. |
| Réception des factures fournisseurs | PA de Costructor, OCR achats | PA Dougs | non | **Doublon à trancher.** Le comptable a besoin de toutes les factures (Dougs), la rentabilité a besoin des achats par chantier (Citadelle ou Costructor). Proposition : réception par Dougs, notre système récupère une copie et l'impute au chantier [supposé, dépend de l'accord avec Dougs]. |
| Ventes vers le comptable | export, comptable invité, synchronisation sans logiciel nommé | rapprochement à l'encaissement | dépôt une seule fois | **Le nôtre comme aiguilleur**, tant qu'aucun lien direct Costructor vers Dougs n'existe. |
| Tickets et justificatifs papier | ajout depuis la transaction | photo dans l'appli | collecte par le bras droit | **Le leur (appli Dougs)** pour l'artisan ; notre bras droit dépose ce qu'il reçoit (voir `dougs.md`, schéma A). |
| Tableau de bord, trésorerie | pilotage et prévisionnel (Premium) | tableau de bord, TVA, IS | indicateurs BTP Performance | **Le leur** pour la compta et la fiscalité (Dougs) ; le prévisionnel Costructor ou Citadelle pour la trésorerie de chantier. Ne pas refaire un tableau comptable. |
| Paie | non | oui | non | **Le leur (Dougs).** |

### Brique 9 : avis et fidélisation

| Sous-fonction | Costructor | Dougs | Notre système | Recommandation et raison |
| --- | --- | --- | --- | --- |
| Demande d'avis vérifié | non | non | oui | **Le nôtre.** |
| Rappels d'entretien et de garanties | interventions récurrentes, suivi des équipements | non | oui | **Le leur pour planifier l'intervention**, le nôtre pour le rappel au client et la relation [supposé]. |
| Recommandation, réseau | non | non | oui | **Le nôtre.** |

### Brique 10 : pilotage par le bras droit, supervision

| Sous-fonction | Costructor | Dougs | Notre système | Recommandation et raison |
| --- | --- | --- | --- | --- |
| Tableau de bord des actions en attente, multi-artisans | non (un compte par entreprise) | onglet « À faire » par entreprise ; MCP multi-sociétés sans vue consolidée | oui | **Le nôtre.** C'est notre produit. |
| Revue quotidienne automatique | l'agent IA analyse sur demande, compte par compte | non | oui | **Le nôtre.** |
| Supervision (Gaëlle), remplacements, trace de qui a vu quoi | rôles (Business+), invitation du comptable | non documenté | oui | **Le nôtre.** Demander à Costructor un rôle « secrétariat » multi-comptes [supposé, à négocier]. |

### Brique 11 : communauté

Ni Costructor ni Dougs. **Le nôtre.** Masterclasses des partenaires
possibles (Costructor, Dougs) : c'est un levier commercial pour eux.

### Règle qui en découle : un seul maître par donnée

| Donnée | Maître | Les autres la reçoivent |
| --- | --- | --- |
| Prospect avant devis | notre système | Costructor au devis |
| Ouvrage et temps | notre système | Costructor (bibliothèque), Citadelle (planning) |
| Devis, facture, paiement client | Costructor | notre système (lecture), Dougs (ventes) |
| Planning, heures, quantités | Citadelle | notre système (bibliothèque) |
| Banque, catégorisation, compta, paie | Dougs | personne n'écrit dessus à sa place |
| Factures fournisseurs | à trancher (Dougs proposé) | Citadelle pour l'imputation chantier |

---

## 4. Les risques : ce qu'ils pourraient faire demain

| Risque | Probabilité | Ce qui empiéterait | Comment s'en protéger |
| --- | --- | --- | --- |
| **L'agent IA Costructor relance tout seul** les devis et impayés, sans validation, sur un calendrier | forte : il relance déjà sur demande, et les relances d'impayés sont automatiques en Business+ [lu] | la relance automatique (briques 6 et 7) | Notre valeur n'est pas l'e-mail : c'est l'appel du bras droit, le rendez-vous, la connaissance du dossier. Utiliser leur relance comme outil, vendre l'humain. |
| **Costructor fait apprendre les temps** : CostLib note déjà la « pose », les feuilles d'heures alimentent la rentabilité ; un pas de plus et il corrige les temps par les heures réelles | moyenne à forte : il a les heures, les devis et une base collaborative [supposé] | brique 1, notre cœur | Aller vite ; garder la granularité ouvrage et quantités posées (que Costructor n'a pas) ; l'économiste et le bras droit qui valident ; la base commune alimentée par Citadelle et BTP Performance, hors Costructor. Ne jamais stocker nos temps seulement dans Costructor. |
| **Costructor ajoute agenda, prise de rendez-vous, formulaire du site vers le CRM** | moyenne [supposé] | briques 4 et 6 (outil) | L'outil ne fait pas le rappel dans l'heure : rester sur l'humain. |
| **Costructor ferme ou renchérit l'API** (déjà en option payante), ou lance sa propre offre de secrétariat ou un réseau d'assistantes | moyenne [supposé] | toute la boucle | Contrat de partenariat écrit (accès API, prix, préavis) ; architecture où notre système reste maître des prospects, ouvrages et temps ; garder le mode « secrétaire dans le logiciel » sans API (voir `api-logiciels.md`). |
| **Costructor fait pointer par ouvrage** et améliore son planning | moyenne [supposé] | brique 2 et 3 (Citadelle) | Citadelle a les fonctions que Costructor n'a pas (point de perte, matériel, durée par effectif) ; le lien BTP Performance et le coaching. |
| **Dougs développe des relances automatiques** et une facturation BTP (acomptes, situations) | moyenne : levée de 50 M€ pour « élargir la plateforme » [lu] | brique 7, et conflit avec Costructor | Rester sur Costructor pour la facturation ; demander à Dougs un lien direct avec Costructor plutôt qu'une facturation concurrente. |
| **Dougs lance un réseau de partenaires locaux** (annoncé pour 2027) ou un service d'assistance administrative | moyenne [lu pour le réseau] | notre place auprès de l'artisan | Négocier tôt pour être ce partenaire local côté BTP ; contrat d'apport d'affaires. |
| **Dougs durcit ou fait payer le MCP**, ou refuse l'accès délégué | moyenne [lu : peut devenir payant] | brique 8 | Schéma A de `dougs.md` (humain mandaté), conception qui marche aussi avec un autre expert-comptable. |
| **Costructor et Dougs se branchent l'un sur l'autre** | faible à moyenne [supposé] | brique 8 (notre rôle d'aiguilleur) | Tant mieux pour la règle « jamais de double saisie » : notre valeur se déplace vers l'humain et la supervision. Ne pas investir trop lourd dans l'aiguillage. |

### Principes de protection

1. **Être maître des données qui font notre valeur** (prospects, ouvrages,
   temps, heures par ouvrage) et ne laisser chez les partenaires que des
   copies.
2. **Vendre l'humain et le système multi-clients**, pas des fonctions qu'un
   éditeur peut cocher dans sa prochaine version.
3. **Contrats écrits** avec Costructor (API, prix, préavis, rôle
   secrétariat) et Dougs (accès délégué, MCP), avant de bâtir dessus.
4. **Ne jamais activer deux fois la même fonction** chez l'artisan
   (relances, pointage, banque, facturation) : c'est la double saisie, et
   deux chiffres différents tuent la confiance.

## 5. À vérifier

- La doc API Costructor (derrière connexion) : écriture de la bibliothèque,
  création de devis en brouillon, factures en brouillon, lecture du statut
  d'e-mail, des paiements, des relances ; webhooks ; envoi de pièces jointes
  et photos ; écriture des heures (pour la rentabilité).
- Le réglage des relances automatiques Costructor (calendrier, canal,
  désactivation) et la formule exacte de l'agent IA (Pro ou Premium : les
  pages se contredisent).
- Le site gratuit Costructor : formulaire de demande de devis et où il
  arrive.
- Costructor peut-il émettre via la PA Dougs, ou se synchroniser avec Dougs
  (« synchronisation comptable » sans logiciel nommé) ?
- La gratuité et le contenu de CostLib (temps de pose ou non).
