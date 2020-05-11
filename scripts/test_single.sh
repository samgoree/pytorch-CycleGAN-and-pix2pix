set -ex
python test.py --dataroot ./datasets/facades/testB/ --name facades_label2photo_pretrained --model test --netG unet_256 --direction BtoA --dataset_mode single --norm batch
