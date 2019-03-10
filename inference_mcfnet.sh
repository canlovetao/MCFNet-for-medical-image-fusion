#!/usr/bin/env bash
CUDA_VISIBLE_DEVICES=0 python main.py \
    --output_dir ./data/output \
    --summary_dir ./result/log/ \
    --mode inference \
    --is_training False \
    --task mcfnet \
    --input_dir_l ./data/source1/ \
    --input_dir_r ./data/source2/ \
    --num_resblock 32 \
    --perceptual_mode VGG54 \
    --pre_trained_model True \
    --checkpoint ./mcfnet_pre-trained/model-200000
