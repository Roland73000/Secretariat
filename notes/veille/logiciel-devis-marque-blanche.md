# Veille : acheter, louer ou construire un logiciel de devis et factures BTP ?

Recherche du 22/11/2026, lecture publique seulement (sites des éditeurs,
pages officielles, comparatifs, places de marché). Aucun compte, aucun essai,
aucun formulaire, aucun contact, aucun téléchargement.

Question de Roland : « Est-ce si compliqué de créer notre propre logiciel de
devis et factures pour le BTP ? J'ai cru comprendre qu'on peut acheter ou
louer sur internet l'architecture de ces logiciels, un peu en marque
blanche. Il faudrait en être sûr. »

Légende : **[lu]** = vu sur la page citée ; **[supposé]** = déduit, source
indirecte ou tierce non vérifiée. Ce qui est déjà établi dans
`notes/creer-notre-logiciel.md`, `notes/veille/api-logiciels.md` et
`notes/veille/doublons-partenaires.md` n'est pas répété.

## En bref

1. **Oui, « l'architecture » s'achète ou se loue, mais pas un logiciel BTP
   complet prêt à notre nom.** Aucun éditeur BTP français (Obat, Tolteck,
   Batappli, Extrabat, Costructor…) n'affiche d'offre de marque blanche
   publique. Ce qui existe : des programmes de revente (on vend leur
   logiciel, sous leur nom, contre une remise), et des briques en marque
   blanche (surtout la facture électronique).
2. **La partie la plus redoutée, la facture électronique, se loue déjà en
   marque blanche, pour presque rien.** Des plateformes agréées (SuperPDP,
   B2Brouter, Iopole) vendent une API aux éditeurs. Chez SuperPDP : 0,01 € HT
   par facture, sans volume minimum. On n'a pas besoin de devenir plateforme
   agréée.
3. **Une base libre existe pour le BTP : Dolibarr.** Licence libre (GPL),
   modules BTP vendus quelques centaines d'euros (situations de travaux,
   ouvrages, retenue de garantie selon le module), et un module de facture
   électronique branché sur SuperPDP. On peut l'héberger sous notre marque,
   mais pas sous le nom « Dolibarr ».
4. **Les codes sources vendus sur internet (CodeCanyon) coûtent 50 à 150 $,
   mais ne sont pas des logiciels français.** Ni situations de travaux, ni
   retenue de garantie, ni facture électronique française, et une licence
   « étendue » obligatoire dès qu'on fait payer les utilisateurs. Bon pour
   s'inspirer, pas pour vendre à des artisans.
5. **Ce qui reste difficile, ce n'est pas la technique, c'est le métier BTP
   et la durée** : situations, retenue de garantie, autoliquidation, TVA
   multiple, appli mobile, support, et dix ans d'archivage à garantir.
   Ordre de grandeur supposé pour une première version sérieuse : 40 000 à
   120 000 € et 4 à 9 mois, puis 15 à 20 % par an de maintenance.
6. **Si on devient éditeur, on n'est pas « immatriculé »**, mais on doit être
   raccordé à une plateforme agréée et produire des factures conformes (dont
   les nouvelles mentions obligatoires). On porte la responsabilité du
   logiciel vis-à-vis de nos clients.
7. **Racheter un petit éditeur est une vraie option** : une annonce publique
   (septembre 2026) propose un éditeur SaaS de facturation électronique très
   présent dans le BTP, environ 2 000 clients et 650 k€ de chiffre
   d'affaires. Prix non affiché ; les petits SaaS se vendent souvent 1,5 à
   5 fois leur revenu annuel récurrent.

## 1. Offres de marque blanche, OEM ou revente de logiciels de devis et factures

### En France, éditeurs BTP

