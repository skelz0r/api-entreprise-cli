#!/bin/bash

bin="java -jar swagger-codegen-cli.jar"

swagger_url=https://entreprise.api.gouv.fr/v3/openapi.yaml
github_user=skelz0r
github_repo=api-entreprise-cli

$bin generate \
  -i $swagger_url \
  --git-user-id $github_user \
  --git-repo-id $github_repo \
  -l ruby \
  -o ruby
