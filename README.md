**DISCLAIMER**: Il s'agit d'un work in progress/expérimentation, ce dépôt ne génère pour le
moment pas de code réellement fonctionnel pour 2 raisons:

1. La v3 d'API Entreprise n'est pas encore prête (et est sujette à modifications
   sans préavis)
2. Le premier client (ruby) est encore en phase exploratoire

# API Entreprise clients

Ce dépôt regroupe l'ensemble des clients pour [API
Entereprise](https://entreprise.api.gouv.fr/) en version 3.

Ces clients sont générés à l'aide du
[Swagger](https://entreprise.api.gouv.fr/v3/openapi.yaml) et de l'outil [Swagger
Codegen](https://swagger.io/tools/swagger-codegen/).

## Génération de clients

### Pré-requis

Vous devez posséder java en version 8.

### Installation

```sh
./install.sh
```

### Generate client

FEEDME

## Clients disponibles

### Ruby

Version: 1.0.0
Target API version: 3.0.0

```ruby
gem 'api_entreprise', '~> 1.0'
```
