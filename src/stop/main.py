from os import environ

import functions_framework
from google.cloud import compute_v1

@functions_framework.http
def stop(request):

    client = compute_v1.InstancesClient()

    instance_request = compute_v1.StopInstanceRequest(
        instance=environ.get("INSTANCE_NAME"),
        zone=environ.get("INSTANCE_ZONE"),
        project=environ.get("INSTANCE_PROJECT"),
        discard_local_ssd = False
    )

    instance = client.stop(instance_request)

    return f"Instance {instance.name} has been issued a stop command."

