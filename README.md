# Weekly-des-dés

Ce projet a pour but d'être utilisé par l'association [Smash Association Loire-Touraine](https://discord.gg/7A487aVQpF) (SALT) lors des weeklies des dés. La weekly des dés est une idée de [Lero](https://x.com/leror0) : au début de l'évènement on choisit six personnages, et on les associe chacun à un nombre entre 1 et 6. Au début de chaque match, le dé choisit quels personnages sont joués.

Le but de ce projet est donc de générer rapidement des cartes des personnages à imprimer pour tous les joueurs.

[<img width="138" height="246" alt="Capture d’écran 2026-08-11 à 23 12 19" src="https://github.com/user-attachments/assets/ddfd83c6-9452-4102-aec3-84fb07b65848" />](https://www.supermajor.gg/ultimate/player/Lero?id=S2464181) [<img width="140" height="246" alt="Capture d’écran 2026-08-11 à 21 29 07" src="https://github.com/user-attachments/assets/04452224-e6a9-46c3-bc10-d07e19420108" />](https://www.supermajor.gg/ultimate/player/Thao?id=S4568057) [<img width="140" height="246" alt="Capture d’écran 2026-08-11 à 21 28 43" src="https://github.com/user-attachments/assets/6a5ac574-d478-423d-84c5-34c91a188169" />](https://www.supermajor.gg/ultimate/player/Galgar?id=S3259966) [<img width="140" height="246" alt="Capture d’écran 2026-08-11 à 21 29 46" src="https://github.com/user-attachments/assets/d6e73fd4-9b0c-4675-92f1-45a9c92ebade" />](https://www.supermajor.gg/ultimate/player/Monki?id=S3228975) [<img width="140" height="246" alt="Capture d’écran 2026-08-11 à 21 30 34" src="https://github.com/user-attachments/assets/dcc8c4ed-e351-4b69-89c0-31924ff2d73b" />](https://www.supermajor.gg/ultimate/player/Lief?id=S551722)

## Et maintenant, un message du développeur :

Aucune IA générative (ChatGPT, Copilot, etc) n'a été utilisée lors de la conception de ce projet, si vous comptez utiliser ce script pour générer des cartes je vous invite à ne pas utiliser d'IA non plus :

**Pour remplir "player_infos.typ" :** Pas besoin de chat gpt ça prend 20 minutes max respectez-vous, respectez-moi.

**Si vous voulez changer les assets :** (logo, image de fond, etc)  
Ne générez pas d'images par IA, à la place dessinez un fond vous même ça sera infiniment mieux.  
Si vraiment vous voulez un design chouette et que vous n'avez pas d'artiste dans votre entourage qui serait prêt à le faire, **payez-en un**

**Je politise ce repo j'emmerde l'extrême droite, j'emmerde le gouvernement français, j'emmerde le gouvernement états-unien euh... j'emmerde tous les fachos, j'emmerde le RN, Éric Zemmour et tout ce qu'il y a autour !**  
En particulier, j'emmerde les IA génératives  !
Voila bisous bonne lecture <3

<img width="150" height="150" alt="image" src="https://github.com/user-attachments/assets/12659a66-56bf-4ddd-b50a-882923bd2a2c" />


**Tout de suite, la suite du readme**

## Contributeurs :

Ce script a été développé par [Kinks](https://www.supermajor.gg/ultimate/player/Kinks?id=S1930585) (ou [Stékachez](https://www.instagram.com/stekachez/) si vous voulez voir mes pôtits dessins sur Instagram)

Avec l'aide de :
- [Yyna](https://yyna.xyz) (ou [suffixe](https://suffixe.yyna.xyz/), allez écouter sa musique)
- [XoRa](https://www.supermajor.gg/ultimate/player/XoRa?id=S2284011) (allez voir son système de JDR, [les fragments de la destinée](https://git.uwu-segfault.eu/XoRa-Ki/fdd))
- ToyHugs
- Tous ceux qui ont gentiment accepté d'apparaitre comme exemples tout au long de ce document <3 (retrouvez les sur le [discord de l'asso](https://discord.gg/7A487aVQpF), et un petit peu sur le [discord de smash lorraine](https://discord.gg/aKzjdFHyzx) aussi) 

(Gros bisous à la team)

## Dépendances 

Ce script est entièrement réalisé à l'aide du langage [Typst](https://typst.app/), par la suite je vais présenter une manière de compiler le pdf final qui utilise le logiciel [VS Code](https://code.visualstudio.com/) (plus agréable à utiliser, et vous devrez dans tous les cas utiliser un éditeur de texte pour modifier le rendu final) et une qui utilise le terminal de commande (rien de compliqué mais peut faire peur si on n'est pas habitué)

## TL;DR (pour les gens qui savent utiliser typst) :
Il faut modifier le dictionnaire dans "player_infos.typ" et compiler "main.typ".

## Utiliser le script

### 1. Avec VSCode (ce que je conseille) :
**Dans un premier temps vous devez installer VS Code :** [ici](https://code.visualstudio.com/Download)

**ensuite on va utiliser les deux extensions suivantes :**
- Tinymist (permet d'afficher un aperçu du rendu final en temps réel)
<img width="533" height="160" alt="Capture d’écran 2026-08-11 à 23 42 49" src="https://github.com/user-attachments/assets/9bf29d2c-f542-4cf2-bd62-69b3ce4ce44a" />

- Typst Basic (permet d'exporter le fichier pdf à la fin)
<img width="447" height="160" alt="Capture d’écran 2026-08-11 à 23 42 37" src="https://github.com/user-attachments/assets/5772d495-a269-48f0-8c98-3dc6548998a1" />


**Vous pouvez désormais rentrer les informations des joueurs :**

Le fichier "player_info.typ" contient la liste des joueurs, pour chaque joueur on doit rentrer son pseudo (```name```), et la liste de ses personnages (```characters```), **c'est donc lui qu'on va modifier**.
Par exemple si je rentre :
```
#let player_infos = (
  (
    name: "Raphou Patate",
    characters:(
      "captain_falcon",
      "ridley",
      "sephiroth",
      "inkling",
      "mii_brawler",
      "rosalina_and_luma"
    )
  ),
  (
    name: "WejdenePower",
    characters: (
      "samus",
      "donkey_kong",
      "byleth",
      "mario",
      "captain_falcon",
      "palutena"
    )  
  ),
  (
    name: "yuto"
    characters:(

etc
```
J'obtiendrai ces cartes :

[<img width="138" height="246" alt="Capture d’écran 2026-08-11 à 23 26 34" src="https://github.com/user-attachments/assets/41222f39-aea7-43f2-a002-3cf761a0b240" />](https://www.supermajor.gg/ultimate/player/Raphou%20Patate?id=S3102098) [<img width="138" height="246" alt="Capture d’écran 2026-08-11 à 23 23 11" src="https://github.com/user-attachments/assets/46a6f02c-fad0-4e64-ab9f-3c2f93887cce" />](https://www.supermajor.gg/ultimate/player/WejdenePower%3C3?id=S3366421)[<img width="136" height="248" alt="Capture d’écran 2026-08-13 à 18 04 39" src="https://github.com/user-attachments/assets/08d6e793-3a52-4bf4-8ae8-7f013ab5c5ea" />](https://www.supermajor.gg/ultimate/player/Yuto?id=S3164323)

**Petite astuce :** lorsque vous remplissez les informations des joueurs, ouvrez le fichier "main.typ", vous n'avez rien à modifier dans ce fichier, mais si vous appuyez sur cette icone "<img width="28" height="29" alt="Capture d’écran 2026-08-11 à 23 53 47" src="https://github.com/user-attachments/assets/d24a6c79-b93a-452a-9e6d-93e43ad8de43" />" en haut à droite de la fenêtre, vous allez avoir un aperçu en temps réel des cartes que vous êtes en train de remplir

**Dès que vous avez fini de remplir les informations des joueurs :** retournez dans "main.typ", l'icone "<img width="28" height="29" alt="Capture d’écran 2026-08-11 à 23 56 50" src="https://github.com/user-attachments/assets/5a30dff9-6ee6-402e-9a1e-91778bdfbd9c" />" vous permettra de générer le PDF final (il sera enregistré dans le dossier dans le même dossier que "main.typ")


### 2. Sans VS Code, sur MacOS et Linux : 

**Vous devez d'abord installer Typst** : [ici](https://typst.app/open-source/#download) (le plus simple est d'utiliser [homebrew](https://brew.sh))

**Comme dans l'étape 1. modifiez le fichier "player_infos.typ"**

**Enfin quand votre fichier est pret a etre compilé :** ouvrez un terminal à l'emplacement de "main.typ" et tapez cette commande :
```
typst compile ./main.typ
```

### 3. Sans VSCode, sur Windows :

Vous pouvez exporter ce dossier sur la [web app de typst](https://typst.app/play/)


## Dernière remarque importante :
Si vous voyez cette icône apparaitre à la place de l’icône d'un personnage :

<img width="128" height="128" alt="placeholder" src="https://github.com/user-attachments/assets/a4980b11-2a67-4d71-92d3-afb1796c5dad" />

C'est que le nom que vous avez rentré pour ce personnage est erroné

(par exemple vous avez rentré ```mr_gameandwatch```au lieu de ```mr_game_and_watch```)

Pour etre sur de la bonne orthographe, vous pouvez regarder dans le dossier "assets/character_icons/", les noms des personnages doivent être les mêmes que les noms des icones auxquelles ils sont associés.

(Par exemple ici je vois que l'icone s'appelle "mr_game_and_watch.png" :

<img width="129" height="118" alt="Capture d’écran 2026-08-12 à 00 20 31" src="https://github.com/user-attachments/assets/a0e53668-c9f9-4b95-85a5-6d13db091ba6" />

je sais donc qu'il faudra rentrer "mr_game_and_watch" dans "player_infos.typ")

### À la fin vous devriez obtenir une planche qui ressemble à ça :

[exemple.pdf](assets/exemple.pdf)

<img width="352" height="635" alt="Capture d’écran 2026-08-13 à 18 00 54" src="https://github.com/user-attachments/assets/1d788e32-974a-4b66-acc0-9005708ddca5" />

Vous n'avez plus qu'à découper les cartes et à les distribuer à vos joueurs !
