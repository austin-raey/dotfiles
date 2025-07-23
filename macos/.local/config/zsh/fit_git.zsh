# For me if copying a backup from a ExFAT drive
function __fix_git() {
	git diff -p \
		| grep -E '^(diff|old mode|new mode)' \
		| sed -e 's/^old/NEW/;s/^new/old/;s/^NEW/new/' \
		| git apply
}
