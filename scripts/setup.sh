#!/usr/bin/env bash


checkoutFolder="/etc/motion"  # without tailing slash
webServerRoot="/var/www/html" # without tailing slash
webServerUser="www-data"      # without tailing slash
liveFolder="/run/shm/live/"   # with tailing slash

scriptFolder=$(printf "%s/scripts/" ${checkoutFolder})
pythonFolder=$(printf "%s/python/" ${checkoutFolder})
webFolder=$(printf "%s/web/" ${checkoutFolder})
tempFolder=$(printf "%s/temp/" ${checkoutFolder})
outputFolder=$(printf "%s/output/" ${checkoutFolder})
failFolder=$(printf "%s/fail/" ${checkoutFolder})
eventFolder=$(printf "%sevents/" ${webFolder})

export MOTION_CAMERA_ROTATION=180
export MOTION_CAMERA_SATURATION=20
export MOTION_CAMERA_SHARPNESS=20

export MOTION_NIGHT_MODE_ALLOWED="True"
export MOTION_NIGHT_MODE_START_H=19
export MOTION_NIGHT_MODE_START_M=30
export MOTION_NIGHT_MODE_END_H=5
export MOTION_NIGHT_MODE_END_M=30

export MOTION_LIVE_REFRESH_INTERVAL_SECONDS=5

export MOTION_SCRIPTS=${scriptFolder}
export MOTION_PYTHON=${pythonFolder}
export MOTION_TEMP=${tempFolder}
export MOTION_OUTPUT=${outputFolder}
export MOTION_FAIL=${failFolder}
export MOTION_WEB=${webFolder}
export MOTION_EVENT=${eventFolder}
export MOTION_LIVE=${liveFolder}
export MOTION_WEB_USER=${webServerUser}
export MOTION_WEB_ROOT=${webServerRoot}