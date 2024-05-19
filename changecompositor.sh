#!/bin/bash

# Run the nvidia-settings command and store the output
meta_mode=$(nvidia-settings --query CurrentMetaMode)

# Check if the output contains "ForceFullCompositionPipeline=On"
if [[ $meta_mode == *"ForceFullCompositionPipeline=On"* ]]; then
    nvidia-settings -a CurrentMetaMode="nvidia-auto-select +0+0 { ForceFullCompositionPipeline=Off }"
else
    nvidia-settings -a CurrentMetaMode="nvidia-auto-select +0+0 { ForceFullCompositionPipeline=On }"
fi

