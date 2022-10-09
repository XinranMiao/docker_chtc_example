#!/bin/bash
source /opt/miniconda/bin/activate
eval "$(conda shell.bash hook)"
conda activate example
python3 -c "import torch;print(torch.cuda.is_available())"