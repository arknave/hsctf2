fin = open('markovhaystack.txt', 'r')
lines = map(lambda x: x[:-1], fin.readlines())
wordmap = {}
for i, line in enumerate(lines):
    for word in line.split():
        if word in wordmap:
            wordmap[word].add(i)
        else:
            wordmap[word] = set([i])

print [word for word in wordmap.keys() if len(wordmap[word]) <= 1]
