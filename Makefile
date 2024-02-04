container:
	docker buildx build \
		--platform linux/amd64 \
		--platform linux/arm64 \
		 -t jschlyter/mongodb-performance-test \
		 .

push-container:
	docker push jschlyter/mongodb-performance-test
