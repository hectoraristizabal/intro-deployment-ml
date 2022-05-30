#!/bin/bash

gunicorn --bin 0.0.0.0 api.main:app -w 2 -k uvicorn.workers.UvicornWorker

