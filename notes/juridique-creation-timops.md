# La création de Timops : parts, holdings, SAS ou SARL

Note de travail du 26/11/2026, après la visio Roland et Romain. Elle explique
le raisonnement, pas seulement les réponses. **Ce n'est pas l'avis d'un
avocat** : chaque point marqué « à faire valider » passe par le service
juridique de Dougs (rendez-vous de la semaine prochaine) ou par un
fiscaliste, avant de signer les statuts.

Le schéma discuté :
- Roland : 70 % (ou 75 %), en direct ou via une holding à créer ;
- Romain : 24 % à 30 %, via sa holding bulgare ;
- Roland a proposé 30 % au plus ; Romain parle de 24 % ou moins.

---

## 1. La règle des 25 % : elle existe, mais elle ne joue qu'à la revente

### Ce que Romain a trouvé

Il y a bien un seuil de 25 %, et il est réel. Mais il ne touche **ni la
détention, ni les dividendes** : il touche **la plus-value, le jour où la
holding de Romain revend ses parts de Timops**.

Deux textes se combinent :

1. **L'article 244 bis B du CGI** : quand un non-résident (personne ou
   société) vend des titres d'une société française, la France taxe la
   plus-value si ses droits dans les bénéfices ont dépassé **25 %** à un
   moment quelconque des cinq dernières années.
2. **La convention fiscale France-Bulgarie de 1987** : en principe, une
   plus-value est taxée dans le pays de celui qui vend (la Bulgarie). Mais
   le protocole de la convention (paragraphe 5) laisse la France taxer les
   gains sur une **« participation substantielle »**, avec un seuil de
   25 %. Le rapport du Sénat de 1987 sur la convention le dit
   explicitement.

Donc :

| Part de la holding de Romain | Si elle revend un jour ses parts de Timops |
| --- | --- |
| 25 % ou moins | La France ne taxe pas. La Bulgarie taxe la plus-value à l'impôt sur les sociétés bulgare (10 %). |
| Plus de 25 % | La France peut taxer la plus-value en France. Une société de l'Union européenne peut obtenir une restitution pour être traitée comme une société française (qui ne paierait l'IS que sur 12 % de la plus-value, soit environ 3 %). Mais il faut d'abord payer, puis réclamer. |

**Pourquoi ça compte peu au départ** : ce seuil ne coûte rien tant que
personne ne revend. Il ne gêne ni la création, ni les dividendes, ni la
vie de la société. Il pèse le jour d'une revente, si Timops vaut cher.

**Attention à un piège** : le seuil porte sur les **droits dans les
bénéfices**, pas seulement sur le capital. Des actions de préférence qui
donneraient à Romain plus de 25 % des dividendes avec 24 % du capital le
feraient passer au-dessus.

### Les autres seuils autour de Romain (aucun ne pénalise les 25 %)

| Seuil | Ce qu'il change |
| --- | --- |
| **5 %** | Régime mère-fille pour une holding française ; possibilité de restitution de retenue pour une société européenne. |
| **10 %** pendant deux ans | **Dividendes versés à la holding bulgare sans retenue à la source française** (article 119 ter du CGI, directive mère-filiale). En dessous, retenue de 25 %. Donc Romain a intérêt à détenir **au moins 10 %**. |
| **Plus de 25 %** | Romain devient « bénéficiaire effectif » déclaré au registre (RBE), et la banque (Revolut) lui demandera ses justificatifs. Simple formalité. |
| **25 %** | Définition européenne des PME : au-delà, la holding de Romain n'est plus « indépendante » de Timops pour certaines aides (Bpifrance, subventions). Effet négligeable si sa holding est petite. |
| **Plus d'un tiers** | En SARL, minorité de blocage sur les modifications des statuts. À 30 %, Romain ne l'a pas. En SAS, c'est ce que disent les statuts. |

### Les dividendes de Timops vers la Bulgarie

