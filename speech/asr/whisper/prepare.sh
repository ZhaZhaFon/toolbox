pip config set global.index-url https://mirrors.aliyun.com/pypi/simple/ 
pip install -U openai-whisper
pip install torch==1.8.0 torchaudio==0.8.0 torchvision==0.8.2+cu110
pip install jiwer
pip install numpy==1.20.3
pip install setuptools-rust

mkdirs ../../../models
cd ../../../models
GIT_LFS_SKIP_SMUDGE=1 git clone https://hf-mirror.com/openai/whisper-base.en
cd whisper-base.en
rm flax_model.msgpack
wget https://hf-mirror.com/openai/whisper-base.en/resolve/main/flax_model.msgpack?download=true
mv 'flax_model.msgpack?download=true' flax_model.msgpack
rm model.safetensors
wget https://hf-mirror.com/openai/whisper-base.en/resolve/main/model.safetensors?download=true
mv 'model.safetensors?download=true' model.safetensors
rm pytorch_model.bin
wget https://hf-mirror.com/openai/whisper-base.en/resolve/main/pytorch_model.bin?download=true
mv 'pytorch_model.bin?download=true' pytorch_model.bin