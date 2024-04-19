cd /home/zzf/playground/hf-models
GIT_LFS_SKIP_SMUDGE=1 git clone https://hf-mirror.com/THUDM/chatglm2-6b
cd chatglm2-6b
rm pytorch_model-0000*
wget https://hf-mirror.com/THUDM/chatglm2-6b/resolve/main/pytorch_model-00001-of-00007.bin?download=true
wget https://hf-mirror.com/THUDM/chatglm2-6b/resolve/main/pytorch_model-00002-of-00007.bin?download=true
wget https://hf-mirror.com/THUDM/chatglm2-6b/resolve/main/pytorch_model-00003-of-00007.bin?download=true
wget https://hf-mirror.com/THUDM/chatglm2-6b/resolve/main/pytorch_model-00004-of-00007.bin?download=true
wget https://hf-mirror.com/THUDM/chatglm2-6b/resolve/main/pytorch_model-00005-of-00007.bin?download=true
wget https://hf-mirror.com/THUDM/chatglm2-6b/resolve/main/pytorch_model-00006-of-00007.bin?download=true
wget https://hf-mirror.com/THUDM/chatglm2-6b/resolve/main/pytorch_model-00007-of-00007.bin?download=true
mv pytorch_model-00001-of-00007.bin?download=true pytorch_model-00001-of-00007.bin
mv pytorch_model-00002-of-00007.bin?download=true pytorch_model-00002-of-00007.bin
mv pytorch_model-00003-of-00007.bin?download=true pytorch_model-00003-of-00007.bin
mv pytorch_model-00004-of-00007.bin?download=true pytorch_model-00004-of-00007.bin
mv pytorch_model-00005-of-00007.bin?download=true pytorch_model-00005-of-00007.bin
mv pytorch_model-00006-of-00007.bin?download=true pytorch_model-00006-of-00007.bin
mv pytorch_model-00007-of-00007.bin?download=true pytorch_model-00007-of-00007.bin

rm tokenizer.model
wget https://hf-mirror.com/THUDM/chatglm2-6b/resolve/main/tokenizer.model?download=true
mv tokenizer.model?download=true tokenizer.model