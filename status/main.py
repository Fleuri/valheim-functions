from os import environ

import functions_framework
from google.cloud import compute_v1

@functions_framework.http
def status(request):

    client = compute_v1.InstancesClient()

    instance_request = compute_v1.GetInstanceRequest(
        instance=environ.get("INSTANCE_NAME"),
        zone=environ.get("INSTANCE_ZONE"),
        project=environ.get("INSTANCE_PROJECT")
    )

    instance = client.get(instance_request)

    return f"The status of {instance.name} is {instance.status}"

