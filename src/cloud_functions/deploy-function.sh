#!/bin/bash

#Note, for this to work, it should be called in the function directory and provided the directory name.

gcloud functions deploy valheim-functions-"$1" \
--gen2 \
--runtime=python311 \
--allow-unauthenticated \
--region=europe-north1 \
--source=. \
--entry-point="$1" \
--env-vars-file=../.env.yaml \
--trigger-http \
--ignore-file=../.gcloudignore
