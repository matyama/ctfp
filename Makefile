.PHONY: haskell scala

haskell: TAG := latest
haskell:
	@docker run \
		--name ctfp-haskell \
		--rm \
		-p 8888:8888 \
		-v $(PWD):/home/jovyan/src \
		gibiansky/ihaskell:$(TAG)

scala: TAG := latest
scala:
	@docker run \
		--name ctfp-scala \
		--rm \
		-it \
		-p 8888:8888 \
		-v $(PWD):/home/jovyan/work \
		almondsh/almond:$(TAG)
