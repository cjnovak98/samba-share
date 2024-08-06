podman run -d -p 139:139 -p 445:445 --hostname $HOSTNAME -e TZ=America/New_York \
	    --name samba-container \
	    -v /mnt/share:/share/folder:Z elswork/samba \
	    -u "$(id -u):$(id -g):$(id -un):$(id -gn):password" \
	    -s "share:/share/folder:rw:$(id -un)"
