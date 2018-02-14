#!/usr/bin/env bash
sed $'s/\r$//' ./gulp_bash.sh > ./gulp_bash.unix.sh && source ./gulp_bash.unix.sh