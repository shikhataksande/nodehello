#BUCKET ?= demo-api-staging
#TF_VAR_site_name ?= sepp-api-staging

default: dev

all: setup dev

cleanDeps:
	rm -rf node_modules
	rm -rf package-lock.json

setup: cleanDeps
	npm install

dev:
	npm start

#deploy:
	#aws s3 cp build/app.zip s3://$(BUCKET)/lambda/api.zip --acl public-read --region ap-southeast-2
	#aws lambda update-function-code --function-name ${TF_VAR_site_name}_lambda_api --s3-bucket $(BUCKET) --s3-key lambda/api.zip --region ap-southeast-2

#.PHONY: setup dev clean build deploy default all cleanDeps