| Éditeur | Ce qu'on a trouvé | Source | Étiquette |
| --- | --- | --- | --- |
| **Costructor** | Partenariat avec lien dédié (CAPEB), pas de marque blanche publique (déjà établi) | https://www.capeb.fr/partenaires-commerciaux/costructor | [lu] |
| **Obat** | Partenariats CAPEB et distributeurs (Warmango), aucun programme de revente ni marque blanche publié | https://www.capeb.fr/partenaires-commerciaux/obat ; https://www.obat.fr/blog/obat-lance-son-partenariat-avec-le-distributeur-de-produits-du-batiment-en-ligne-warmango | [lu] (absence) |
| **Extrabat** | « Un réseau de partenaires revendeurs » en France, Espagne, Allemagne ; conditions non publiées ; pas de marque blanche | https://www.batiweb.com/fabricant/logiciel-extrabat-5821625 | [lu indirect] |
| **Tolteck, Batappli, Organilog, Henrri** | Rien trouvé sur une marque blanche ou une revente | recherche « marque blanche » sur ces noms, sans résultat | [lu] (absence) |

**Conclusion** : chez les éditeurs BTP, la marque blanche **se négocie** au
cas par cas, si elle existe. Rien n'est en vente « sur étagère ».

### En France, éditeurs généralistes

- **Sellsy** (gestion commerciale, devis, factures, pas spécialisé BTP) :
  programme revendeur public. Remise de 30 % la première année de chaque
  client, puis jusqu'à 45 % selon le chiffre d'affaires du revendeur ;
  statuts « Enregistré » et « Certifié ». C'est de la revente sous la marque
  Sellsy, pas une marque blanche. [lu]
  https://go.sellsy.com/informations-legales/bareme-remise-programme-revendeur ;
  https://go.sellsy.com/informations-legales/conditions-generales-programme-revendeur
  Sellsy propose aussi aux éditeurs une « intégration en marque blanche ou
  grise » (brancher son logiciel dans Sellsy), ce qui n'est pas la même
  chose. [lu] https://go.sellsy.com/sellsy-partner-program
- **Axonaut, Facture.net** : aucun programme revendeur ni marque blanche
  trouvé. [lu] (absence)
- **DoliCloud** (hébergeur officiel de Dolibarr) : programme revendeur
  public. Commission de 25 % (premier client, formule Basic) à 40 % (plus de
  10 clients Premium) ; on ne peut pas vendre sous le prix public ; **pas de
  nom de domaine à nous** (adresse en « .with.dolicloud.com ») ; pas
  d'exclusivité ; le revendeur est responsable du RGPD envers ses clients.
  [lu] https://dolicloud.com/en-become-a-dolicloud-reseller.php
- **Odoo** : programme partenaire, jusqu'à 20 % de commission sur Odoo
  Enterprise. [lu, via résultat de recherche] https://www.odoo.com/fr_FR/become-a-partner

### À l'étranger

- **Invoice Ninja** (facturation, américain, code ouvert sous licence
  Elastic 2.0) : la licence « marque blanche » (environ 40 $ par an en 2026)
  retire le logo Invoice Ninja des pages vues par les clients, pas de
  l'administration. **Revendre l'application en SaaS demande un contrat
  commercial** avec Invoice Ninja LLC. Une ancienne offre « revendeur marque
  blanche » (500 $ par an plus 10 % du revenu ou 1 $ par utilisateur et par
  mois) figure sur une copie tierce, à vérifier. [supposé, résumés de
  recherche et forum] https://invoiceninja.github.io/en/self-host-white-labeling ;
  https://forum.invoiceninja.com/t/white-label-self-host/1014
  Couverture BTP : aucune (pas de situations françaises, pas de facture
  électronique française). [supposé]
- **Logiciels de facturation BTP américains** (Knowify, Siteline, Archdesk,
  Buildern) : gèrent la facturation à l'avancement et la retenue de garantie
  à l'américaine (formulaires AIA), **aucun programme de marque blanche
  trouvé**, et rien d'adapté au droit français. [lu] (absence)
  https://knowify.com/construction-invoicing-software/ ;
  https://www.siteline.com/blog/best-construction-billing-software-for-subcontractors

## 2. Codes sources et modèles à acheter (CodeCanyon et autres)

- **Ce qu'on trouve** : des scripts « SaaS de facturation » multi-clients en
  PHP (Laravel), par exemple « Invoice SaaS Management System »,
  « InfyInvoices-SaaS », « PaySuite », vendus environ 19 à 149 $. [lu, via
  résultats de recherche] https://codecanyon.net/search/saas%20billing ;
  https://codecanyon.net/search/invoicing%20script
