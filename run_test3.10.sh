#!/bin/bash
if [ ! -d venv ]; then
  echo "venv hasn't been initialized. Running setup.sh"
  ./setup.sh
fi
source venv/bin/activate
echo "Running jupyter"
venv/bin/jupyter notebook src/DRL_assignment2.ipynb --no-browser --port 60266
echo "End of jupyter"
deactivate
