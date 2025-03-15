#!/bin/bash

find . -type f -name "deploy.sh" | xargs  -I {} bash -c 'cd "$(dirname "{}")" && bash "./$(basename "{}")"'
