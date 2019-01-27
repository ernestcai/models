#!/bin/bash

#PBS -N gpu25
#PBS -e err_gen.txt
#PBS -o out_gen.txt
#PBS -l nodes=sist-gpu25
#PBS -q sist

cd /public/sist/home/caijx/tf_playground/models/research
python object_detection/dataset_tools/create_pet_tf_record.py --faces_only=False --label_map_path=object_detection/data/pet_label_map.pbtxt --data_dir=/public/sist/home/caijx/data/pets --output_dir=/public/sist/home/caijx/data/pets
