#!/bin/bash
set -e
cd "$(dirname "$0")"
docker build -t devops-lab-app .
docker rm -f devops-app || true
docker run -d --name devops-app --restart unless-stopped -p 80:3000 devops-lab-app
