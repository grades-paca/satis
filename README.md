# Grades PACA Satis

Dépôt permettant de référencer l'ensemble des dépôts privés du Grades PACA.
Ce dépôt est un fork inspiré du dépôt https://github.com/xipasduarte/satis


## Readme Grades PACA/satis
**Pré-requis**
- Aucun, Satis tourne sur une machine locale

### Instructions d'installation
- Cloner le repository
```
git clone https://github.com/grades-paca/satis.git
```
- Vérifier que vous êtes bien sur la branche "master", sinon exécuter
```
git switch master
```

### Fonctionnement
1. Côté bundle

    1.1. Choix du numéro de version

    Exemple : Le dernier tag existant est 2.0.1
    - Pour un fix, on incrémente le 3ème chiffre : 2.0.2
    - Pour un nouveau développement, on incrémente le deuxième chiffre : 2.1.0
    - Pour une refonte totale, on incrémente le premier chiffre : 3.0.0
    
    Ainsi, même après le développement 2.2.0, il est toujours possible de patcher notre version 2.0.1 avec une 2.0.2, ou notre version 2.1.0 avec une 2.1.1

    1.2. Création du tag
- Sur le repository du composant, créer le tag en pointant sur votre branche de développement sur votre dépôt local (il n'est pas possible de créer le tag sur github depuis votre branche) :

```
git tag -a 2.1.0 [hash du commit]
```

Si nécessaire, vérifier les tags que vous avez en local
```
git tag
```
  
Puis pousser le tag sur le serveur
```
git push origin tag 2.1.0
```

1.3. En cas d'erreur
- Si vous n'avez pas poussé, il suffit de supprimer le tag local
```
git tag --delete 2.1.0
```
- Si vous avez déjà poussé, en plus de la suppression dans le repo local ci-dessus, exécutez
```
git push --delete origin 2.1.0
```
Vous pouvez maintenant recommencer la création du tag


2. Côté Satis
- IMPORTANT : En local dans le répertoire satis, vérifier que la branche "gh-pages" est à jour, car elle est mise à jour à chaque déploiement. Vérifier également que master est à jour.
- Vérifier que vous êtes bien sur la branche "master"
- Exécuter
```
sh deploy.sh
```
- Si votre retour est "sh: deploy.sh: No such file or directory", c'est probablement que vous êtes sur la branche "gh-pages" et pas sur la branche master
- La commande est très longue, attendre sa bonne exécution qui est de la forme : (oui, l'erreur dans le bundle-install est "normale")
```
Clonage dans 'public'...
remote: Enumerating objects: 15199, done.
remote: Counting objects: 100% (750/750), done.
remote: Compressing objects: 100% (236/236), done.
remote: Total 15199 (delta 538), reused 721 (delta 514), pack-reused 14449
Réception d'objets: 100% (15199/15199), 758.91 Mio | 2.36 Mio/s, fait.
Résolution des deltas: 100% (7866/7866), fait.
Mise à jour des fichiers: 100% (584/584), fait.
la branche 'gh-pages' est paramétrée pour suivre 'origin/gh-pages'.
Basculement sur la nouvelle branche 'gh-pages'
Installing dependencies from lock file (including require-dev)
Verifying lock file contents can be installed on current platform.
Nothing to install, update or remove
Generating autoload files
25 packages you are using are looking for funding.
Use the `composer fund` command to find out more!
> sh build.sh
No explicit requires defined, enabling require-all
Scanning packages

Skipped branch 2.x, "d9674dc0380ee183814041023774d7e4c1f374f9:composer.json" does not contain valid JSON
Parse error on line 15:
.../bundle-install": ""^2.0",        "comp
----------------------^
Expected one of: 'EOF', '}', ':', ',', ']'

Wrote packages to public/include/all$79ac2360e051464644e4f575f4e1fff579e99eab.json
Wrote packages to public/p2/atos/bundle-rass.json
Wrote packages to public/p2/atos/bundle-rass~dev.json
Wrote packages to public/p2/atos/ws-mev3.json
Wrote packages to public/p2/atos/ws-mev3~dev.json
Wrote packages to public/p2/atos/ws-synchro-lits.json
Wrote packages to public/p2/atos/ws-synchro-lits~dev.json
Wrote packages to public/p2/atos/ws-synchro-offre.json
Wrote packages to public/p2/atos/ws-synchro-offre~dev.json
Wrote packages to public/p2/egeloen/ordered-form.json
Wrote packages to public/p2/egeloen/ordered-form~dev.json
Wrote packages to public/p2/egeloen/ordered-form-bundle.json
Wrote packages to public/p2/egeloen/ordered-form-bundle~dev.json
Wrote packages to public/p2/grades-paca/bundle-address.json
Wrote packages to public/p2/grades-paca/bundle-address~dev.json
Wrote packages to public/p2/grades-paca/bundle-alert.json
Wrote packages to public/p2/grades-paca/bundle-alert~dev.json
Wrote packages to public/p2/grades-paca/bundle-app.json
Wrote packages to public/p2/grades-paca/bundle-app~dev.json
Wrote packages to public/p2/grades-paca/bundle-attachment.json
Wrote packages to public/p2/grades-paca/bundle-attachment~dev.json
Wrote packages to public/p2/grades-paca/bundle-bigbluebutton.json
Wrote packages to public/p2/grades-paca/bundle-bigbluebutton~dev.json
Wrote packages to public/p2/grades-paca/bundle-box.json
Wrote packages to public/p2/grades-paca/bundle-box~dev.json
Wrote packages to public/p2/grades-paca/bundle-carto.json
Wrote packages to public/p2/grades-paca/bundle-carto~dev.json
Wrote packages to public/p2/grades-paca/bundle-crud.json
Wrote packages to public/p2/grades-paca/bundle-crud~dev.json
Wrote packages to public/p2/grades-paca/bundle-denied-field.json
Wrote packages to public/p2/grades-paca/bundle-denied-field~dev.json
Wrote packages to public/p2/grades-paca/bundle-design.json
Wrote packages to public/p2/grades-paca/bundle-design~dev.json
Wrote packages to public/p2/grades-paca/bundle-error-logger.json
Wrote packages to public/p2/grades-paca/bundle-error-logger~dev.json
Wrote packages to public/p2/grades-paca/bundle-esms.json
Wrote packages to public/p2/grades-paca/bundle-esms~dev.json
Wrote packages to public/p2/grades-paca/bundle-form.json
Wrote packages to public/p2/grades-paca/bundle-form~dev.json
Wrote packages to public/p2/grades-paca/bundle-form-incremental.json
Wrote packages to public/p2/grades-paca/bundle-form-incremental~dev.json
Wrote packages to public/p2/grades-paca/bundle-install.json
Wrote packages to public/p2/grades-paca/bundle-install~dev.json
Wrote packages to public/p2/grades-paca/bundle-jaspersoft.json
Wrote packages to public/p2/grades-paca/bundle-jaspersoft~dev.json
Wrote packages to public/p2/grades-paca/bundle-jquery-mask.json
Wrote packages to public/p2/grades-paca/bundle-jquery-mask~dev.json
Wrote packages to public/p2/grades-paca/bundle-key-store.json
Wrote packages to public/p2/grades-paca/bundle-key-store~dev.json
Wrote packages to public/p2/grades-paca/bundle-listing.json
Wrote packages to public/p2/grades-paca/bundle-listing~dev.json
Wrote packages to public/p2/grades-paca/bundle-log.json
Wrote packages to public/p2/grades-paca/bundle-log~dev.json
Wrote packages to public/p2/grades-paca/bundle-lst.json
Wrote packages to public/p2/grades-paca/bundle-lst~dev.json
Wrote packages to public/p2/grades-paca/bundle-mail.json
Wrote packages to public/p2/grades-paca/bundle-mail~dev.json
Wrote packages to public/p2/grades-paca/bundle-otp.json
Wrote packages to public/p2/grades-paca/bundle-otp~dev.json
Wrote packages to public/p2/grades-paca/bundle-paginator.json
Wrote packages to public/p2/grades-paca/bundle-paginator~dev.json
Wrote packages to public/p2/grades-paca/bundle-patient.json
Wrote packages to public/p2/grades-paca/bundle-patient~dev.json
Wrote packages to public/p2/grades-paca/bundle-plan-bleu.json
Wrote packages to public/p2/grades-paca/bundle-plan-bleu~dev.json
Wrote packages to public/p2/grades-paca/bundle-privacy-banner.json
Wrote packages to public/p2/grades-paca/bundle-privacy-banner~dev.json
Wrote packages to public/p2/grades-paca/bundle-project-humhub.json
Wrote packages to public/p2/grades-paca/bundle-project-humhub~dev.json
Wrote packages to public/p2/grades-paca/bundle-rest-soap.json
Wrote packages to public/p2/grades-paca/bundle-rest-soap~dev.json
Wrote packages to public/p2/grades-paca/bundle-schedule.json
Wrote packages to public/p2/grades-paca/bundle-schedule~dev.json
Wrote packages to public/p2/grades-paca/bundle-setting.json
Wrote packages to public/p2/grades-paca/bundle-setting~dev.json
Wrote packages to public/p2/grades-paca/bundle-sms.json
Wrote packages to public/p2/grades-paca/bundle-sms~dev.json
Wrote packages to public/p2/grades-paca/bundle-stats.json
Wrote packages to public/p2/grades-paca/bundle-stats~dev.json
Wrote packages to public/p2/grades-paca/bundle-tag.json
Wrote packages to public/p2/grades-paca/bundle-tag~dev.json
Wrote packages to public/p2/grades-paca/bundle-task.json
Wrote packages to public/p2/grades-paca/bundle-task~dev.json
Wrote packages to public/p2/grades-paca/bundle-test.json
Wrote packages to public/p2/grades-paca/bundle-test~dev.json
Wrote packages to public/p2/grades-paca/bundle-translation.json
Wrote packages to public/p2/grades-paca/bundle-translation~dev.json
Wrote packages to public/p2/grades-paca/bundle-version.json
Wrote packages to public/p2/grades-paca/bundle-version~dev.json
Wrote packages to public/p2/grades-paca/bundle-web-client.json
Wrote packages to public/p2/grades-paca/bundle-web-client~dev.json
Wrote packages to public/p2/grades-paca/ror.json
Wrote packages to public/p2/grades-paca/ror~dev.json
Writing packages.json
Pruning include directories
Deleted public/include/all$6d4f33d1608a4f123f83059b7c473a7d1e52405d.json
Writing web view
[gh-pages 2ede4ee] Deploy Satis
 6 files changed, 2017 insertions(+), 377 deletions(-)
 rename include/{all$6d4f33d1608a4f123f83059b7c473a7d1e52405d.json => all$79ac2360e051464644e4f575f4e1fff579e99eab.json} (99%)
Énumération des objets: 20, fait.
Décompte des objets: 100% (20/20), fait.
Compression par delta en utilisant jusqu'à 8 fils d'exécution
Compression des objets: 100% (11/11), fait.
Écriture des objets: 100% (11/11), 241.73 Kio | 1.52 Mio/s, fait.
Total 11 (delta 8), réutilisés 0 (delta 0), réutilisés du paquet 0 (depuis 0)
remote: Resolving deltas: 100% (8/8), completed with 7 local objects.
remote: 
remote: GitHub found 6 vulnerabilities on grades-paca/satis's default branch (6 high). To find out more, visit:
remote:      https://github.com/grades-paca/satis/security/dependabot
remote: 
To https://github.com/grades-paca/satis.git
   5a6f11e..2ede4ee  gh-pages -> gh-pages
Déjà sur 'master'
Votre branche est à jour avec 'origin/master'.
```
- Satis lance une action github https://github.com/grades-paca/satis/actions, un peu longue aussi
- Le nouveau tag sera disponible sur la liste des paquets disponibles: https://grades-paca.github.io/satis/
3. Côté ROR
- Se mettre sur la branche adequate
- Dans le composer.json du ROR, vérifier s'il faut mettre à jour le numéro de version, selon votre version
- Si vous utilisez Docker, se connecter sur le container PHP
```
docker exec -it ror_php /bin/bash
```
- Exécuter la commande (**Attention à ne pas faire un composer update de tous les paquets!**)
```
composer update grades-paca/bundle-{nomBundle}
```
- Envoyer la mise à jour du composer.lock (et du composer.json s'il y a lieu) dans le repository du ROR

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
