#!/bin/bash

helm repo add grafana https://grafana.github.io/helm-charts
helm repo update
helm upgrade --install loki grafana/loki-distributed
helm install loki-grafana grafana/grafana


