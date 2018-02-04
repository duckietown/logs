
all:
	rosrun easy_logs gallery --cache --cache_reset --cloud '*/sort(date)/reverse' --destination .

again:
	rosrun easy_logs gallery --cache '*/sort(date)/reverse' --destination .

ipfs:
	rosrun easy_logs gallery  --cache '*/sort(date)/reverse' --destination . --ipfs

create_thumbnails:
	rosrun easy_logs thumbnails --cache --cloud '*' -c parmake
