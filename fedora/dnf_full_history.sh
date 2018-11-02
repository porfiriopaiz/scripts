#! /bin/bash
for i in {1..178};
	do dnf history info $i >> $(echo $XDG_CURRENT_DESKTOP)_history;
done
