from collections import Counter
corpus='''low
lower
newest
widest
newest
widest
widest
widest
nice'''
import regex as re
# corpus=corpus.split('\n')
VOVAB_LENGTH=10
# corpus_char_counter=Counter(''.join((corpus)))
# print(dict(corpus_char_counter))

def get_status(corpus):
    # 统计相邻元素组成的序列(char1+char2)出现的频率, 找出最大者
    merge_chars=[]
    for item in corpus:
        char_list=item.split(' ')
        for i in range(len(char_list)-1):
            # 相邻元素组成一个序列
            merge_chars.append(''.join(char_list[i:i+2]))
            
    # 统计序列频率
    chars_count=Counter(merge_chars)
    most_common=chars_count.most_common(1)
    return most_common[0][0]

def merge_chars(corpus,chars_most_common):
    # 合并上一步得到的出现频率最大元素
    for idx,item in enumerate(corpus):
        _=re.sub('\s*'.join(chars_most_common),chars_most_common,item)
        corpus[idx]=_
    return corpus    

def init(words):
    # 词汇表初始化处理
    for idx,word in enumerate((words)):
        words[idx]=' '.join(list(word))+' </w>'
    return words
words=corpus.split('\n')
corpus=init((words))

while len(set(' '.join(corpus).split(' ')))>VOVAB_LENGTH:
    print('')
    print('本轮迭代的词汇表: ', corpus)
    most_common = get_status(corpus)
    print('最高频序列: ', most_common)

    corpus = merge_chars(corpus,most_common)
    print('合并后的词汇表: ', corpus)