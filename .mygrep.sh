gp() {
	grep -rnI "$1" "${2:-.}"  --exclude tags;
}
