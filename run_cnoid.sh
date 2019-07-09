#!/bin/bash

pkill -9 choreonoid
##trap "pkill choreonoid -g 0" SIGINT SIGKILL SIGTERM

echo $@ >&2

AIZU_DIR=$(rospack find aizuspider_description)
if [ CNOID_TASK == "TASK_A" ]; then
    ln -sf ${AIZU_DIR}/Task3-Agent-System2019_a.cnoid ${AIZU_DIR}/Task3-Agent-System2019.cnoid
else
    ln -sf ${AIZU_DIR}/Task3-Agent-System2019_b.cnoid ${AIZU_DIR}/Task3-Agent-System2019.cnoid
fi

choreonoid --start-simulation $@
