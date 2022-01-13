#!/bin/bash

bin="npx @openapitools/openapi-generator-cli"

swagger_url=https://entreprise.api.gouv.fr/v3/openapi.yaml
github_user=skelz0r
github_repo=api-entreprise-cli

lang=ruby

$bin generate \
  -i $swagger_url \
  --git-user-id $github_user \
  --git-repo-id $github_repo \
  --config ./$lang.json \
  -g $lang \
  --output $lang
