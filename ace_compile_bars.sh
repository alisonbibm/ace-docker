#!/bin/bash

# © Copyright IBM Corporation 2018.
#
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v2.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v20.html

if [ -z "$MQSI_VERSION" ]; then
  source /opt/ibm/ace-12/server/bin/mqsiprofile
fi

if ls /home/aceuser/bars/*.bar >/dev/null 2>&1; then
  for bar in /home/aceuser/bars/*.bar
  do
    mqsibar -a $bar -w /home/aceuser/ace-server -c
  done
fi
