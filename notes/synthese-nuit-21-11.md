# Synthèse de la nuit du 21 au 22/11/2026

Pour Roland, au réveil. Cinq recherches ont tourné cette nuit, en lecture
seule, sans contacter personne. Le détail, sources comprises, est dans
`notes/veille/` :

| Note | Contenu |
| --- | --- |
| `veille/france.md` | environ 70 acteurs français, six familles, prix avec sources |
| `veille/etranger.md` | 44 acteurs (États-Unis, Australie, Allemagne, Royaume-Uni, Canada), 10 idées à importer |
| `veille/api-logiciels.md` | 13 logiciels de devis : API, IA, recommandation |
| `veille/marche-juridique.md` | taille du marché, prix, modèle économique, points juridiques |
| `veille/crm-demande.md` | ce que dit le CRM de BTP Performance (chiffres agrégés, citations anonymes) |

Les chiffres marqués « supposé » dans ces notes sont des calculs ou des
hypothèses de Claude, pas des faits.

## 1. Ce qu'on a appris, en sept points

1. **Personne en France ne pilote le parcours complet de l'artisan**, du
   premier appel au paiement. Le marché est éclaté en trois mondes : des
   secrétaires indépendantes seules (25 à 50 € HT de l'heure), des logiciels
   et des IA qui font chacun un morceau, et des formations longues pour les
   conjointes, sans suivi après.
2. **La formule « bras droit » n'a pas de concurrent**, ni en France ni à
   l'étranger. L'ADEA des CMA forme en 18 mois (jusqu'à 8 260 €), le GEAB de
   la CAPEB est le seul titre du bâtiment, les réseaux FFB (88 groupes,
   3 500 femmes) rassemblent : personne n'outille et ne suit la conjointe dans
   la durée.
3. **Le modèle « tout compris » existe et se vend aux États-Unis** :
   WorkHero met une office manager du métier plus des agents IA dans les
   logiciels du client, pour **1 000 à 3 000 $ par mois**, sans engagement
   (prix vérifié sur leur site). En France, les forfaits humains complets
   vont de 800 à 2 500 € HT par mois.
4. **Les communautés de conjointes marchent ailleurs** : TradieWives en
   Australie (environ 45 000 membres, académie payante, une banque en
   partenaire), UnternehmerFrauen im Handwerk en Allemagne. Rien d'aussi
   visible en France. C'est ton axe « femmes des dirigeants », et le vivier
   des futures secrétaires.
5. **La menace, c'est l'IA des éditeurs.** Costructor crée, envoie et relance
   les devis ; InterFast repère les devis à relancer ; Obat, Vertuoza, Boby
   (plus de 20 000 utilisateurs) font le devis dicté pour 15 à 50 € par mois.
   Clotilde.ai se présente comme « secrétaire virtuelle ». **La tâche se
   banalise ; ce qui reste, c'est l'humain du BTP responsable du résultat.**
6. **Le CRM penche pour le « bras droit ».** Sur 25 prospects reçus depuis
   fin octobre, 6 ont leur femme ou un proche dans l'entreprise, et c'est
   souvent elle qui décide avec lui. Les artisans parlent d'organisation, de
   trésorerie et de manque de temps, presque jamais de factures ni
   d'impayés : **ces douleurs sont à faire émerger**, pas à supposer.
7. **Le marché est grand** : 621 803 entreprises du bâtiment de 10 salariés
   au plus, dont 164 153 de 1 à 10 salariés (CAPEB, fin 2020). Un chef
   d'entreprise du bâtiment passe 16 h de gestion sur 52 h par semaine
   (Asterès, 2024). Les retards de paiement atteignent 14 jours pour les
   entreprises de moins de 3 salariés (Banque de France, 2024).

## 2. Mes propositions

### Le positionnement

**« Des personnes du bâtiment, responsables de votre bureau, outillées par
l'IA. »** On vend un résultat (« vos devis sont relancés jusqu'à réponse,
vos factures partent le jour même »), pas des heures. On est les seuls à
combiner les quatre : humain du BTP, logiciel avec IA, formation de la
conjointe, communauté.

### L'ordre de lancement

1. **D'abord le « bras droit »**, auprès des membres de BTP Performance :
   pas de concurrent, le meilleur signal dans le CRM, le même canal de vente,
   une meilleure marge, peu de monde à embaucher.
2. **En parallèle, un pilote « tout compris » avec 5 à 10 artisans**, à la
   main, piloté par Gaëlle, pour mesurer le vrai temps passé par artisan.
   C'est ce chiffre qui fixera le prix définitif.
3. **Une communauté gratuite des conjointes du BTP**, qui sert à la fois
   d'acquisition, de formation et de vivier de recrutement.

### Les prix de départ, à tester (calculs supposés, détail dans `marche-juridique.md`)

| Formule | Prix | Repères |
| --- | --- | --- |
| **Bras droit** | formation de départ 800 à 1 500 € HT (finançable si l'organisme est Qualiopi), puis **99 à 199 € HT par mois** | ADEA jusqu'à 8 260 € ; logiciels avec IA 15 à 130 € par mois |
| **Tout compris** | **450 à 600 € HT par mois** pour 1 à 5 salariés, par paliers de volume, plus 300 à 800 € de mise en route | freelance 25 à 50 € de l'heure ; forfaits 800 à 2 500 € ; WorkHero 1 000 à 3 000 $ |

Le point mort du « tout compris » est d'environ **26 artisans** à 490 € par
mois, si une secrétaire en suit 18. Il monte à **65 artisans** si tout se
fait à la main à 390 €. **L'outil de Romain est ce qui fait passer une
secrétaire de 12 à 25 artisans** : c'est lui qui fait la marge.

### L'outil, et donc le brief de Romain

- **On démarre sans API** : la secrétaire travaille dans le logiciel de
  l'artisan avec un accès collaborateur. C'est la seule voie qui marche avec
  tous les logiciels.
- **API dans cet ordre** : Costructor (API et MCP vendus aux artisans,
  10 € par mois), puis Vertuoza (documentation publique). Obat, Batappli,
  Tolteck, Sage et EBP sont fermés ou réservés aux partenaires.
- **Deux briques sûres à confier à Romain** : la visite de chantier sur
  l'appli (liste de contrôle, photos, dictée, fiche structurée) et **un
  tableau de bord commun** (devis à relancer, factures à émettre, impayés),
  qui pourrait être relié à Citadelle.
- **Devenir partenaire certifié des éditeurs** : Obat envoie déjà ses
  clients débordés vers des assistantes humaines. C'est un canal
  d'acquisition gratuit.

### Les idées à prendre

- Un diagnostic gratuit, puis un mois d'essai sans engagement.
- Un binôme de secours pour chaque secrétaire : la peur numéro un face à une
  indépendante seule, c'est le trou pendant ses congés.
- Afficher ses prix (c'est rare chez les humains, et rassurant).
- Un résumé envoyé à l'artisan, à valider en un clic, par WhatsApp ou SMS :
  l'artisan ne change pas d'appli.
- Plus tard, un standard « humain en journée, message le soir et le
  week-end », qui reste compatible avec la décision « pas d'IA vocale ».

## 3. Les points juridiques qui peuvent faire mal

À faire valider par un avocat ; la liste complète est en fin de
`marche-juridique.md`.

1. **Les relances de paiement** peuvent tomber sous la réglementation du
   **recouvrement amiable pour le compte d'autrui** (articles R124-1 et
   suivants du Code des procédures civiles d'exécution) : déclaration au
   procureur, assurance, compte dédié. Il faudra savoir où passe la frontière
   entre un rappel de facture et un recouvrement.
2. **Une annonce d'emploi ne peut mentionner ni le sexe ni la situation de
   famille** : écrire « conjointe d'artisan » dans une annonce est interdit.
   On peut communiquer vers elles (communauté, réseau) sans l'écrire dans
   l'offre.
3. **Des secrétaires indépendantes risquent d'être requalifiées en
   salariées**, d'autant plus avec la directive européenne sur les
   plateformes (transposition au plus tard le 2 décembre 2026).
4. **Le statut de conjoint collaborateur change au 1er janvier 2027** pour
   ceux déjà en place. C'est un sujet d'actualité pour parler aux couples
   d'artisans, mais le service ne doit pas donner de conseil juridique sur le
   choix du statut.
5. **La formation « bras droit »** ne peut être financée (OPCO, CPF, FAFCEA)
   que par un organisme certifié Qualiopi. Si BTP Performance l'est, elle
   peut la porter.

## 4. Le nom : où on en est

Vérifiés cette nuit à l'INPI (premier tri, à confirmer par un conseil en
propriété industrielle) :

| Nom | .fr | INPI | Avis |
| --- | --- | --- | --- |
| **Faîtière** | faitiere.fr libre | 3 marques, toutes pour du vin | **le plus dégagé**, et le sens colle (la tuile qui couronne et protège ; l'organisation qui chapeaute) |
| **Bastidelle** | bastidelle.fr et .com libres | 2 marques de vin, expirées | dégagé ; rappelle Citadelle par la terminaison et la bastide fortifiée |
| **Citadela / Citadelia** | libres | **299 marques « Citadel… »**, dont en services et logiciels | terrain encombré, risque d'opposition |
| **Archère** | archere.fr libre | proche de plusieurs marques « Archer » en logiciels et services | risque moyen |
| **Armature** | larmature.fr libre | beaucoup de marques du béton armé, dont en services | risque moyen à fort |

Noms à plusieurs mots, passés ensuite (recherche de l'expression exacte) :

| Nom | INPI | Avis |
| --- | --- | --- |
| **Tiré au Cordeau** | aucune marque trouvée | dégagé (tireaucordeau.fr et .com libres) |
| **La Poutre Maîtresse** | aucune marque trouvée | dégagé (lapoutremaitresse.fr libre) |
| **Libre d'Œuvre** | aucune marque trouvée | dégagé (libredoeuvre.fr et .com libres) |
| **L'Aide de Camp** | **une marque « AIDE DE CAMP » enregistrée en classe 35** | bloqué, à écarter |

Une recherche sur l'expression exacte peut manquer des marques proches :
c'est un premier tri. Le détail est dans `notes/noms-evocateurs.md`.

## 5. Ce que j'attends de toi

1. **L'ordre de lancement** : « bras droit » d'abord, avec un pilote « tout
   compris » en parallèle ?
2. **Les prix de départ à tester** : ces fourchettes te paraissent-elles
   tenables pour tes membres ?
3. **BTP Performance est-elle certifiée Qualiopi ?** (pour financer la
   formation « bras droit »)
4. **Deux questions à ajouter au diagnostic ou au R1** de BTP Performance :
   « Qui fait l'administratif aujourd'hui ? » et « Combien d'heures par
   semaine ? ». C'est une modification du CRM, donc à faire depuis le
   projet CRM et non d'ici.
5. **Le nom** : en un mot féminin, Faîtière et Bastidelle sont en tête ;
   en plusieurs mots, Tiré au Cordeau, La Poutre Maîtresse et Libre d'Œuvre
   sont dégagés. Lesquels gardes-tu pour la short-list ?
6. **Le brief de Romain** : je le rédige sur la visite de chantier et le
   tableau de bord ?
