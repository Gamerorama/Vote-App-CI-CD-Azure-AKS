#!/bin/bash
set -e
set -x
REPO_URL="https://<PERSONAL-LACCESS-TOKEN>@dev.azure.com/simarjeetsingh0205/project01-votingApp/_git/project01-votingApp"
rm -rf /tmp/temp_repo
git clone "$REPO_URL" /tmp/temp_repo
cd /tmp/temp_repo
git checkout -B main origin/main
#sed -i "s|.*image:.*| - image: gameroramavotingapp.azurecr.io/$2:$3|g" k8s-specifications/$1-deployment.yaml
#sed -i "s|^\(\s*\)image:.*|\1image: gameroramavotingapp.azurecr.io/$2:$3|g" k8s-specifications/$1-deployment.yaml
sed -i "s|gameroramavotingapp.azurecr.io/$2:.*|gameroramavotingapp.azurecr.io/$2:$3|g" k8s-specifications/$1-deployment.yaml
git config user.email "pipeline@azuredevops.com"
git config user.name "Azure Pipeline"
git add .
git commit -m "Update $1 image to $2:$3" || echo "No changes to commit"
git push origin main
rm -rf /tmp/temp_repo