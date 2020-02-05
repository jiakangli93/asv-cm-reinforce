#!/bin/bash
# Render average improvement curves
# over different experiments

for pg_reward in "simple" "penalize" "reward" "tdcf"
do
    ./scripts/render_metrics_average_paper.sh \
        joint_rl_pg_${pg_reward}_epochs_50_repetition_1 \
        joint_rl_pg_${pg_reward}_epochs_50_repetition_2 \
        joint_rl_pg_${pg_reward}_epochs_50_repetition_3
done

for ce_train in "ce_same" "ce_split"
do
    ./scripts/render_metrics_average_paper.sh \
        joint_rl_${ce_train}_epochs_50_repetition_1 \
        joint_rl_${ce_train}_epochs_50_repetition_2 \
        joint_rl_${ce_train}_epochs_50_repetition_3
done
