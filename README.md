# Grades PACA Satis

Dépôt permettant de référencer l'ensemble des dépôts privés du Grades PACA.
Ce dépôt est un fork inspiré du dépôt https://github.com/xipasduarte/satis


## Readme Grades PACA/satis
**Pré-requis**
- Aucun, Satis tourne sur une machine locale

### Instructions
- Cloner le repository
```
git clone https://github.com/grades-paca/satis.git
```
- Vérifier que vous êtes bien sur la branche "master", sinon, la récupérer

### Fonctionnement
1. Côté bundle
- Sur le repository du composant, merger la branche contenant les développements vers une 2.x, 3.x...
    - En ligne de commande :
        - Créer un tag
        ```
        git tag -a 2.0.1 [hash du commit]
        ```
        - push
    - Sur github:
        - Cliquer "xx tags" pour voir tous les tags
        - Cliquer "Release" pour voir les releases
        - Cliquer "Draft a new release"
        - Choose a tag -> saisir le tag désiré puis cliquer "+ Create new tag xxx on publish"
        - Cliquer "Generate release notes" pour obtenir les notes automatiquement à partir des commentaires
        - Donner un titre (le tag?)
        - Cliquer "Publish release"
2. Côté Satis
- En local dans le répertoire satis, vérifier que vous êtes bien sur la branche "master", sinon, la récupérer
- Exécuter
```
sh deploy.sh
```
- La commande est un peu longue, attendre sa bonne exécution
- Satis lance une action github https://github.com/grades-paca/satis/actions
- Le nouveau tag sera disponible sur la liste des paquets disponibles https://grades-paca.github.io/satis/
3. Côté ROR
- Se mettre sur la branche adequate
- Dans le composer.json du ROR, mettre à jour le numéro de version
- Dans votre environnement de développement
    - Docker
        - Se connecter sur le container PHP
        ```
        docker exec -it ror_php /bin/bash
        ```
        - Exécuter la commande (Attention à ne pas faire un composer update de tous les paquets!)
        ```
        composer update grades-paca/bundle-{nomBundle}
        ```
    - Local
        - Exécuter la commande (Attention à ne pas faire un composer update de tous les paquets!)
        ```
        composer update grades-paca/bundle-{nomBundle}
        ```
- Envoyer la mise à jour du composer.json et du composer.lock dans le repository du ROR

## Readme Xipasduarte/satis
### How does it work?

Simple, actually. There are 3 parts to it:

1. The `composer/satis` package delivers Satis so that the static `composer` repository can be generated ([learn more][1]).
2. The `satis.json` file has all of my private repository links (if this information is too sensitive for you to display, maybe this isn't the thing for you, try [Private Packagist][2]).
3. A deploy script, triggered by `composer` ([say woot!?][3]), to make things go to the `gh-pages` branch of this repo, ultimately resulting in our final goal.

[1]: https://getcomposer.org/doc/articles/handling-private-packages-with-satis.md#satis
[2]: https://packagist.com/
[3]: https://getcomposer.org/doc/articles/scripts.md#scripts
[4]: https://blog.github.com/2018-05-01-github-pages-custom-domains-https/

### Usage

There are two scripts, triggered via `composer run-script <name>`:

- `build`: If you want to see what the output would be like. This script installs the dependencies and builds your satis static repository on the `public/` folder.
- `deploy`: This triggers the `deploy.sh` script. It's what you would trigger to make deploy, manually or through Continuous Integration, to the `gh-pages` branch of the remote repository to have your Satis hosted on GitHub Pages.
