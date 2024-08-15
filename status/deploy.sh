gcloud functions deploy valheim-functions-status \
--gen2 \
--runtime=python311 \
--region=europe-north1 \
--source=. \
--entry-point=status \
--env-vars-file=../.env.yaml \
--trigger-http \
--ignore-file=../.gcloudignore
