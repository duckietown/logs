all:
	rosrun easy_logs gallery --cache --cloud '*/sort(date)/reverse' --destination .

create_thumbnails:
	rosrun easy_logs thumbnails --cache --cloud '*' -c parmake
