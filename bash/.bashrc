# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi


# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

. ~/.bash_files/aliases.sh
. ~/.bash_files/init.sh
. ~/.bash_files/variables.sh