- **La licence** : la licence « normale » interdit l'usage dans un produit
  vendu ; il faut la licence « étendue » si l'utilisateur final paie, et une
  licence ne couvre **qu'un seul produit**. [lu]
  https://codecanyon.net/licenses/standard
- **Qualité** : sur un de ces scripts, des acheteurs se plaignent de
  fonctions annoncées et jamais ajoutées « depuis des années » (virement
  bancaire, envoi de facture par courriel). [lu, via résumé de la page de
  commentaires] https://codecanyon.net/comments/31637257
- **Ce qu'on obtient vraiment** : une base d'écrans (clients, produits,
  factures, abonnements), en anglais, pensée pour un indépendant ou une
  agence. **Pas** d'ouvrages, de situations, de retenue de garantie,
  d'autoliquidation, de TVA par attestation, ni de facture électronique
  française. [supposé, d'après les descriptifs]
- **Risques** : un vendeur seul qui peut disparaître ; failles de sécurité à
  notre charge ; aucune garantie de conformité française ; il faudrait
  réécrire l'essentiel pour le BTP. [supposé]

**Verdict** : utile pour un prototype ou pour s'inspirer, pas comme base
d'un produit vendu à des artisans.

## 3. Les bases libres (open source)

| Base | Licence | Revendre en SaaS sous notre marque ? | BTP français | Facture électronique |
| --- | --- | --- | --- | --- |
| **Dolibarr** | GPL [supposé, licence connue ; DoliCloud cite « la licence GPL de Dolibarr » [lu]] | Oui pour le code ; le nom « Dolibarr » est une marque, interdit pour un concurrent [lu, résumé DoliCloud] | Modules payants : « Pack DoliConstruction v2 » (ATM Consulting, 950 € HT : ouvrages, situations de travaux, avenants ; retenue de garantie non mentionnée) [lu] ; module « Invoice situation » (situations avec retenue de garantie, compatible autoliquidation) [lu, résumé] | Module officiel « EInvoicing », expérimental, Dolibarr 24 et plus, format CII, branché sur **SuperPDP** et EsaLink [lu] |
| **Odoo Community** | LGPL v3 ; Odoo Enterprise est propriétaire, réservé aux abonnés [lu, résumé] | Possible avec Community seulement, d'après des forums (pas un avis juridique) [supposé] | Rien de BTP natif trouvé ; des modules tiers existent [supposé] | Odoo se dit plateforme agréée, gratuite pour ses utilisateurs [lu, via résultat] ; inscription DGFiP au 15/04/2026 selon un site tiers [supposé] |
| **Invoice Ninja** | Elastic 2.0 (pas vraiment libre) | Non sans contrat commercial [supposé] | Non | Non (pas française) [supposé] |
| **InvoicePlane** | Code MIT ; nom et logo interdits ; les auteurs déconseillent la revente [lu, résumé forum] | Possible sous un autre nom, mal vu [supposé] | Non | Non |
| **Akaunting** | Business Source License 1.1 depuis 2023, donc **pas libre** pour un usage commercial [lu, résumé] | Non sans accord [supposé] | Non | Non |
| **ERPNext** | GPL v3 ; nom et logo protégés [lu, résumé] | Probablement, sous un autre nom ; à faire valider par un juriste [supposé] | Non | Non trouvé |

Sources : https://www.dolistore.com/en/modules/1502-Pack-DoliConstruction-v2.html ;
https://www.dolistore.com/en/modules/1067-Invoice-situation.html ;
https://wiki.dolibarr.org/index.php/Module_EInvoicing_(Generic,_FR,_...) ;
https://www.odoo.com/licenses ; https://odoo.com/electronic-invoicing/france ;
https://akaunting.com/license ; https://community.invoiceplane.com/t/topic/6903 ;
https://frappe.io/erpnext/license-trademark

**Lecture** : **Dolibarr est la seule base libre française qui coche à la
fois le BTP (par modules) et la facture électronique.** Mais c'est un ERP
généraliste : l'ergonomie est celle d'un logiciel de gestion, loin d'une
appli mobile simple pour un artisan. Le module de facture électronique est
encore « expérimental ». [lu / supposé]

## 4. Les briques à assembler si on construit

| Brique | Qui | Ce qu'elle enlève | Prix public | Source |
| --- | --- | --- | --- | --- |
| **Facture électronique (plateforme agréée)** | **SuperPDP** | L'envoi, la réception, la transmission à l'administration, les statuts ; API REST, webhooks, bac à sable | 0,01 € HT par facture jusqu'à 10 000 par mois ; 2 € par vérification d'entreprise ; minimum 10 € HT par an ; offre « marque grise » (notre marque, mais SuperPDP visible à l'inscription), marque blanche sur demande [lu] | https://www.superpdp.tech/tarifs |
| | **B2Brouter** | Pareil, en **marque blanche** (invisible pour nos clients) ; SDK, OpenAPI ; plateforme agréée, ISO 27001 [lu] | Non publié sur la page [lu] | https://www.b2brouter.net/fr/edocsync-pdp/ |
| | **Iopole** | Pareil, « API d'abord », marque blanche, archivage, cachet électronique [supposé, sources en partie sponsorisées] | Sur devis [supposé] | https://www.appvizer.fr/finance-comptabilite/conformite/iopole |
| | **Ecosio** | Partenariat marque blanche pour éditeurs [lu, résumé] | Non trouvé | https://ecosio.com/fr/?p=86085 |
| **Liste officielle des plateformes** | DGFiP | Vérifier qu'un fournisseur est bien immatriculé (mise à jour le 16/11/2026 ; listes en ODS, XLSX, PDF) [lu] ; 101 premières plateformes publiées le 16/01/2026 [lu, via résultat] | Gratuit | https://www.impots.gouv.fr/je-consulte-la-liste-des-plateformes-agreees |
| **Génération Factur-X** | Bibliothèque libre « factur-x » (Akretion, licence BSD) | Fabriquer le PDF avec son XML, et le vérifier contre les schémas officiels [lu, résumé] | Gratuit | https://github.com/akretion/factur-x |
| **Signature électronique du devis** | Yousign | La signature du devis en ligne ; bac à sable gratuit ; revente possible par les partenaires [lu, résumé] | Sur devis [lu, résumé] | https://yousign.com/fr-fr/prix-api ; https://yousign.com/fr-fr/partenaires |
| **Prélèvement SEPA** | GoCardless | Encaisser acomptes et factures par prélèvement | 1 % + 0,20 € par transaction, plafonné à 2 € (formule Standard) [lu, résumé de la page tarifs] | https://gocardless.com/fr-fr/tarifs |
| **Carte bancaire, lien de paiement** | Stripe | Payer en ligne une facture | Tarif France non relevé [lu] (absence) | https://stripe.com/fr/pricing |

**Lecture** : avec ces briques, **la facture électronique, la signature et le
paiement ne sont plus un problème**. Ce qui reste à construire, c'est le
cœur métier : le devis BTP, les situations, la retenue de garantie, la TVA,
les avoirs, l'archivage, l'export comptable, l'appli mobile. [supposé]

## 5. Les obligations qui restent à notre charge si on devient éditeur

- **Pas d'immatriculation pour nous**, mais un **raccordement obligatoire à
  une plateforme agréée**. Une « solution compatible » (logiciel de
  facturation, outil spécifique BTP…) « n'est pas immatriculée par
  l'administration » et ne peut ni transmettre les factures à
  l'administration, ni servir d'intermédiaire officiel ; elle doit être
  raccordée à une plateforme agréée pour porter le label « Solution
  compatible ». [lu] https://www.impots.gouv.fr/presentation-des-logos-plateforme-agreee-et-solution-compatible
- **Mentions obligatoires nouvelles** : numéro SIREN du client, catégorie
  d'opération (biens, services ou mixte), mention « option pour le paiement
  de la taxe d'après les débits » si c'est le cas, adresse de livraison si
  différente ; une partie au 1er septembre 2026, une partie au 1er septembre
  2027, les sources ne s'accordent pas tout à fait. [lu, résumé, à vérifier
  sur impots.gouv.fr] https://www.impots.gouv.fr/facturation-electronique-donnees-de-facture ;
  https://www.economie.gouv.fr/entreprises/factures-mentions-obligatoires
- **Archivage** : 10 ans (Code de commerce, article L123-22) et 6 ans (Livre
  des procédures fiscales, article L102 B) ; en pratique 10 ans ; la facture
  électronique doit rester dans sa forme d'origine, intègre et lisible
  (« piste d'audit fiable »). [lu, résumé]
  https://bofip.impots.gouv.fr/bofip/8877-PGP.html/identifiant=BOI-CF-COM-10-10-30-10-20180720 ;
  https://www.legalstart.fr/fiches-pratiques/facturation/conservation-facture/
- **Certifications** : aucune certification obligatoire trouvée pour un
  logiciel de facturation (hors logiciels de caisse). Le label « Solution
  compatible » est facultatif mais devient un argument de vente. [supposé]
  Des sites tiers parlent d'archivage « NF 461 » chez les plateformes. [supposé]
- **Responsabilité** : envers chaque artisan client (une facture fausse,
  une situation mal calculée, des données perdues), et **sous-traitant RGPD**
  de ses données clients (contrat article 28). [supposé, cohérent avec
  `notes/veille/api-logiciels.md`]
- **Maintenance réglementaire à vie** : formats de la réforme, lois de
  finances, taux de TVA. [supposé]

## 6. Ordres de grandeur

### Développer soi-même

- Logiciel de gestion sur mesure (missions, temps, facturation) pour un
  cabinet comptable : **40 000 à 110 000 € HT** en 2026. [lu, résumé]
  https://kolonell.com/fr/blog/logiciel-gestion-cabinet-expertise-comptable-sur-mesure-prix-2026
- Première version sur mesure : **3 à 6 mois** ; maintenance **10 à 20 %**
  du coût initial par an, plus l'hébergement. [lu, résumé, chiffres
  britanniques] https://mecanik.dev/fr/posts/custom-software-development-cost-budgeting-guide/
- Pour un logiciel BTP vendu à plusieurs centaines d'artisans (situations,
  appli mobile, multi-clients, support), il faut viser le haut de la
  fourchette, voire plus. [supposé]

