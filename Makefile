cf.id := YOUR_CLOUDFRONT_DISTRIBUTION_ID_HERE
s3.bucket := YOUR_BUCKET_NAME_HERE
aws.profile := YOUR_AWS_PROFILE_HERE

.PHONY: help
help: ## displays this message
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: watch
watch: ## watches SCSS file for changes, renders out to CSS
	sass --watch --sourcemap=none src/site.scss:src/assets/css/site.css

.PHONY: build-server
build-server: ## builds the local Web server into a program
	go build server.go

.PHONY: server
server: ## runs the local Web server
	./server

