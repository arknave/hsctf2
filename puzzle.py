a = [-3, 0, 4, -8, 20, -13, 3, -2, 6, 6, -19, 13, -17, 17, -13, -1, 10, -5, 7, 8, -10, -10, 20, -26, 10, -6, 3, 19, -4, 2, -11, 0, 3, -5, 7] 
b = [0]
for x in a:
    b.append(b[-1] - x)

for i in xrange(97, 123):
    c = map(lambda x: x + i, b)
    if sum(c) == 3842:
        print ''.join(map(chr, c))
