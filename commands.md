# Commands I've been using to iteratively run the network

```
nvidia-docker run -it -p 8888:8888 -v $(pwd):/external 3c1520b22532

cd /workspace/ && ln -s /external pytorch-CycleGAN-and-pix2pix && cd pytorch-CycleGAN-and-pix2pix && pip install -r requirements.txt

bash datasets/download_pix2pix_dataset.sh facades
bash scripts/download_pix2pix_model.sh facades_label2photo

python -m visdom.server &

python test.py --dataroot ./datasets/facades --name facades_label2photo_pretrained --model pix2pix --netG unet_256 --direction BtoA --dataset_mode aligned --norm batch
python test.py --dataroot ./datasets/facades --name facades_cyclegan_pretrained --model cycle_gan --phase test --no_dropout --n_iter 200 --viz_every 2


python test.py --dataroot ./datasets/maps --name maps_cyclegan_pretrained --model cycle_gan --phase test --no_dropout --dataset_mode aligned --norm batch --results_dir results/maps



```



