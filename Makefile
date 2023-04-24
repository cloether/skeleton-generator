#!make

# Generate Python Client from Openapi Spec
.PHONY: generate-python
generate-python:
	openapi-generator generate -g python \
		-i schema/2020-09-14.yml \
		-o build/generated-python \
		-p packageName=plaid \
		--global-property apiTests=false,modelTests=false \
		-t templates/python
