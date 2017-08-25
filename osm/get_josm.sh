#! /bin/bash
mkdir ~/.cache/JOSM/jar/
axel -n 10 https://josm.openstreetmap.de/josm-tested.jar -o ~/.cache/JOSM/jar/josm-tested.jar
axel -n 10 https://josm.openstreetmap.de/josm-latest.jar -o ~/.cache/JOSM/jar/josm-latest.jar
