from functools import partial
from collections import Counter

from nltk.corpus import stopwords
from nltk.tokenize import RegexpTokenizer
from nltk.stem import WordNetLemmatizer

import matplotlib.pyplot as plt
from wordcloud import WordCloud

def make_wordcloud(filename, titles):
    print filename, ' make_wordcloud'
    counts = Counter()
    for t in titles:
        counts.update(t)
    pairs = [(w, c) for (w, c) in counts.items() if c > 1]
    wordcloud = WordCloud(background_color=None, mode='RGBA',
                          random_state=42).generate_from_frequencies(pairs)
    print counts
    plt.figure()
    plt.imshow(wordcloud)
    plt.axis("off")
    plt.savefig(filename, bbox_inches='tight')


def tokenize_text(stopwords, text):
    ''' split text, stem word, remove stopwords '''
    lemma = WordNetLemmatizer()

    tokenizer = RegexpTokenizer(r'\w+')
    return [lemma.lemmatize(w.lower()) for w in tokenizer.tokenize(text)
            if w.lower() not in stopwords]


if __name__ == '__main__':

    stopwords = set(stopwords.words('english'))
    stopwords.add('using')

    new_tokenizer = partial(tokenize_text, stopwords)
    fin, fout = 'paper-titles.txt', 'wordcloud.png'

    with open(fin) as f:
        titles = [new_tokenizer(line) for line in f]
        make_wordcloud(fout, titles)
