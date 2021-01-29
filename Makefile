.PHONY: build run

build:
	docker build -t gitsync-container-volume:latest .

run:
	docker run -v $(shell pwd)/data:/data \
    -e REPOSITORY_URL="https://github.com/USACE/gitsync-container-volume" \
    -e REMOTE_BRANCH="develop" \
	gitsync-container-volume:latest
