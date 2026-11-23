# Le tableau des fonctionnalités

Version 1 du 22/11/2026. Tableau vivant, demandé par Roland : toutes nos
idées de développement, dans l'ordre du parcours du client de l'artisan,
de l'acquisition à la fidélisation. Pour chacune : ce que fait **notre
système** et ce que fait **Costructor**.

**Légende**

| Colonne « Nous » | Sens |
| --- | --- |
| ✓ | à développer dans notre système |
| ✓ Citadelle | existe déjà ou prévu dans Citadelle (un moteur, deux portes) |
| Socle | laissé au logiciel de devis de l'artisan ; on ne le fait pas |
| BTP Performance | fait par BTP Performance |
| À trancher | pas encore décidé |

| Colonne « Costructor » | Sens |
| --- | --- |
| ✓ | Costructor le fait (avec la formule entre parenthèses) |
| Partiel | Costructor en fait une partie (voir la note) |
| ✗ | Costructor ne le fait pas, ou rien de publié |

Source pour Costructor : leurs pages publiques et leur centre d'aide, lus le
22/11/2026 (`veille/doublons-partenaires.md`). À vérifier au rendez-vous.

## La frontière (proposition de Claude, à valider par Roland)

Règle de Roland (22/11/2026) : on ne veut pas imposer de logiciel à nos
clients ; donc **tout ce qui fait notre service est chez nous**, même
quand un logiciel partenaire le fait aussi. L'éditeur garde seulement **le
socle commun à tous les logiciels de devis** :
1. le fichier clients (coordonnées des clients et des chantiers),
   synchronisé avec le nôtre : saisi une seule fois ;
