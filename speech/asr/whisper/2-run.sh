whisper --fp16 False --device cuda ./audio/jfk.flac
mv jfk* ./audio
echo ''

whisper --language Chinese --fp16 False --device cuda ./audio/chinese-aishell1-1.wav ./audio/chinese-aishell1-2.wav ./audio/chinese-aishell1-3.wav
mv chinese-* ./audio
echo ''

whisper --language English --fp16 False --device cuda ./audio/english-librispeech-1.flac ./audio/english-librispeech-2.flac ./audio/english-librispeech-3.flac
mv english-* ./audio
echo ''