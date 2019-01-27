#!/bin/bash

#PBS -N gpu25
#PBS -e err_run_maskrcnn.txt
#PBS -o out_run_maskrcnn.txt
#PBS -l nodes=sist-gpu25
#PBS -q sist

cd /public/sist/home/caijx/tf_playground/models/research

# From the tensorflow/models/research/ directory
PIPELINE_CONFIG_PATH=/public/sist/home/caijx/tf_playground/models/research/object_detection/samples/configs_server/mask_rcnn_resnet101_pets.config
MODEL_DIR=~/results
NUM_TRAIN_STEPS=500000
SAMPLE_1_OF_N_EVAL_EXAMPLES=1
python object_detection/model_main.py \
    --pipeline_config_path=${PIPELINE_CONFIG_PATH} \
    --model_dir=${MODEL_DIR} \
    --num_train_steps=${NUM_TRAIN_STEPS} \
    --sample_1_of_n_eval_examples=$SAMPLE_1_OF_N_EVAL_EXAMPLES \
    --alsologtostderr