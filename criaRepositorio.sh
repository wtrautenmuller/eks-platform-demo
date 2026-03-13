#!/bin/bash

echo
echo "cria repositorio"
echo

aws ecr create-repository \
  --repository-name api-secret-demo \
  --region us-east-1