#!/bin/bash

echo -e "\n------------------ bliss install script  ------------------"
cd /bliss/
git checkout user_training
conda config --add channels esrf-bcu
conda config --append channels conda-forge
conda config --append channels tango-controls
conda create --quiet --name demoenv --file pymca requirements-conda.txt --file requirements-test-conda.txt && conda clean -a -y
conda activate demoenv
pip install --no-deps -e .
