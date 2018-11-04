for i in */;
	do tar -cvf "${i%/}.tar" "$i";
done
