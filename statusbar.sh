#!/bin/bash

nvidiastatus() {
meta_mode=$(nvidia-settings --query CurrentMetaMode)

if [[ $meta_mode == *"ForceFullCompositionPipeline=On"* ]]; then
    echo "ON"
else
    echo "OFF"
fi
}

timemodule() {
	date +"%H:%M"
}

while true; do
	xsetroot -name "$(nvidiastatus) $(timemodule)"
	sleep 1
done
