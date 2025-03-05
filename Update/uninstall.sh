#!/bin/ksh
# Copyright (c) 2025 LawPaul (https://github.com/LawPaul)
# This file is part of MH2p_NaviCompassIgnore, licensed under CC BY-NC-SA 4.0.
# https://creativecommons.org/licenses/by-nc-sa/4.0/
# See the LICENSE file in the project root for full license text.
# NOT FOR COMMERCIAL USE

[[ ! -e "/mnt/app" ]] && mount -t qnx6 /dev/mnanda0t177.1 /mnt/app
echo "Mounting /mnt/app in r/w mode..."
mount -uw /mnt/app
if [[ -e "/mnt/app/eso/hmi/lsd/jars" ]]; then
    echo "Unmodding navigation compass ignore..."
    rm -f "/mnt/app/eso/hmi/lsd/jars/NaviCompass.jar"
else
    echo "error /mnt/app/eso/hmi/lsd/jars does not exist"
fi