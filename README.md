# ToMansion TP1

## Remerciements

J'ai eu le plaisir d'être aidé et d'avoir aidé de mon mieux:
- Sophie N
  - Merci pour les conseils sur les attributs de styles propres à angular
  - J'espère que mes conseils sur le déploiement auront été utiles.
- Remy C
  - On s'est bien entraidé pour le déploiement, moi pour avoir aidé à mettre en place Docker et traefik et toi pour les indications sur PWA.
- Leandre B
  - Je t'ai aidé à mettre en place ta CD et j'héberge ton apply.
- Nathan P
  - J'espère t'avoir bien aidé sur les points bloquants d'Angular

I did what I could

## Difficultées

J'ai bloqué sur le build d'angular qui ne prenait pas les var d'env dans scr/environment/environment.ts.prod.

Ni `npm run build` ni `npm run build --prod` ne fonctionnait, il fallait faire `ng build --prod`...

Mon serveur [tomansion.fr](https://tomansion.fr) est trop lent et chargé pour build les images, les actions de github se terminaient en timeout... Je suis donc passé par docker hub pour n'avoir qu'à les déployer.

Difficultées à faire que traefik compresse les pages web.

## Deployment ![cd](https://github.com/Polytech-Paris-Sud-Web/TP2-TomMansion/actions/workflows/deploy.yml/badge.svg)

Front available at https://webav.tomansion.fr/

Back at https://webav-bdd.tomansion.fr

Docker images available on Docker Hub:
- Front: tomansion/webav
- DB: tomansion/webav-db

Deployment & https made possible with Traefik

This project was generated with [Angular CLI](https://github.com/angular/angular-cli) version 8.0.0.


## Development server

### JSON DB
```bash
json-server --watch db/db.json
```

### Serve
```bash
npm install
```

Run `ng serve` for a dev server. Navigate to `http://localhost:4200/`. The app will automatically reload if you change any of the source files.
