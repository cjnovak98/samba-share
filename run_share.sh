share_dir="/mnt/share"

podman run -d -p 139:139 -p 445:445 --hostname $HOSTNAME -e TZ=America/New_York \
	    --name samba-container \
	    -v $share_dir:/share/folder:Z localhost/samba-image \
	    -u "$(id -u):$(id -g):$(id -un):$(id -gn):password" \
	    -s "share:/share/folder:rw:$(id -un)"
		#-v /mnt:/etc/samba:Z localhost/samba-image \