2. le devis : mise en forme, numérotation, envoi (notre IA l'écrit dedans) ;
3. la facture et ses obligations légales : numérotation, acomptes,
   situations, avoirs, retenue de garantie, **facture électronique** ;
4. l'export vers l'expert-comptable.

Condition : le logiciel de l'artisan doit avoir une API pour que notre IA
y écrive. Sinon, le devis préparé chez nous est recopié par le bras droit ;
et Costructor est recommandé, jamais imposé.

---

## 1. Se faire connaître

| Fonctionnalité | Nous | Costructor | Note |
| --- | --- | --- | --- |
| Site internet de l'artisan | Socle | ✓ (gratuit) | métier de Com'2, partenaire |
| Réseau fermé ou label qui apporte des demandes de clients | ✓ | ✗ | deuxième étape (piste 25) |
| Avis clients mis en avant | ✓ | ✗ | voir l'étape 9 |

## 2. Le premier contact

| Fonctionnalité | Nous | Costructor | Note |
| --- | --- | --- | --- |
| Toutes les demandes entrantes traitées par le bras droit | ✓ | ✗ | appels, mails, formulaires, réseaux |
| Appel manqué rappelé, joignabilité | ✓ | ✗ | |
| Agenda et prise de rendez-vous | ✓ | ✗ | aucun module agenda chez Costructor |
| Fiche prospect, opportunité | Socle | ✓ (Business+) | synchronisée avec notre système |

## 3. La visite et le devis

| Fonctionnalité | Nous | Costructor | Note |
| --- | --- | --- | --- |
| Préparation de la visite (fiche, questions, photos) | ✓ | ✗ | |
| Dictée sur place | ✓ | ✓ (Pro) | |
| **Bibliothèque qui apprend des heures réelles** | ✓ | ✗ | CostLib et Batiprix n'apprennent pas |
| Bibliothèque en deux couches (base commune, couche de l'artisan) | ✓ | Partiel | bibliothèque personnelle, sans mise à jour commune |
| Devis brouillon chiffré par l'IA avec nos temps | ✓ | Partiel (Pro) | leur devis IA ne connaît pas nos temps |
| Relecture du devis par le bras droit | ✓ | ✗ | |
| Mise en forme, numérotation, envoi du devis | Socle | ✓ (gratuit) | |

## 4. La relance et la signature

| Fonctionnalité | Nous | Costructor | Note |
| --- | --- | --- | --- |
| Relance des devis, par téléphone et par message | ✓ | ✗ | relance des devis non trouvée chez eux |
| Signature électronique du devis | ✓ | ✓ (Pro, en option) | chez nous si le logiciel ne l'a pas (à trancher) |
| Acompte et paiement en ligne | À trancher | ✓ (Business+) | |

## 5. La préparation du chantier

| Fonctionnalité | Nous | Costructor | Note |
| --- | --- | --- | --- |
| Planning des chantiers | ✓ Citadelle | ✓ (Business+) | module en projet dans Citadelle |
| Durée calculée par l'effectif, point de perte, matériel unique | ✓ Citadelle | ✗ | |
| Relance des sous-traitants | ✓ | ✗ | |
| Achats, bons de commande, stock | À trancher | ✓ (Business+) | |

## 6. Pendant le chantier

| Fonctionnalité | Nous | Costructor | Note |
| --- | --- | --- | --- |
| Pointage des heures par jour et par personne | ✓ Citadelle | ✓ (Premium) | existe dans Citadelle |
| Pointage par ouvrage, quantités posées | ✓ Citadelle | ✗ | indispensable à la bibliothèque |
| Photos rangées par chantier | ✓ Citadelle | ✓ (Business+) | existe dans Citadelle |
| Journal de chantier, PV de réception | ✓ | ✓ (Business+) | |
| **Espace client** : suivi, planning, photos, messages, documents, notifications | ✓ | Partiel (Premium) | leur portail n'a pas de messagerie ; le nôtre dans l'appli BTP Performance, au nom de l'artisan |
| Rentabilité par chantier, prévu contre réel | ✓ Citadelle | ✓ (Business+) | existe dans Citadelle ; un seul maître : Citadelle |
| Retour des heures réelles vers la bibliothèque | ✓ | ✗ | le cœur de la boucle |

## 7. La facture et l'encaissement

| Fonctionnalité | Nous | Costructor | Note |
| --- | --- | --- | --- |
| Factures, acomptes, situations, avoirs, retenue de garantie | Socle | ✓ | |
| Facture électronique | Socle | ✓ (gratuit) | par Pennylane ou SuperPDP |
| Relance des impayés, avec un humain | ✓ | Partiel (Business+) | chez eux relance automatique, sans humain |
| Suivi de trésorerie | ✓ Citadelle | ✓ (Premium) | existe dans Citadelle |
| Rapprochement bancaire | À trancher | ✓ (Pro) | aussi chez Dougs |

## 8. L'expert-comptable

| Fonctionnalité | Nous | Costructor | Note |
| --- | --- | --- | --- |
| Export comptable | Socle | ✓ (Pro) | |
| Pièces et questions de l'expert-comptable préparées par le bras droit | ✓ | ✗ | |

## 9. Les avis et la fidélisation

| Fonctionnalité | Nous | Costructor | Note |
| --- | --- | --- | --- |
| Demande d'avis après le chantier | ✓ | ✗ | |
| Carnet de la maison (factures, garanties, rappels d'entretien) | ✓ | ✗ | |
| Relance d'entretien, promotions de produits complémentaires | ✓ | Partiel (Business+) | chez eux, interventions récurrentes de maintenance |

## Tout au long du parcours

| Fonctionnalité | Nous | Costructor | Note |
| --- | --- | --- | --- |
| Poste de pilotage du bras droit, plusieurs entreprises | ✓ | ✗ | |
| Supervision par Gaëlle | ✓ | ✗ | |
| Santé du binôme (l'engagement du dirigeant suivi) | ✓ | ✗ | parcours du couple |
| Formation du dirigeant et de la conjointe | BTP Performance | ✗ | obligatoire pour la formule « bras droit » (8 modules déjà sur la plateforme) |
| Communauté des conjointes et des bras droits | ✓ | ✗ | |
| Assistant IA | ✓ | ✓ (Pro) | Barbara existe dans la plateforme |
