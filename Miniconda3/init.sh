#!/bin/bash

# run scripts in /init.d
for script in /init.d/*;
do
    ${script}
done
