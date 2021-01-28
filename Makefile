.PHONY: build run

build:
	docker build -t gitsync-container-volume:latest .

run:
	docker run -v $(shell pwd)/data:/data \
    -e REPOSITORY_URL="https://github.com/USACE/instrumentation-api" \
    -e REMOTE_BRANCH="feature/aware-platform_parameter_enabled-endpoint" \
	gitsync-container-volume:latest
