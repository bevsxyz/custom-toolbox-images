podman build -t fedora-personal .
FEDORA_IM=fedora-toolbox-$(cat /etc/fedora-release | tr -d -c 0-9)
toolbox rm $FEDORA_IM
toolbox create --image localhost/fedora-personal:latest $FEDORA_IM
