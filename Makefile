SHELL := /usr/bin/env bash
HUGO := hugo
DATE := $(shell date)
DOMAIN :=
THEME_REVISION :=

.PHONY: run submodules start clean-workspace

run: run
	hugo server --minify --theme book

submodules:
	git submodule update --recursive --remote

start:
	hugo server --themesDir=../.. --disableFastRender

clean-workspace:
	@if [ ! -z "$$(git status -s)" ]; then echo "[ERR] Workspace dirty."; exit 1; fi