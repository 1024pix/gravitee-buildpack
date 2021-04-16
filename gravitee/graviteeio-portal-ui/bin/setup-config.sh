#!/bin/bash

echo -n "-- Setup portal-ui config --"

if [[ -z "${APIM_ENV}" ]]; then
echo -n "-----> Veuillez saisir l'environnement Gravitee à configurer en définissant la variable d'env APIM_ENV ..."
exit 1
fi

echo -n "-----> Copying buildpack gravitee portal ui configuration ... "
mv /app/gravitee/graviteeio-portal-ui/pix-config/${APIM_ENV}/config.json /app/assets/config.json
echo "done"
