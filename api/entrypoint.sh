#!/bin/bash

echo "   _  __                _  _              "
echo "  | |/ /_ _  _____ __ _| || |_____ __ __  "
echo "  | ' <| ' \/ _ \ V  V | __ / _ \ V  V /  "
echo "  |_|\_|_||_\___/\_/\_/|_||_\___/\_/\_/   "

python /src/manage.py migrate

exec "$@"

