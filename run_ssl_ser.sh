python -m pdb train.py --data ./T_data/meld  --restore-file None --task emotion_prediction --reset-optimizer --reset-dataloader --reset-meters --init-token 0 --separator-token 2 --arch robertEMO_large --criterion emotion_prediction_cri --num-classes 1 --dropout 0.1 --attention-dropout 0.1 --weight-decay 0.1 --optimizer adam --adam-betas "(0.9, 0.98)" --adam-eps 1e-06 --clip-norm 0.0 --lr 1e-03 --max-epoch 32 --best-checkpoint-metric loss --encoder-layers 2 --encoder-attention-heads 4 --max-sample-size 150000 --max-tokens 150000000 --batch-size 4 --encoder-layers-cross 2 --max-positions-t 512 --max-positions-a 936 --max-positions-v 301 --no-epoch-checkpoints --update-freq 2 --find-unused-parameters --ddp-backend=no_c10d --lr-scheduler reduce_lr_on_plateau 


CUDA_VISIBLE_DEVICES=1 python validate.py --data ./T_data/emocap --path './checkpoints/checkpoint_best.pt' --task emotion_prediction --valid-subset test --batch-size 4

#fairseq/data/raw_audio_text_video_dataset.py