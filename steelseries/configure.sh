#!/bin/bash

### Configuration for my mouse ###
#** Mostly because the default has:
#** 
#** 1. The fwd thumb button bound to `F5`
#** 2. Very bright rainbow lighting

# -- Lighting -- #
rivalcfg --default-lighting off    		# Kill the rainbow

bottom_color="000000"	# You can see this LED 	: Disabled
middle_color="010105"	# Under-glow  		: dim blue
top_color="111111" 	# Background lighting	: Faint gray

cmd="
rivalcfg --bottom-color="$bottom_color"
rivalcfg --middle-color="$bottom_color"
rivalcfg --top-color="$top_color"
"
echo "**  Running Lighting Commands  **$cmd "

# Run it -->
echo "$cmd" | bash

# -- Bindings -- #
layout="QWERTY" # When mapping buttons to keyboard keys

button1="button1" # Left click
button2="button2" # Right click
button3="button3" # Middle click
button4="button4" # Rear thumb button
button5="button5" # Front thumb button
button6="button6" # Center top button (DPI)
button7="button7" # Thumb toggle up
button8="button8" # Thumb toggle down
button9="PauseBreak" # Forward thumb button (big silver one)

scroll_down="scrollDown" 	# Scroll down
scroll_up="scrollUp" 		# Scroll up

# ----------- #
# Run it -->
args="\
buttons(\
layout=$layout; \
button1=$button1; \
button2=$button2; \
button3=$button3; \
button4=$button4; \
button5=$button5; \
button6=$button6; \
button7=$button7; \
button8=$button8; \
button9=$button9\
)"

cmd="rivalcfg --buttons $args"

echo "**  Running Key Binding Command  **
$cmd"
rivalcfg --buttons "$args"
# ----------- #
