#!/bin/sh

gunicorn \
  -k uvicorn.workers.UvicornWorker main:app \
  --workers=1 \
  --bind="0.0.0.0:8000" \
  --timeout=180 \