### Licence de marque blanche

- **Aucun prix public trouvé** chez un éditeur BTP. Repères : Sellsy laisse
  30 à 45 % au revendeur ; DoliCloud 25 à 40 % ; Invoice Ninja quelques
  centaines de dollars par an plus un pourcentage (ancienne offre, à
  vérifier). [lu / supposé, voir section 1]

### Racheter un petit éditeur

- Annonce Fusacq (mise à jour le 11/09/2026) : éditeur SaaS de facturation
  électronique, Nord-Ouest, cible TPE, indépendants, « professionnels de
  terrain », **forte présence BTP**, près de 2 000 clients, 650 k€ de chiffre
  d'affaires 2025, EBE 90 k€, 6 salariés, 94 % de revenus récurrents ;
  cession de 100 % ; fondateur prêt à rester ; prix non affiché. [lu]
  https://www.fusacq.com/vente-entreprise-editeur-saas-de-facturation-electronique-nord-ouest,91065_ch_
- Multiples observés en 2025 : médiane d'environ **4,2 fois le revenu annuel
  récurrent**, quart inférieur 1,5 à 3 fois. [lu, résumé, source américaine]
  https://softwareequity.com/blog/software-ma-by-product-category/
  Appliqué à l'annonce ci-dessus : de l'ordre de **1 à 3 millions d'euros**.
  [supposé, calcul de l'auteur]
- La réforme pousse les petits éditeurs à se regrouper ou à vendre : d'autres
  occasions viendront probablement. [supposé]

## Tableau comparatif des options

| Option | Coût de départ | Délai | Maîtrise | Risque réglementaire pour nous | Couverture BTP |
| --- | --- | --- | --- | --- | --- |
| **Marque blanche d'un éditeur BTP** | Inconnu, à négocier (frais de mise en place, prix par utilisateur, volume) | 2 à 6 mois de négociation [supposé] | Faible : l'éditeur décide | Faible : la conformité reste chez lui | Complète |
| **Revente d'un éditeur (Sellsy, DoliCloud…)** | Quasi nul ; 25 à 45 % de remise | Quelques semaines | Très faible ; pas notre nom | Faible | Partielle ou nulle |
| **Code acheté (CodeCanyon)** | 50 à 150 $, puis tout à refaire | 6 à 12 mois pour l'adapter [supposé] | Totale, mais sur un code inconnu | Élevé : tout à notre charge | Nulle au départ |
| **Base libre (Dolibarr + modules)** | Modules : environ 1 000 € ; adaptation et ergonomie : 20 000 à 60 000 € [supposé] | 3 à 6 mois [supposé] | Forte (code ouvert) | Moyen : module de facture électronique expérimental, raccordé à SuperPDP | Bonne via modules, ergonomie lourde |
| **Assemblage de briques** (PA en API, Factur-X, Yousign, GoCardless) + cœur maison | 40 000 à 120 000 € [supposé] | 4 à 9 mois [supposé] | Totale | Moyen : la transmission est sous-traitée, la justesse des factures est à nous | À construire |
| **Développement complet** (y compris devenir plateforme agréée) | Plusieurs centaines de milliers d'euros [supposé] | 1 à 2 ans [supposé] | Totale | Très élevé : cahier des charges DGFiP, tests d'interopérabilité | À construire |
| **Rachat d'un petit éditeur** | 1 à 3 M€ pour un éditeur de 650 k€ de revenu [supposé] | 6 à 12 mois (audit, négociation) [supposé] | Totale, avec une équipe et des clients | Repris en l'état : à auditer | Selon l'éditeur |

## Ce qu'en pense l'auteur de la veille

1. **La réponse à Roland est « oui, mais en pièces détachées ».** On ne
   trouve pas un logiciel BTP prêt à notre nom en vente libre ; on trouve en
   revanche la pièce la plus réglementée (la facture électronique) en
   location, à un centime par facture. Construire le « socle » décidé par le
   projet (clients, devis, facture, obligations, export) devient donc un
   projet de taille raisonnable, pas un chantier de dix ans.
2. **Si l'on construit un jour, partir de l'assemblage de briques**, avec une
   plateforme agréée en marque blanche (SuperPDP pour démarrer pas cher,
   B2Brouter si l'on veut être invisible), plutôt que d'un code acheté sur
   CodeCanyon. **Dolibarr** mérite une démonstration avec Romain : c'est le
   raccourci le plus rapide pour un prototype BTP, si son ergonomie passe
   auprès des artisans.
3. **Avant de choisir, poser la question de la marque blanche à deux ou
   trois éditeurs BTP** (Costructor en premier, Extrabat qui a déjà un réseau
   de revendeurs) : volume minimum, prix par utilisateur, API, réversibilité
   des données. Sans réponse chiffrée, le tableau ci-dessus reste incomplet.
4. **Garder le rachat en tête pour plus tard** : l'annonce Fusacq montre que
   des éditeurs de facturation présents dans le BTP sont à vendre en 2026.
   C'est l'option la plus chère au départ, mais la seule qui apporte d'un
   coup un logiciel conforme, une équipe et des clients. À regarder au seuil
   de 300 à 500 artisans déjà évoqué.

## Ce qui reste à vérifier

- Les conditions réelles de marque blanche chez Costructor, Extrabat, Obat
  (nécessite un contact, décision de Roland).
- Les tarifs B2Brouter, Iopole, Yousign (sur devis).
- La présence de SuperPDP, B2Brouter, Iopole et Odoo dans le fichier
  officiel de la DGFiP (à ouvrir à la main).
- La licence exacte de Dolibarr et la gestion de la retenue de garantie dans
  le Pack DoliConstruction (démonstration).
- Le calendrier exact des nouvelles mentions obligatoires (2026 ou 2027).
