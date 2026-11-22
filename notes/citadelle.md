# Citadelle

Ce qu'on sait de Citadelle, retrouvé le 21/11/2026 dans les mémoires et les
conversations du projet CRM-Roland (lecture seule). À compléter par Roland.

## Ce que c'est

- **Le logiciel de gestion des membres de BTP Performance**, dans la
  plateforme app.btpperformance.fr (la V2 de la plateforme), sur ordinateur
  et en application téléphone.
- Les membres y saisissent les données de leur entreprise ; des coachings
  portent sur son utilisation (« Thème : Citadelle »), et l'intégration des
  nouveaux membres passe par des rendez-vous « Intégration Citadelle ».
- On y trouve notamment : un tableau de bord, les charges de l'entreprise,
  la trésorerie, les dossiers de chantier, le pointage des heures par jour et
  par personne, les heures prévues et le « point de perte » (le seuil à
  partir duquel un chantier ne rapporte plus).
- **Romain Gache a développé Citadelle avec Roland** ; les modifications
  sont faites par **Louis**, qui travaille pour Romain. Roland transmet les
  demandes dans la messagerie de la plateforme.
- BTP Performance et Citadelle appartiennent à la société de Roland,
  **Option & Solution**. La nouvelle société sera, elle, une société à
  part, avec son propre nom.
- Un module de **planification des chantiers** est en projet (cahier des
  charges dicté par Roland le 19/11/2026). Roland y voyait déjà des
  automatisations possibles « avec l'entreprise de secrétariat », par
  exemple la relance des sous-traitants.

## À ne pas confondre

L'« écosystème CITADELLE » (La Caserne, Le Bivouac, Le Poste de Commandement)
a été inventé par Claude et n'a jamais été validé par Roland : on ne
l'emploie pas. « Citadelle » désigne seulement le logiciel.

## Pourquoi c'est important pour le secrétariat

Citadelle contient déjà une grande partie des chiffres dont le service a
besoin (chantiers, heures, trésorerie). D'où une question de fond : l'outil
du secrétariat est-il une nouvelle appli, un prolongement de Citadelle, ou
les deux reliés par API ? Comme c'est la même équipe (Romain et Louis) des
deux côtés, le branchement entre les deux est facilité, mais la question de
qui possède quoi (Option & Solution ou la nouvelle société) reste à
poser.

## Une Citadelle bridée ou deux logiciels reliés ? (question de Roland, 22/11/2026)

**La question** : soit on fait évoluer Citadelle et on la bride pour BTP
Performance, pour qu'elle reste la transcription des tableaux de bord de
Roland, et on la pousse à fond pour le secrétariat ; soit on développe deux
solutions qu'on interconnecte. Dans les deux cas, il y aura des connexions
à créer.

### Option A : une seule Citadelle, deux versions

- Pour : un seul code, une seule base, aucune double saisie, une seule
  équipe (Romain, Louis).
- Contre : la nouvelle société dépend d'un logiciel qui appartient à
  Option & Solution ; les deux sociétés se retrouvent liées (vente de l'une
  sans l'autre, désaccord entre associés). « Brider » pour les membres de
  BTP Performance peut leur donner le sentiment d'avoir la version au
  rabais.

### Option B : deux logiciels reliés par API

- Pour : chaque société possède son outil ; chacune peut être vendue,
  financée ou évoluer seule.
- Contre : on risque de refaire deux fois les chantiers, le pointage et le
  planning, ce qui contredit « on ne refait pas ailleurs » ; deux fois le
  coût ; et la règle « jamais de double saisie » dépend alors entièrement
  de la synchronisation.

### Option C, proposée par Claude : un moteur, deux portes

- **Citadelle reste le seul moteur des chantiers** : chantiers, pointage,
  planning, rentabilité. Elle appartient à Option & Solution. C'est déjà ce
  qu'on a décidé pour le planning.
- **Pas de bridage, des modules qu'on active** : le même logiciel, avec des
  modules allumés ou éteints selon le client. Le membre de BTP Performance
  garde ses tableaux de bord ; le client du secrétariat a, en plus, les
  modules dont le bras droit a besoin. Rien n'est retiré à personne.
- **Le système de la nouvelle société ne contient que ce qui est à elle** :
  la bibliothèque qui apprend, les appels, les relances, le poste de
  pilotage du bras droit, la communauté, la page de suivi des clients.
- **Les deux se parlent par API dès le premier jour**, même si c'est la
  même équipe qui code les deux. C'est ce qui permet un jour de séparer
  les sociétés sans tout casser.
- **Un contrat de licence entre les deux sociétés** : un prix par client,
  une longue durée, l'exclusivité sur le marché du secrétariat, et ce qui
  se passe si l'une des deux sociétés est vendue.

### La question qui fâche

À qui appartient vraiment Citadelle ? À Option & Solution seule, ou Romain
a-t-il des droits sur le code ? Et Romain et Gaëlle, associés de la
nouvelle société, accepteront-ils qu'une brique centrale appartienne à
l'autre société de Roland ? Solution si ça bloque : en parler avec
l'expert-comptable (licence, ou Citadelle logée dans une société à part
que les deux utilisent).

### En communication, on ne mélange pas (Roland, 22/11/2026)

Quelle que soit l'option technique, **le marketing et la communication
restent séparés** : deux offres, chacune avec sa vente, sauf l'offre
globale (le tout-en-un), qui combine les deux. C'est la décision du
22/11 sur les deux tunnels, appliquée à Citadelle. Conséquence pour
l'option C : dans l'offre du secrétariat, le moteur des chantiers peut
être présenté comme une partie du système de la nouvelle société, sans
mettre en avant BTP Performance. À trancher : on le nomme Citadelle,
ou on le rend invisible.
