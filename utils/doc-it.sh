# used to turn the READMEs into a proper PDF for use later.

pandoc -s -S --toc --highlight-style pygments README.md led.md servo.md motor.md robot.md bluetooth.md -o README.pdf
