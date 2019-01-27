#!/bin/bash

#PBS -N gpu25
#PBS -e err_test_install.txt
#PBS -o out_test_install.txt
#PBS -l nodes=sist-gpu25
#PBS -q sist

cd /public/sist/home/caijx/tf_playground/models/research
python object_detection/builders/model_builder_test.py
