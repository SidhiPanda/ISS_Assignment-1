#!/bin/bash

awk 'NF' quotes.txt | awk -F'~' '{print $2, "once said, \"", $1, "\"."}' > speech.txt