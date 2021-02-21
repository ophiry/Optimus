import pandas

df = pandas.read_csv('~/fake_news/kaggle/train.csv')

df1 = pandas.DataFrame(pandas.concat([df.positives[:20], df.negatives[:20]]))
df1.to_csv('~/fake_news/kaggle/train_optimus.txt', index=False, header=False)