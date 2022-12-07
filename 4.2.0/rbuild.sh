#!/bin/bash

# Copyright © 2021-2022 Pittsburgh Supercomputing Center.
# All Rights Reserved.

IMAGE=singularity-libtiff-tools-4.2.0.sif
DEFINITION=Singularity

if [ -f $IMAGE ]; then
	rm -fv $IMAGE
fi

singularity build --remote $IMAGE $DEFINITION
