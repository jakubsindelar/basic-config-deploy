#!/bin/sh
makelink() {
	echo "$3\t$2";
	rm -f $2;
	ln -f $1 $2;
	chown -f $USER $2;
	chmod -f $3 $2;
}
# ssh
makelink $HOME/scripts/ansible/basic-config-deploy/roles/deploy/templates/authorized_keys $HOME/.ssh/authorized_keys 700
makelink $HOME/scripts/ansible/basic-config-deploy/roles/deploy/templates/ssh_config $HOME/.ssh/config 700
# bash
makelink $HOME/scripts/ansible/basic-config-deploy/roles/deploy/templates/bashrc $HOME/.bashrc 770
# git
makelink $HOME/scripts/ansible/basic-config-deploy/roles/deploy/templates/gitconfig $HOME/.gitconfig 750
