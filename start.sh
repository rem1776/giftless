#!/bin/bash
echo "Starting Git LFS server..."
export GIFTLESS_CONFIG_FILE=server-conf.yaml
python3 -m venv .venv
. .venv/bin/activate
uwsgi -M -T --threads 2 -p 2 --manage-script-name --module giftless.wsgi_entrypoint --callable app --http 127.0.0.1:8080
