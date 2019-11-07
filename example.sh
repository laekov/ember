#!/bin/bash
localrank=$OMPI_COMM_WORLD_LOCAL_RANK
socket=$(expr $localrank % 2)

sst -v \
	-n 1 \
	--model-options "--topo=torus --shape=6x6x6 --cmdLine=\"Init\" --cmdLine=\"Halo2D iterations=1000 \" --cmdLine=\"Fini\" --statsModule=emberstat" \
	emberLoad.py 
