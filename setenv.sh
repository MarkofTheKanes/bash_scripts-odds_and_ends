#!/bin/bash
echo -e "Select Kubernetes environment to use.. \n
1. ambercfg
2. default \n"

read env_select

case $env_select in
1)
echo -e "Configuration ${env_select} selected."
export gconfig=ambercfg
export gregion=europe-west2
export gzone=europe-west2-a
export gaccount=mark.okane@jetstack.io
export projectid=jetstack-mark-okane

gcloud config set core/account $gaccount
gcloud config configurations activate $gconfig
gcloud config set project $projectid
gcloud config set compute/zone $gzone
gcloud config set compute/region $gregion
gcloud config set disable_prompts true

gcloud config list
;;

2)
echo -e "Configuration ${env_select} selected."
export gconfig=default
export gregion=europe-west2
export gzone=europe-west2-a
export gaccount=mark.okane@jetstack.io
export projectid=jetstack-mark-okane

gcloud config set core/account $gaccount
gcloud config configurations activate $gconfig
gcloud config set project $projectid
gcloud config set compute/zone $gzone
gcloud config set compute/region $gregion
gcloud config set disable_prompts true

gcloud config list
;;

*)
echo -e "Configuration ${env_select} unknow. Setting to default."
export gconfig=default
export gregion=europe-west2
export gzone=europe-west2-a
export gaccount=mark.okane@jetstack.io
export projectid=jetstack-mark-okane

gcloud config set core/account $gaccount
gcloud config configurations activate $gconfig
gcloud config set project $projectid
gcloud config set compute/zone $gzone
gcloud config set compute/region $gregion
gcloud config set disable_prompts true

gcloud config list
;;
esac
