#!/bin/bash

# Make sure globstar is enabled
shopt -s globstar
for file in buildpacks/*/buildpack.toml; do
    echo -e "\n[[stacks]]\nid = \"io.buildpacks.stacks.bionic\"" >> "$file"
done

#mv buildpacks/hello-world/* ./;
