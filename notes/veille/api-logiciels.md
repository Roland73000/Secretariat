# Veille : les API des logiciels de devis et factures du BTP

Recherche du 21/11/2026, lecture publique seulement (sites des éditeurs,
centres d'aide, catalogues Zapier et Make, comparatifs). Aucun compte, aucun
formulaire, aucune demande de clé, aucun contact.

Légende : **[lu]** = vu sur une page citée ; **[supposé]** = déduit, indirect
ou source tierce non vérifiée chez l'éditeur. Les chiffres d'utilisateurs sont
ceux que chaque éditeur affiche, sans vérification, et ils ne mesurent pas la
même chose (utilisateurs, comptes, « pros qui nous font confiance »).

Objectif rappelé : se brancher sur le logiciel de l'artisan pour **préparer
des brouillons de devis**, **suivre les devis à relancer**, les **factures**
et les **paiements**.

## 1. Tableau récapitulatif

| Logiciel | API publique ? | Ce qu'elle permet | Accès | IA de l'éditeur | Utilisateurs annoncés | Source principale |
| --- | --- | --- | --- | --- | --- | --- |
| **Costructor** | Oui, plus un serveur MCP [lu], doc non trouvée publiquement | Non détaillé publiquement ; l'assistant IA de l'éditeur crée devis, factures, clients, relances [lu] | Premium (50 € HT/mois en annuel) inclut l'API ; sinon option « API et serveur MCP » 10 €/mois ; MCP inclus dès Pro [lu] | Fort : devis IA, assistant qui pilote tout le compte, relances automatiques d'impayés [lu] | 180 000 « utilisateurs satisfaits » (site), 130 000 (flyer CAPEB) [lu] | costructor.co/tarifs |
| **Obat** | Non trouvée [lu] ; seulement une « connexion API » vers la comptabilité (Pennylane) | Rien d'ouvert aux tiers trouvé ; une spec « import clients » existe chez un catalogue tiers [supposé, non officielle] | Aucune offre développeur trouvée | Fort : devis vocal IA (dictée, chiffrage sur 30 000 ouvrages) [lu] | 21 000 pros du bâtiment [lu] | obat.fr |
| **InterFast** | Non documentée publiquement ; une clé API existerait [supposé] | Inconnu publiquement | Inconnu | Fort : Copilote qui lit et crée clients, devis, factures, repère les devis à relancer [lu] | Non trouvé | help.inter-fast.co |
| **Vertuoza** | **Oui, doc publique** [lu] + MCP [lu] | Synchronisation des données ; détail des ressources non lisible par l'outil (page dynamique) | Conditions non publiées | Fort : VertuoAI (devis par dictée), MCP pour Claude, ChatGPT, Gemini (devis non signés, factures en retard) [lu] | 13 000 utilisateurs, 3 568 PME (BE, FR, CH, LU, NL) [lu] | rest-api.vertuoza.app/docs |
| **Sage Batigest** | Non trouvée [lu] | Connecteurs partenaires seulement (Nuxilog, Alobees) | Partenariat Sage [supposé] | Pas d'IA trouvée dans Batigest [lu] | 18 000 entreprises BTP [lu, via résultat de recherche] | sage.com |
| **EBP Bâtiment** | Non publique pour le bâtiment [lu] ; SDK en abonnement local, API sous contrat « Privilège » [lu] | Inconnu pour le bâtiment | Contrat Privilège, partenariat [lu] | Pas d'IA native trouvée [lu] | Non trouvé | ebp.com, sellsy.com |
| **Batappli** | Non [lu] (rien sur le site ; un tiers confirme l'absence) | Export comptable seulement | Aucun | Moyen : Batappli.ia (8 à 16 devis IA par mois), relances automatiques [lu] | 13 000 utilisateurs, 5 000 clients [lu] | batappli.fr |
| **Tolteck** | Non trouvée [lu] ; « API » cochée sur GetApp [supposé] | Inconnu | Inconnu | Rien trouvé [lu] | Non trouvé | tolteck.com |
| **Axonaut** | **Oui** (clé API dans le compte) [lu] | Clients, devis (créer, lire), factures (créer, modifier), paiements (créer), produits, projets ; déclencheurs Zapier et Make [lu] | Clé API par client, dans les paramètres du compte [lu] | Faible : IA sur les dépenses, relances automatiques factures et devis [lu] | 189 000 utilisateurs (généraliste, pas BTP) [lu] | apps.make.com/axonaut, zapier.com |
| **Extrabat** | Oui, clé API par utilisateur [lu], doc non publique | Bons de commande, articles, clients, factures, agenda [supposé, agence tierce] | Clé « User API Keys » sur myextrabat.com [lu] | Rien trouvé [lu] | 41 000 utilisateurs [lu] | servicescompris.extrabat.com |
| **Onaya (Orisha)** | Non publique [lu] | Connecteurs à la carte, sur devis | Commercial | Pas d'IA native [supposé] | Non trouvé | orisha.com |
| **Mediabat** | Non trouvée [lu] | Inconnu | Inconnu | Devis IA en langage naturel [supposé, source tierce] | Non trouvé | tensoria.fr |
| **Henrri** | Non [supposé, deux comparatifs] | Rien | Rien | Rien trouvé | Non trouvé | ideal-investisseur.fr |

## 2. Fiches par logiciel

### Costructor

- **API** : « Accès API » inclus dans Premium ; option « Accès API & serveur MCP »
  à 10 €/mois (8,33 € en annuel) sur les autres formules ; « Serveur MCP
  (Claude, ChatGPT…) » listé dans Pro. [lu]
  https://costructor.co/tarifs/
- **Documentation** : aucune trouvée publiquement (ni sur le site, ni dans le
  centre d'aide support.costructor.co, ni costructor.co/api qui renvoie 404). [lu]
  Elle est sans doute visible une fois connecté. [supposé]
- **Formules** : Starter gratuit, Pro 15 €/mois (12,50 en annuel), Business+
  30 € (25), Premium 60 € (50). [lu] https://costructor.co/tarifs/
- **IA** : devis IA (quotas par formule), « Assistant IA » qui crée devis,
  factures, clients, chantiers, envoie un devis, relance un client, transforme
  un devis signé en facture, répond sur le CA, les impayés, la marge ; tout
  envoi demande la validation de l'artisan. Relances automatiques d'impayés en
  Business+ et Premium. [lu]
  https://costructor.co/assistant-ia/
- **Connecteurs** : Stripe, Gmail, Microsoft 365, SMTP, synchronisation
  comptable en option. Pas de Zapier (page Zapier inexistante). [lu]
- **Utilisateurs** : « 180 000 utilisateurs satisfaits » (site), « + 130 000
  pros du BTP » (flyer CAPEB). [lu]
  https://costructor.co/ ;
  https://www.capeb.fr/www/capeb/media//gard/document/Flyer%20A5%20Costructor%20Capeb%20Gard.pdf
- **Lecture** : le plus ouvert des logiciels BTP « grand public », mais c'est
  aussi celui dont l'assistant IA fait déjà une bonne partie du travail d'une
  secrétaire.

### Obat

- **API** : aucune documentation développeur trouvée. La seule « connexion
  API » annoncée sert à envoyer les données vers le logiciel comptable
  (Pennylane cité). [lu]
  https://www.obat.fr/ ; https://partenariats.obat.fr/comptables
- Un catalogue tiers (Jentic) décrit une « Obat Client Import API » (lister,
  importer des clients par CSV) authentifiée par un cookie de session : ce
  n'est pas une API publiée par Obat. [supposé, non officiel]
  https://jentic.com/apis/obat.fr/obat.md
- **Connecteurs** : pas d'app Zapier (404), rien sur Make ou n8n. [lu]
- **IA** : « Devis vocal IA » : l'artisan dicte depuis le chantier, l'IA chiffre
  avec ses prix ou 30 000 ouvrages ; accepte aussi texte, photo, PDF. Option
  payante (prix non affiché). Pas de relance automatique par IA annoncée. [lu]
  https://www.obat.fr/devis-factures/devis-vocal-ia/
- **Utilisateurs** : « + 21 000 pros du bâtiment », 110 salariés dont 40
  ingénieurs ; se dit « N°1 des logiciels bâtiment en France ». [lu]
- **Lecture** : gros acteur fermé ; sans accord avec Obat, pas d'intégration
  propre possible.

### InterFast

- **API** : aucune documentation publique ; site principal inaccessible lors de
  la recherche. Un éditeur tiers d'agent vocal (Neofaber) demande aux
  utilisateurs leur « clé API InterFast » pour lire clients et planning et
  poser des rendez-vous : une API existe donc probablement, au moins pour des
  partenaires. [supposé] https://tally.so/r/EqkRZB
- **Connecteurs** : export vers Pennylane. [lu]
  https://www.pennylane.com/fr/integrations/interfast
- **IA** : « Copilote InterFast » (web, texte seulement, pas de dictée) : lit
  devis, factures, clients, planning, CA ; crée clients, devis, factures,
  ajoute des lignes ; **repère les devis en attente de relance et propose une
  relance** ; chaque action se confirme. Inclus dans Starter, Pro, Business
  (55, 110, 220 crédits par mois, puis 0,075 € HT le crédit). [lu]
  https://help.inter-fast.co/fr/articles/16917671-le-copilote-interfast-votre-assistant-conversationnel-integre
- Module « Automatisations » (tâches, demandes d'avis). [lu]
  https://help.inter-fast.co/fr/collections/11119333-outils
- **Utilisateurs** : non trouvé. Cible CVC, plomberie, chauffage. [lu]
- **Lecture** : leur Copilote est exactement notre cas d'usage « devis à
  relancer », fait par l'éditeur.

### Vertuoza

- **API** : « Open API » documentée publiquement. [lu]
  https://www.vertuoza.com/fr-be/integrations ;
  https://rest-api.vertuoza.app/docs
  Le contenu de la doc (ressources, authentification, webhooks) n'a pas pu être
  lu par l'outil (page dynamique) : à ouvrir à la main. [lu]
- **Conditions d'accès** : non publiées sur la page intégrations. [lu]
- **MCP** : connexion de Claude, ChatGPT ou Gemini à Vertuoza pour sortir les
  devis non signés, les factures en retard par ancienneté, préparer ses
  relances. [lu]
  https://www.vertuoza.com/fr-be/fonctionnalites/lintelligence-artificielle-ia
- **Intégrations** : comptables (Pennylane, Sage 100, Odoo, Exact, Winbooks…,
  via Chift), Peppol, Codabox, Ponto, Batiprix, fournisseurs (Rexel, CEBEO).
  Pas de Zapier ni Make. [lu]
- **IA** : VertuoAI inclus sans surcoût : devis par dictée dans toute langue,
  avenants dictés, encodage des factures d'achat par photo. [lu]
- **Utilisateurs** : 13 000 utilisateurs, 3 568 PME, surtout Belgique, aussi
  France, Suisse, Luxembourg, Pays-Bas. [lu] https://www.vertuoza.com/
- **Lecture** : techniquement le plus propre (doc publique + MCP), mais
  surtout belge, cible PME plutôt que l'artisan seul.

### Sage Batigest (Batigest i7, Batigest Connect)

- **API** : aucune documentation publique trouvée ; Apideck le liste « sur son
  radar », non pris en charge. [lu]
  https://www.apideck.com/accounting-software/sage-batigest-connect
- Accès par connecteurs partenaires (Nuxilog pour le mobile, Alobees). [lu]
  https://apps.apple.com/fr/app/sage-batigest-via-nuxidev-6/id617712060
- Pas de connecteur natif Zapier, Make ou n8n selon un intégrateur. [supposé]
  https://tensoria.fr/blog/n8n-mistral-vs-make-zapier-btp-comparatif
- **IA** : Sage Copilot existe sur Sage Active et X3, rien trouvé sur
  Batigest. [lu, absence]
- **Utilisateurs** : « 18 000 entreprises BTP » sur Batigest Connect (page
  Sage citée par un résultat de recherche, page elle-même refusée à
  l'outil). [lu indirect]
  https://www.sage.com/fr-fr/produits/sage-batigest-connect/
- **Lecture** : base installée solide chez les PME, mais logiciel souvent
  installé sur poste : intégration lourde, par partenaire Sage.

### EBP Bâtiment (groupe Cegid depuis 2024)

- **API** : pas d'API bâtiment publique. Le SDK EBP « fonctionne uniquement
  avec nos logiciels en Abonnement Local » ; l'accès aux API demande un
  « contrat Privilège » (exemple de l'intégration Sellsy). [lu]
  https://ebp.com/wp-content/uploads/2024/09/ebp-ecosysteme-comptabilite-isv-2025.pdf ;
  https://go.sellsy.com/applications/ebp
- Connecté à des solutions mobiles (Praxedo, Alobees, Nuxilog), Tarifeo,
  Spigao. [lu] https://ebp.com/wp-content/uploads/2024/09/ebp-logiciel-batiment-elite-2025-bd.pdf
- Portail developers.ebp.com indisponible lors de la recherche. [lu]
- **IA** : rien de natif trouvé. [lu, absence]
- **Lecture** : même profil que Sage : partenariat éditeur obligatoire.

### Batappli (Systemlog, groupe Isagri)

- **API** : aucune sur le site ; un service tiers indique que l'éditeur ne
  publie ni API ni MCP. [lu] https://www.batappli.fr/ ;
  https://mcpservers.org/servers/cotlet-dev-integrations-batappli-api-mcp-server
  (résumé par la recherche, page refusée à l'outil)
- **IA** : Batappli.ia : description des travaux à l'oral ou à l'écrit, lignes
  chiffrées proposées ; 8 devis IA par mois (offre Devis), 16 (Artisan) ;
  relances automatiques. [lu]
- **Utilisateurs** : 13 000 utilisateurs actifs, plus de 5 000 clients. [lu]
- **Lecture** : fermé ; seule voie, l'automatisation de l'interface (risquée).

### Tolteck

- **API** : rien sur le site ni sur la page fonctionnalités ; « API » cochée
  sur GetApp sans détail. [lu / supposé]
  https://www.tolteck.com/fr-fr/fonctionnalites/ ;
  https://www.getapp.fr/software/2047145/tolteck
- Pas d'app Zapier (404). Catalogues Point.P et Cédéo, partenariat Pennylane
  pour la facture électronique. [lu]
- **IA** : rien trouvé. [lu, absence]
- **Utilisateurs** : non trouvé ; utilisateurs illimités inclus. [lu]

### Axonaut (généraliste TPE, pas spécifique BTP)

- **API** : clé API dans le compte (clé à molette > API > « Show your API
  key »). [lu] https://apps.make.com/axonaut
  Doc officielle à https://axonaut.com/api/v2/doc (page non lisible par
  l'outil). [supposé]
- **Ce qu'elle permet (via Make)** : clients (créer, modifier, lire,
  supprimer), devis (créer, lire, rechercher), factures (créer, modifier,
  lire), paiements (créer, rechercher), produits, projets, tâches,
  opportunités ; déclencheurs sur nouveaux clients, devis, factures. [lu]
- **Zapier** : 13 déclencheurs (nouveau devis, nouvelle facture…), 14 actions
  (créer devis, facture, paiement de facture…). [lu]
  https://zapier.com/apps/axonaut/integrations
- **IA** : IA sur les dépenses ; relances automatiques factures et devis. [lu]
  https://axonaut.com/
- **Utilisateurs** : 189 000 utilisateurs ; cite les « secrétaires
  indépendantes » parmi ses cibles. [lu]
- **Lecture** : le seul vraiment ouvert et prêt à l'emploi, mais peu
  d'artisans du bâtiment l'utilisent (pas d'ouvrages, pas de situations).
  Utile pour un prototype.

### Extrabat

- **API** : clé « User API Keys » créée par l'utilisateur sur myextrabat.com
  (article d'assistance). [lu indirect, via résultat de recherche]
  https://servicescompris.extrabat.com/comment-parametrer-cle-api-mailjet/
- Selon une agence, l'API donne accès aux bons de commande, articles, clients,
  factures, collaborateurs, agenda. [supposé]
  https://www.creatic-agency.fr/extrabat/
- Marketplace : Oodrive, Ringover, Urbassist, SimplyMeet, CFluide. [lu]
  https://www.extrabat.com/marketplace/
- **IA** : rien trouvé. [lu, absence]
- **Utilisateurs** : « + de 41 000 utilisateurs » ; fort chez les pisciniers ;
  à partir de 49 € HT/mois. [lu] https://www.extrabat.com/

### Onaya BTP (Orisha Construction)

- ERP modulaire, connecteurs à la carte (Chorus Pro, Attic+), prix sur
  devis ; pas d'API publique trouvée ; pas d'IA native. [lu / supposé]
  https://www.lafabriquedunet.fr/logiciel/onaya-btp ;
  https://www.orisha.com/fr/construction/besoin/btp-etude-prix-chiffrage
- Cible PME et ETI, pas l'artisan seul.

### Mediabat

- Pas d'API trouvée ; un comparatif cite « Mediabat IA » (chiffrage depuis une
  description en langage naturel), à partir de 37 €/mois. [supposé]
  https://tensoria.fr/blog/outils-ia-artisans-batiment-comparatif ;
  https://www.lafabriquedunet.fr/logiciel/mediabat

### Henrri

- Gratuit, sans API ni intégrations selon deux comparatifs. [supposé]
  https://www.ideal-investisseur.fr/comptabilite-en-ligne/henrri ;
  https://www.lafabriquedunet.fr/logiciel/henrri

### À noter : Cotlet, le contournement

Service qui fait agir des agents IA dans les logiciels **sans API**, via un
navigateur cloud où l'utilisateur se connecte lui-même ; cite Batappli et
Extrabat. [lu] https://cotlet.dev/
Techniquement possible, mais fragile (chaque mise à jour de l'interface casse
tout), probablement contraire aux conditions d'utilisation des éditeurs
[supposé], et délicat au regard du RGPD (session de l'artisan hébergée chez un
tiers).

## 3. Recommandation

### Par quels logiciels commencer

1. **Costructor** en premier. API et MCP vendus officiellement à l'artisan
   (10 €/mois en option, inclus en Premium), base annoncée la plus large
   (130 000 à 180 000), et c'est un acteur BTP. L'artisan active lui-même
   l'option et nous confie l'accès : pas besoin de l'accord de l'éditeur pour
   démarrer. Le MCP permet même de tester sans rien coder (Claude branché sur
   le compte d'un artisan pilote). À vérifier : la doc réelle, une fois un
   artisan volontaire abonné.
2. **Vertuoza** en second, pour sa doc publique et son MCP. Pertinent si BTP
   Performance a des membres qui l'utilisent (à compter dans le CRM) ; sinon,
   faible présence en France.
3. **Axonaut** comme terrain d'essai : API ouverte, Zapier et Make prêts,
   clé par client. Idéal pour monter un prototype du service (brouillon de
   devis, liste des devis à relancer, suivi des paiements) en quelques jours,
   même si peu d'artisans BTP l'utilisent.
4. **Extrabat** et **InterFast** : une clé API existe côté utilisateur, mais
   sans doc publique. Une demande de partenariat est à envisager plus tard
   (décision de Roland, aucun contact pris).
5. **Obat, Batappli, Tolteck, Sage Batigest, EBP** : fermés ou réservés aux
   partenaires. Pour eux, le service reste possible **sans API**, la
   secrétaire travaillant dans le logiciel avec un accès collaborateur que
   l'artisan lui ouvre. C'est la voie universelle, à garder comme base du
   modèle.

Avant de choisir, **compter dans le CRM de BTP Performance** (lecture seule)
quels logiciels utilisent les artisans : c'est ce chiffre, plus que les
chiffres marketing des éditeurs, qui doit décider de l'ordre. Citadelle,
logiciel interne de BTP Performance, pourrait servir de tableau de bord
commun (devis à relancer, impayés) alimenté par ces API.

### Les risques

- **Les éditeurs font eux-mêmes le service.** C'est le risque principal.
  Costructor (assistant qui crée, envoie, relance), InterFast (Copilote qui
  repère les devis à relancer), Obat et Vertuoza (devis dictés), Batappli
  (devis IA, relances automatiques) automatisent déjà une partie de ce qu'on
  voulait vendre. Notre valeur doit donc être **l'humain** : la secrétaire qui
  appelle le client, connaît le chantier, tranche, relance au téléphone, et
  qui travaille quel que soit le logiciel. L'IA de l'éditeur devient alors un
  outil de la secrétaire, pas un concurrent.
- **Dépendance aux éditeurs.** Une API peut changer de prix, de formule ou
  fermer (Costructor la vend en option : elle peut devenir plus chère). Un
  éditeur peut aussi refuser un partenariat ou lancer sa propre offre de
  secrétariat. Parade : ne jamais bâtir le service sur un seul logiciel, et
  garder le mode « secrétaire connectée au logiciel » qui ne dépend d'aucune
  API.
- **Couverture partielle.** Les gros logiciels de PME (Sage, EBP) et Obat sont
  fermés : l'automatisation ne couvrira qu'une partie des clients.
- **Contournements (Cotlet, robots navigateurs)** : fragiles, conditions
  d'utilisation, RGPD. À éviter pour un service payant.
- **Données et RGPD** : avec une clé API, on accède à tout le fichier clients
  de l'artisan. Il faudra un contrat de sous-traitance (article 28 du RGPD)
  avec chaque artisan, et des clés stockées hors du dépôt.

## 4. Ce qui reste à vérifier

- Le contenu réel des docs Costructor (derrière connexion) et Vertuoza
  (https://rest-api.vertuoza.app/docs, à ouvrir dans un navigateur) :
  brouillon de devis possible ? lignes d'ouvrage ? webhooks ?
- Les conditions d'accès API chez InterFast et Extrabat.
- La répartition des logiciels utilisés par les artisans du CRM.
