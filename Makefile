URL := $(shell grep url Formula/bebop.rb| cut -wf3)
sha:
	curl -Ls ${URL} | shasum -a 256
