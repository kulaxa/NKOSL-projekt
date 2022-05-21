#!/bin/bash
set -euo pipefail


flask db upgrade

gunicorn -b 0.0.0.0:5000 app:nkosl_app

#service nginx start
