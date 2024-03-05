#!/bin/bash

set -eux

URL='https://github.com/Krishna-kanth95/ghar-file-sync'

TOKEN='AWLDS6HBV6SRFHHSOBNEYI3F42QDM'

# Create the runner and start the configuration experience
$ ./config.sh --url $URL --token $TOKEN

# Last step, run it!
$ ./run.sh
