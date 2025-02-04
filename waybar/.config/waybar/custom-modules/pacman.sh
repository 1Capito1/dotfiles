#!/bin/bash

updates=$(yay -Qu | wc -l);
critical=$(yay -Qu | grep -E 'linux|glibc|systemd' | wc -l);

if [[ "$updates" -eq 0 ]]; then
    echo "✔"
elif [[ "$critical" -gt 0 ]]; then
    echo "$updates "
else
    echo "$updates 󱧕"
fi

