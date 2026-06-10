#!/bin/bash
subfinder -d $1 -silent | tee /dev/stderr | xargs -I {} sh -c 'echo {},$(dig +short {})' | grep -v ',$' > $1.txt
