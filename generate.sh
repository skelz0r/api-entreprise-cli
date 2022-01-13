#!/bin/bash

lang=ruby

github_user=skelz0r
github_repo=api-entreprise-cli

bin="npx @openapitools/openapi-generator-cli"
swagger_path=./openapi.yaml

$bin generate \
  -i $swagger_path \
  --git-user-id $github_user \
  --remove-operation-id-prefix \
  --git-repo-id $github_repo \
  --config ./$lang.json \
  -g $lang \
  --output $lang
