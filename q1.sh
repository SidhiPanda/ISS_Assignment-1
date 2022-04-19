#!/bin/bash

awk 'NF' quotes.txt

sort quotes.txt | uniq -u