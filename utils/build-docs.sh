#!/bin/sh

# Builds the relevant docs as needed.

# run from project root as utils/build-docs.sh

cd exercises
pandoc -s -S --highlight-style pygments -t html5 --toc --toc-depth=2  -c ../css/styles.css -o README.html led.md servo.md motor.md robot.md bluetooth.md

cd ..
pandoc -s -S --highlight-style pygments -t html5 --toc -c css/styles.css -o README.html README.md

cd physical
pandoc -s -S -t html5 --toc -c ../css/styles.css -o README.html README.md
