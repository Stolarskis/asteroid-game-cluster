# ==================== [START] Global Variable Declaration =================== #
SHELL := /bin/bash
BASE_DIR := $(shell pwd)
UNAME_S := $(shell uname -s)
namespace := asteroid-game

# ===================== [END] Global Variable Declaration ==================== #

helm_install:
	@helm install asteroid-game $(BASE_DIR)/helm/asteroid-game --namespace $(namespace) --create-namespace

helm_uninstall:
	@helm uninstall $(namespace) --namespace $(namespace) 
