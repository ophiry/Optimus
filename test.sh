#!/bin/sh
export PYTHONPATH="${PYTHONPATH}:/Users/ophir/dev/Optimus/code"
export TRAIN_FILE=/Users/ophir/dev/Optimus/data/datasets/debug_data/train.txt
export TEST_FILE=/Users/ophir/dev/Optimus/data/datasets/debug_data/test.txt
export GPU_ID=1

#CUDA_VISIBLE_DEVICES=$GPU_ID 
python code/examples/big_ae/run_latent_generation.py \
    --dataset Debug \
    --checkpoint_dir=/Users/ophir/fake_news/checkpoint-31250 \
    --output_dir=/Users/ophir/fake_news/checkpoint-31250 \
    --encoder_model_type=bert \
    --encoder_model_name_or_path=bert-base-cased \
    --decoder_model_type=gpt2 \
    --decoder_model_name_or_path=gpt2 \
    --train_data_file=/Users/ophir/dev/Optimus/data/datasets/debug_data/train.txt \
    --eval_data_file=/Users/ophir/dev/Optimus/data/datasets/debug_data/test.txt \
    --per_gpu_eval_batch_size=1 \
    --gloabl_step_eval 31250 \
    --block_size 100 \
    --max_seq_length 100 \
    --latent_size 768 \
    --play_mode interpolation \
    --num_interpolation_steps 10