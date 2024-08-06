#! /bin/bash

uwsgi --plugins http,python3 --http 0.0.0.0:5000 --wsgi-file wsgi.py --callable application --processes 1 --threads 1