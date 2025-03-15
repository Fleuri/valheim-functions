gcloud functions deploy valheim-functions-stop \
--gen2 \
--runtime=python311 \
--allow-unauthenticated \
--region=europe-north1 \
--source=. \
--entry-point=stop \
--env-vars-file=../../.env.yaml \
--trigger-http \
--ignore-file=../../.gcloudignore
