for i in */;
	do echo "# $i" >> git_remotes.txt ; git -C $i remote -v >> git_remotes.txt
done
