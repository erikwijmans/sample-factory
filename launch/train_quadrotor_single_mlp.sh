#!/bin/bash
python -m algorithms.appo.train_appo --env=quadrotor_single \
--train_for_seconds=3600000 \
--algo=APPO \
--gamma=0.99 \
--use_rnn=False \
--num_workers=20 \
--num_envs_per_worker=8 \
--num_policies=1 \
--ppo_epochs=1 \
--rollout=32 \
--recurrence=32 \
--batch_size=1024 \
--benchmark=False \
--with_pbt=False \
--experiment=quad_test_no_pbt_mlp \
--ppo_clip_ratio=0.05 \
--value_loss_coeff=2
