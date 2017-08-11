# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# Custom projects environment
# Needed by init_prj
export PRJ_DIR=~/Projects/

# Source the contents of .bashrc.d
for INIT_SCRIPT in ~/.bashrc.d/init_*; do
	if [ -f "$INIT_SCRIPT" ]; then
		source "$INIT_SCRIPT"
	fi
done

