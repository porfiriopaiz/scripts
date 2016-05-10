#! /bin/bash
rm -rf ~/.josm/jar/josm-tested.jar
rm -rf ~/.josm/jar/josm-latest.jar
axel -n 10 https://josm.openstreetmap.de/josm-tested.jar -o ~/.josm/jar/josm-tested.jar
axel -n 10 https://josm.openstreetmap.de/josm-latest.jar -o ~/.josm/jar/josm-latest.jar
