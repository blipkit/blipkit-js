.PHONY: install clean build publish

export PATH := $(shell npm bin):$(PATH)
export SHELL := /bin/bash

install:
	npm install

clean:
	rm -rf build

build: clean
	coffee -o lib -c src

publish: clean build
	npm publish
