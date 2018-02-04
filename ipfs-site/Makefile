all:
	cp ../style.css .
	rosrun easy_logs gallery  --cache '*/sort(date)/reverse' --destination . --ipfs

	cp ~/duckietown/caches/cloud.yaml db2.yaml

	$(MAKE) publish

publish:
	ipfs add -r .
