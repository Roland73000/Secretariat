# Le scan de chaque nuit des visios de coaching

Demande de Roland du 28/11/2026 : chaque nuit, regarder les nouvelles visios
arrivées dans le Drive et proposer ce qui pourrait faire évoluer l'offre de
Timops. Roland valide ou non chaque proposition dans la conversation épinglée.

## Les sources (Drive de Roland, lecture seule)

| Dossier | Id Drive |
| --- | --- |
| 1 Coaching Collectif BTP Performance | `1a4JssEUNr_swu6_xKA92u0M67eV-q6u7` |
| 2 Coaching individuel BTP Performance | `1Pv65v0zmTj8y_MqelkICdpkQOjardcUX` |

On lit les comptes rendus Gemini (« Notes par Gemini », « Transcript »,
« Compte rendu »), pas les fiches « Suivi - », « Préparation » ni « Analyse
de bilan ». Les vidéos ne se lisent pas : leur compte rendu suffit.

## Les fichiers

| Fichier | Rôle |
| --- | --- |
| `visios-lues.tsv` | les visios déjà analysées (date, source, id, titre) : on ne les relit pas |
| `../besoins-visios.md` | le rapport : chaque besoin capté, visio par visio |
| `../evolutions-timops.md` | le registre : chaque proposition, et la réponse de Roland |

## La marche à suivre

1. `git pull`.
2. Chercher dans les deux dossiers (`'<id>' in ancestors`, documents Google)
   les fichiers modifiés depuis deux jours ; garder ceux dont l'id n'est pas
   dans `visios-lues.tsv`.
3. Lire chacun en suivant `consigne-lecture.md` (partie notes seulement, pas
   la transcription).
4. Ajouter les besoins trouvés en tête de `../besoins-visios.md` (section du
   jour), ajouter les visios lues à `visios-lues.tsv`.
5. Pour chaque besoin qui mérite une décision, ajouter une ligne « à
   valider » dans `../evolutions-timops.md`.
6. Committer (sans pousser : pousser se fait avec l'accord de Roland).
7. Écrire dans la conversation, pour chaque proposition : qui, quelle visio,
   quel jour, quel besoin, quel service Timops, et la question « on travaille
   ce sujet ou pas ? ». S'il n'y a rien de neuf, le dire en une ligne.
