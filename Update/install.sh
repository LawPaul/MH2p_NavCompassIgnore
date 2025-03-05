#!/bin/ksh
# Copyright (c) 2025 LawPaul (https://github.com/LawPaul)
# This file is part of MH2p_NaviCompassIgnore, licensed under CC BY-NC-SA 4.0.
# https://creativecommons.org/licenses/by-nc-sa/4.0/
# See the LICENSE file in the project root for full license text.
# NOT FOR COMMERCIAL USE

[[ ! -e "/mnt/app" ]] && mount -t qnx6 /dev/mnanda0t177.1 /mnt/app
mount -uw /mnt/app

if [ "$OEM" = "AU" ]; then
    if [[ -e "/mnt/app/eso/hmi/lsd/jars" ]]; then
        if [[ -f "$MOD_PATH/NaviCompass.jar" ]]; then
            echo "Modding navigation compass ignore for Audi..."
            cp -Vf "$MOD_PATH/NaviCompass.jar" "/mnt/app/eso/hmi/lsd/jars/NaviCompass.jar"
        else
            echo "error: cannot find $MOD_PATH/NaviCompass.jar"
        fi
    else
        echo "error: /mnt/app/eso/hmi/lsd/jars does not exist"
    fi
else
    echo "error: $OEM unsupported"
fi