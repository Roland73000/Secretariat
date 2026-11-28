# Le scan du jour des visios de coaching

Demande de Roland du 28/11/2026 : chaque jour, regarder les nouvelles visios
arrivées dans le Drive et proposer ce qui pourrait faire évoluer l'offre de
Timops. Roland valide ou non chaque proposition dans la conversation épinglée.
Le scan se lance au premier message du jour : le script
`.claude/hooks/rappel-scan.ps1` compare la date du jour à `dernier-scan.txt`.

## Les sources (Drive de Roland, lecture seule)

| Dossier | Id Drive |
| --- | --- |
| 1 Coaching Collectif BTP Performance | `1a4JssEUNr_swu6_xKA92u0M67eV-q6u7` |
| 2 Coaching individuel BTP Performance | `1Pv65v0zmTj8y_MqelkICdpkQOjardcUX` |

On lit les comptes rendus Gemini (« Notes par Gemini », « Transcript »,
« Compte rendu »), pas les fiches « Suivi - », « Préparation » ni « Analyse
de bilan », ni notre propre document « Besoins captés dans les visios
(Timops) ». Les vidéos ne se lisent pas : leur compte rendu suffit.

## Où vont les résultats (RGPD)

Les noms complets et les entreprises des membres **ne vont jamais dans le
dépôt GitHub**. Ils vont dans le Google Doc du Drive.

| Où | Quoi |
| --- | --- |
| Google Doc [Besoins captés dans les visios (Timops)](https://docs.google.com/document/d/13t3159LDgsMYFg15b6rInlYXP2d_UaPv0EA65j5XNkk/edit), id `13t3159LDgsMYFg15b6rInlYXP2d_UaPv0EA65j5XNkk`, dossier Coaching individuel | le détail nominatif, visio par visio (format de `consigne-lecture.md`) |
| `../besoins-visios.md` | la synthèse, avec le prénom et l'initiale du nom seulement, sans entreprise |
| `../evolutions-timops.md` | le registre des propositions et la réponse de Roland, mêmes règles |
| `visios-lues.tsv` | les visios déjà analysées : date, source, id Drive, sans titre |
| `dernier-scan.txt` | la date du dernier scan |

## La marche à suivre

1. `git pull`. Lire la date de `dernier-scan.txt`, puis y écrire la date du
   jour (AAAA-MM-JJ).
2. Chercher dans les deux dossiers (`'<id>' in ancestors`, documents Google)
   les fichiers modifiés depuis la veille de l'ancienne date ; garder ceux
   dont l'id n'est pas dans `visios-lues.tsv`.
3. Lire chacun en suivant `consigne-lecture.md` (partie notes seulement, pas
   la transcription).
4. Ajouter le détail nominatif à la fin du Google Doc, sous un titre
   « Scan du AAAA-MM-JJ » (connecteur Google Docs, après lecture du document
   et avec `requiredRevisionId`).
5. Ajouter un court résumé anonymisé dans la section « Les scans du jour » de
   `../besoins-visios.md`, et les visios lues à `visios-lues.tsv`.
6. Pour chaque besoin qui mérite une décision, ajouter une ligne « à
   valider » dans `../evolutions-timops.md` (prénom et initiale).
7. Committer (sans pousser : pousser se fait avec l'accord de Roland).
8. Écrire dans la conversation, pour chaque proposition : qui (nom complet,
   c'est une conversation privée), quelle visio, quel jour, quel besoin,
   quel service Timops, et la question « on travaille ce sujet ou pas ? ».
   S'il n'y a rien de neuf, le dire en une ligne.
