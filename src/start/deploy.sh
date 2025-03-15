gcloud functions deploy valheim-functions-start \
--gen2 \
--runtime=python311 \
--allow-unauthenticated \
--region=europe-north1 \
--source=. \
--entry-point=start \
--env-vars-file=../../.env.yaml \
--trigger-http \
--ignore-file=../../.gcloudignore
