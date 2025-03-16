#!/bin/bash

find . -maxdepth 1 -mindepth 1 -type d | xargs -I {} bash -c 'cd {} && ../deploy-function.sh "$(basename "{}")"'
