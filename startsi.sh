#!/bin/bash
#
# Do not remove or rename this script. It is in use by the UNIX team for a system service to start/stop Sterling!!
#
# Service name: si_server.service
#
/si/IBM/SI/install/bin/hardstop.sh
/si/IBM/SI/install/bin/run.sh
/si/IBM/SI/install/bin/control_extpurge.sh start
