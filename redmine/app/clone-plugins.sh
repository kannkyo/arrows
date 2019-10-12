#!/bin/bash

cat plugin-list.txt | while read line; do git clone $line; done