- **France** : 0 % de retenue si la holding de Romain détient au moins
  10 % depuis deux ans (ou s'engage à les garder deux ans), est soumise à
  l'IS en Bulgarie, et est le **bénéficiaire effectif** des dividendes.
- **La clause anti-abus** (3 de l'article 119 ter) : l'exonération tombe si
  le montage n'est « pas authentique », c'est-à-dire mis en place surtout
  pour l'avantage fiscal, sans réalité économique. Une holding qui ne fait
  que recevoir et reverser, sans aucune substance, est l'exemple type de
  ce que l'administration conteste. La holding de Romain détient plusieurs
  sociétés et a une raison d'être : c'est un bon point, à documenter.
- **Bulgarie** : les dividendes reçus d'une société de l'Union européenne
  ne sont pas imposés à l'IS bulgare.
- **Puis Romain** : quand sa holding lui verse des dividendes, la Bulgarie
  retient 5 %. La suite dépend de **son pays de résidence fiscale**.

### Romain est résident fiscal bulgare (précisé par Roland le 26/11)

C'est la bonne configuration : le schéma est cohérent. Romain vit sous le
régime bulgare et sa holding est bulgare. Conséquences :

- **L'article 123 bis du CGI ne s'applique pas** : il ne vise que les
  personnes domiciliées en France. La Bulgarie a beau être un pays à
  fiscalité « privilégiée » au sens français (IS à 10 %), ce n'est pas un
  problème pour un résident bulgare.
- **La holding est dirigée par un résident bulgare** : son siège de
  direction effective est en Bulgarie, ce qui renforce son caractère
  « authentique » face à la clause anti-abus de l'article 119 ter.
- **Le circuit d'un dividende** :

| Étape | Impôt |
| --- | --- |
| Timops fait un bénéfice | IS français : 15 % jusqu'à 42 500 €, 25 % au-delà |
| Timops verse un dividende à la holding de Romain | 0 % de retenue française (au moins 10 %, deux ans) |
| La holding le reçoit | 0 % en Bulgarie (dividende d'une société de l'Union européenne) |
| La holding le verse à Romain | 5 % d'impôt bulgare, libératoire |

Pour comparer : Roland, résident français, paiera 31,4 % sur ses
dividendes s'il les touche en direct.

**Trois précautions, pour que ça tienne en cas de contrôle :**

1. **Les papiers d'identité ne font pas la résidence fiscale.** Ce qui
   compte : où Romain a son foyer, où il passe le plus de temps, où il a
   son activité et ses intérêts économiques. Il lui faut un **certificat de
   résidence fiscale bulgare** chaque année : c'est la pièce que Timops
   et la banque demanderont pour verser les dividendes sans retenue.
2. **Bali** : de mi-février à juillet, c'est près de six mois. Au-delà de
   183 jours sur douze mois, l'Indonésie peut considérer Romain comme son
   résident fiscal. À surveiller avec son conseil bulgare.
3. **Les séjours en France** (fin d'année, janvier) : pas de problème tant
   qu'ils restent des séjours. Mais les décisions de la holding bulgare
   doivent être prises et signées hors de France, et Romain ne doit pas
   avoir son foyer en France.

### Ce qu'il en ressort pour les parts

- Romain étant résident bulgare, entre 24 % et 30 %, **la seule différence
  fiscale pour lui est la taxation d'une éventuelle revente**. Les dividendes, eux, sont traités de
  la même façon à 24 % ou à 30 %.
- Si Romain veut 30 % de la valeur sans passer 25 % des droits : ce n'est
  pas possible avec de simples parts. La solution simple est **24 %**, ou
  25 % pile (le texte français dit « plus de 25 % » ; le seuil exact du
  protocole est à vérifier).
- **C'est à Romain de choisir**, avec son conseil fiscal bulgare : 24 % si
  une revente est probable et qu'il veut rester en Bulgarie pour la
  plus-value ; 30 % s'il préfère la part plus grande et accepte la
  procédure française à la revente.

---

## 2. Roland : créer une holding, et pourquoi

### Les faits (donnés par Roland le 26/11)

- Roland a **50 ans**.
- Il détient **100 % d'Option & Solution**, une SARL dont il est l'associé
  unique (une EURL) et le gérant.
- Il s'y verse une **rémunération de gérant** et ne prend **pas de
  dividendes** : le reste s'accumule en **trésorerie**.
- Il a **20 %** de la société de Lilian.
- Il a l'intention de **vendre ou de transmettre** un jour ses sociétés.
- Pour Timops, il ne sait pas encore s'il voudra réinvestir l'argent ou en
  vivre, et il n'a pas besoin d'un salaire de Timops pour vivre.

### Ma recommandation : oui, une holding

Avec ces faits, la holding n'est plus une option de confort : elle répond
à trois besoins réels.

**1. Faire travailler la trésorerie d'Option & Solution.** Aujourd'hui, cet
argent est bloqué : s'il le sort en dividendes à son nom, Roland paie
31,4 % d'impôt, et en plus des cotisations sociales de gérant majoritaire
sur la part qui dépasse 10 % du capital (environ 45 % sur cette part).
Avec une holding, Option & Solution verse ses dividendes à la holding :
- seuls 5 % sont imposés (régime mère-fille), soit environ **1,25 %** ;
- les cotisations sociales des dividendes de gérant visent les dividendes
  touchés par le gérant lui-même et sa famille, pas ceux d'une holding
  (point à faire confirmer par Dougs) ;
- la holding peut alors **financer Timops** (son capital, une avance en
  compte courant), acheter de l'immobilier ou entrer dans d'autres
  sociétés, sans que l'argent passe par l'impôt personnel.

**2. Préparer la vente.** Une société qui a beaucoup de trésorerie se vend
mal : l'acheteur ne veut pas payer cette trésorerie au prix fort. Avec une
holding, on fait remonter la trésorerie avant la vente, et c'est la
holding qui vend Option & Solution : la plus-value n'est imposée que sur
12 %, soit environ **3 %**, au lieu de 31,4 % pour une vente à son nom.
L'argent reste dans la holding, prêt à être réinvesti.

**3. Préparer la transmission.** À 50 ans, c'est le bon moment pour
organiser une transmission qui se fera dans dix ou vingt ans :
- le **pacte Dutreil** réduit de 75 % la valeur taxable des titres
  d'entreprise transmis (donation ou succession), si les héritiers
  s'engagent à les garder. Il fonctionne avec une **holding animatrice** :
  une holding qui pilote vraiment ses filiales (décisions, services
  rendus), pas une simple boîte à titres ;
- donner des titres de la holding, c'est transmettre d'un coup Option &
  Solution, la part chez Lilian et Timops ;
- une donation avant une vente efface la plus-value accumulée jusque-là.

### Comment la monter

1. **Créer la holding** (une SAS ou une SARL au nom de Roland, à l'impôt
   sur les sociétés), avec Dougs.
2. **Apporter les 100 % d'Option & Solution et les 20 % chez Lilian** à
   la holding. La plus-value de ces titres n'est pas taxée au moment de
   l'apport : elle est **mise en report** (article 150-0 B ter du CGI),
   parce que Roland contrôle la holding. Le report devient une imposition
   si la holding revend les titres apportés dans les trois ans, sauf si
   elle réinvestit une large part du prix dans une activité économique
   (règle revue par la loi de finances 2026, à faire chiffrer au moment
   voulu). Il faut une **évaluation des titres** et, en général, un
   **commissaire aux apports**.
3. **La holding souscrit les 70 % de Timops** dès la création. Si la
   holding n'est pas prête à temps, Roland souscrit Timops à son nom et
   apporte ses parts plus tard : tant que Timops vaut son capital, ça ne
   coûte presque rien.
4. **La holding devient présidente de Timops** (et peut le devenir
   d'autres sociétés), ce qui renforce son caractère « animateur ».

**Point à vérifier :** Option & Solution est-elle bien soumise à l'impôt
sur les sociétés ? Une EURL détenue par une personne est, par défaut, à
l'impôt sur le revenu, sauf option. Le régime mère-fille suppose une
filiale à l'IS. Une EURL détenue par une société passe à l'IS, mais il
faut le savoir avant de monter l'apport.

**Le coût :** la création (quelques centaines d'euros), l'évaluation et le
commissaire aux apports (souvent de l'ordre de 1 500 à 3 000 €), puis la
comptabilité de la holding chaque année (de l'ordre de 1 000 à 2 000 €).
Face à la trésorerie accumulée et à une vente future, c'est faible.

### La rémunération de Roland : à garder chez Option & Solution

Roland peut cumuler deux rémunérations (Option & Solution et Timops), mais
**ce n'est pas intéressant** :
- chez Option & Solution, gérant majoritaire, il est **travailleur non
  salarié** : environ 45 % de cotisations sur sa rémunération ;
- chez Timops (SAS), président, il serait **assimilé salarié** : de
  l'ordre de 75 à 80 % de charges sur le net. Chaque euro de rémunération
  coûte bien plus cher chez Timops ;
- baisser sa rémunération chez Option & Solution pour en prendre chez
  Timops ferait donc **payer plus de charges pour le même revenu**.

La bonne répartition :
- **la rémunération dont Roland a besoin pour vivre** : chez Option &
  Solution, comme aujourd'hui ;
- **les bénéfices de Timops** : en dividendes vers la holding (1,25 %),
  pour réinvestir. Si un jour Roland veut en vivre, la holding lui verse un
  dividende (31,4 %) au moment où il en a besoin, sans cotisations
  sociales. La décision « réinvestir ou en vivre » n'a donc **pas besoin
  d'être prise maintenant** : la holding garde les deux portes ouvertes ;
- **Roland ne se paie pas chez Timops**, et en SAS un président non payé
  ne coûte rien.

### Le taux réduit d'IS de Timops reste acquis avec les deux holdings

Timops paiera 15 % sur ses 42 500 premiers euros de bénéfice si son capital
est détenu à 75 % au moins par des personnes physiques, **ou par des
sociétés elles-mêmes détenues directement à 75 % par des personnes
physiques** et réalisant moins de 10 M€ de chiffre d'affaires. Le BOFiP
admet ces sociétés **« quels que soient leur forme, leur régime fiscal ou
leur nationalité »** : la holding bulgare de Romain compte donc aussi. Une
seule limite : un seul niveau de société entre Timops et les personnes.
La holding de Roland (détenue à 100 % par lui) et celle de Romain sont
dans les clous.

### Un point à corriger : les frais de la holding de Roland payés par Timops

Romain a suggéré que Timops paie la création de la holding de Roland.
**Ce n'est pas possible** : Timops paierait une dépense qui ne la concerne
pas, au profit d'un associé. C'est un **abus de biens sociaux**, un délit
pour le dirigeant. La holding paie ses propres frais, avec un apport ou un
prêt de Roland.

---

## 3. SAS ou SARL : la SAS, pour quatre raisons

| | SAS | SARL |
| --- | --- | --- |
| Statut social du dirigeant | Président **assimilé salarié** : charges plus lourdes sur un salaire, mais **zéro charge s'il n'y a pas de salaire** | Gérant majoritaire (Roland à 70 %) **travailleur non salarié** : charges plus légères, mais **cotisations minimales même sans rémunération** |
| Dividendes du dirigeant | Prélèvement forfaitaire seul (31,4 %) | Au-delà de 10 % du capital, des primes et du compte courant, soumis aux **cotisations sociales de TNS** (environ 45 %) |
| Règles entre associés | **Libres** : agrément, préemption, inaliénabilité, exclusion, sortie d'un associé, cession forcée, tout s'écrit dans les statuts | **Fixées par la loi** : agrément à la moitié des parts, modification des statuts aux deux tiers, minorité de blocage à plus d'un tiers |
| Faire entrer quelqu'un plus tard | Facile : actions, actions de préférence, **BSPCE** (bons de parts pour les salariés comme Gaëlle) | Plus lourd, pas de BSPCE |
| Président | Peut être une personne ou une société (la holding de Roland) | Le gérant est forcément une personne |

**Pourquoi la SAS ici :**

1. **Roland ne se paie pas chez Timops** : il est rémunéré par Option &
   Solution, où son statut social est le moins cher (voir partie 2). En SAS,
   un président non payé ne coûte rien. En SARL, il paierait des
   cotisations minimales de TNS pour rien. Et la présidence peut être
   confiée à sa holding.
2. **Un associé étranger via une holding** : la SAS permet d'écrire
   précisément ce qui se passe si Romain veut sortir, si sa holding change
   de mains, ou si l'un des deux part (clauses de sortie, de changement de
   contrôle, de préemption).
3. **Faire entrer d'autres personnes** : Gaëlle, un futur associé
   opérationnel, un investisseur. Les BSPCE n'existent qu'en SAS (et SA).
4. **Les dividendes** : en SAS, ils ne supportent jamais de cotisations
   sociales.

**Le seul cas où la SARL gagnerait** : si Roland devait se verser un vrai
salaire chez Timops. Ce n'est pas le projet.

### Le réglage qui compte : les majorités dans les statuts

À 70/30, c'est le chiffre écrit dans les statuts qui décide qui a la
main :
- **décisions importantes aux deux tiers** : Roland décide seul ;
- **aux trois quarts** : Romain peut bloquer.

**Choix de Roland (26/11) : les deux tiers**, pour ne jamais être bloqué.
Avec 70 % (ou 75 %), Roland décide seul les modifications des statuts,
l'augmentation de capital, l'entrée d'un associé, la nomination du
président. Deux limites à connaître :
- la loi impose **l'unanimité** pour quelques décisions en SAS (par
  exemple ajouter une clause d'inaliénabilité, ou augmenter les
  engagements d'un associé) : Romain doit donc les accepter ;
- il faut garder **au moins 66,7 %** : si Roland descend un jour sous les
  deux tiers (entrée d'un nouvel associé), il perd ce pouvoir.

Ce choix s'écrit dans les statuts, et Romain doit le connaître avant de
signer : c'est la contrepartie de sa minorité.

---

## 4. Le pacte d'associés : ce qu'il doit contenir

En SAS, une grande partie peut aller dans les statuts. Le pacte reste utile
pour ce qui doit rester confidentiel :
- la répartition et le rôle de chacun (Romain sur la technique, Roland sur
  l'image et le commercial) ;
- la propriété du code et de la technologie : **tout ce que Romain
  développe pour Timops appartient à Timops** (cession de droits d'auteur
  écrite, indispensable pour un logiciel) ;
- la non-concurrence et l'exclusivité sur le BTP ;
- la sortie : départ, décès, changement de contrôle de la holding de
  Romain, mésentente (clause de rachat, prix de sortie selon que le départ
  est voulu ou subi) ;
- la politique de dividendes (bootstrap : réinvestir d'abord) ;
- les comptes courants et qui avance quoi au démarrage.

Le pacte d'associés n'est pas toujours dans l'offre de création de Dougs :
à demander au rendez-vous. Sinon, l'avocate de Roland qui fait le dépôt de
marque peut le rédiger.

---

## 5. Les questions : réponses et ce qui reste

**Réponses de Roland (26/11)** : 100 % d'Option & Solution (EURL), une
rémunération de gérant et pas de dividendes, la trésorerie reste dans la
société ; 20 % chez Lilian ; vente ou transmission envisagée ; 50 ans ; pas
besoin d'un salaire chez Timops ; grandes décisions aux deux tiers, pour
ne jamais être bloqué.

**Reste pour Roland**
1. Option & Solution est-elle à l'impôt sur les sociétés ?
2. Quel montant de trésorerie environ dans Option & Solution ?
3. La vente ou la transmission concerne-t-elle Option & Solution seule, ou
   aussi la part chez Lilian et Timops ?

**Pour Romain**
4. A-t-il un certificat de résidence fiscale bulgare, et a-t-il vérifié la
   règle des 183 jours pour Bali ?
5. Sa holding bulgare a-t-elle une substance (adresse, comptes, décisions
   prises en Bulgarie, autres participations) ?
6. Préfère-t-il 24 % (plus-value taxée en Bulgarie) ou 30 % (procédure
   française à la revente) ?

**Pour les deux**
7. Quel capital de départ, et qui avance les premiers frais ? En capital
   ou en compte courant ?
8. Romain apporte-t-il le développement contre ses parts, ou est-il payé
   pour ? Ça change le pacte et la propriété du code.

---

## 6. À faire valider au rendez-vous juridique de Dougs

- SAS, avec les majorités et clauses voulues ;
- la holding bulgare comme associée : documents demandés (statuts,
  extrait du registre bulgare traduit, bénéficiaires effectifs) ;
- l'engagement de conservation de deux ans pour l'exonération des
  dividendes (article 119 ter) ;
- **le nouveau dispositif du 1er janvier 2026** (II de l'article 119 bis A
  du CGI) : pour certains pays, la retenue est prélevée d'abord puis
  remboursée. Vérifier qu'il ne s'applique pas aux dividendes versés à une
  société mère européenne exonérée par l'article 119 ter ;
- le seuil exact de « participation substantielle » dans le protocole de
  la convention France-Bulgarie (25 % ou plus, ou plus de 25 %) ;
- le pacte d'associés : inclus ou non ;
- la holding de Roland : création, apport des titres, commissaire aux
  apports.

---

## Sources

- BOFiP, taux réduit d'IS des PME et sociétés interposées (§ 120, 160, 190,
  240) : https://bofip.impots.gouv.fr/doctrine/BOI-IS-LIQ-20-10
- BOFiP, exonération de retenue à la source, article 119 ter :
  https://bofip.impots.gouv.fr/bofip/4412-PGP.html
- Rapport du Sénat sur la convention France-Bulgarie (participation
  substantielle, seuil de 25 %) :
  https://conferenceconsensuslogement.senat.fr/leg/1986-1987/i1986_1987_0293.pdf
- Convention France-Bulgarie, texte officiel :
  https://www.impots.gouv.fr/sites/default/files/media/10_conventions/bulgarie/bulgarie_convention_ir_modifiee_cml.pdf
- Article 244 bis B et sociétés européennes (CMS) :
  https://cms.law/en/fra/legal-updates/cession-de-participations-substantielles-par-les-societes-europeennes-un-assouplissement-bienvenu
- Article 244 bis B (Option Finance) :
  https://www.optionfinance.fr/entreprise-expertise/plus-value-de-cession-de-titres-de-societes-francaises-un-contentieux-a-venir-pour-les-societes-residentes-detats-tiers.html
- Fiscalité bulgare 2026 (Deloitte) :
  https://www.deloitte.com/content/dam/assets-shared/docs/services/tax/2026/dttl-tax-bulgariahighlights-2026.pdf
- Retenues à la source en Bulgarie (PwC) :
  https://taxsummaries.pwc.com/Bulgaria/Corporate/Withholding-taxes
- Article 123 bis, BOFiP :
  https://bofip.impots.gouv.fr/bofip/12856-PGP.html
- PFU à 31,4 % en 2026 (La finance pour tous) :
  https://www.lafinancepourtous.com/2025/12/17/csg-un-taux-a-double-vitesse-pour-2026/
- Bénéficiaires effectifs (Service public) :
  https://entreprendre.service-public.gouv.fr/vosdroits/F36703
- Définition européenne des PME, recommandation 2003/361 :
  https://eur-lex.europa.eu/eli/reco/2003/361/oj
- Apport-cession, article 150-0 B ter, BOFiP 2026 :
  https://bofip.impots.gouv.fr/bofip/12038-PGP.html
- Régime mère-fille, BOFiP :
  https://bofip.impots.gouv.fr/doctrine/BOI-IS-BASE-10-10-10-10
- Retenue à la source 2026 pour les non-résidents (NBE avocats) :
  https://www.nbe-avocats.fr/articles/fiscal/retenue--la-source-sur-les-dividendes-verss-aux-non-rsidents--ce-qui-change-en-2026/
- Majorités et agrément en SARL et SAS (Dougs) :
  https://www.dougs.fr/blog/minorite-de-blocage/
