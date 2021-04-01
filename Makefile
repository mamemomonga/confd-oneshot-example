DCR_IMAGE=confd-oneshot-example

run:
	rm -rf configs
	docker build -t $(DCR_IMAGE) .
	cat configs.yaml | docker run --rm -i $(DCR_IMAGE) | tar xv

clean:
	docker rmi $(DCR_IMAGE)