#alias vi="nvim"
alias switch-user="dm-tool switch-to-user ti"
alias ta=thread-archiver
alias py="python3"
alias local-pip=${HOME}/.local/bin/pip
alias o="xdg-open"
alias t="tree"
alias httagd="/home/inc/projects/tagd/httagd/bin/httagd"
alias tagsh="/home/inc/projects/tagd/tagsh/bin/tagsh"

mkcd() {
	# mkdir all options and arguments
	mkdir "$@"

	# cd to the last arg
	for last; do true; done
	cd $last
}
