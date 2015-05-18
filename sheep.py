def cross_product(p1, p2, p3):
    """counter-clockwise if > 0, clockwise if < 0 and collinear if == 0"""
    return (p2[0] - p1[0])*(p3[1] - p1[1]) - (p2[1] - p1[1])*(p3[0] - p1[0])

def graham_scan(points):
    points = sorted(points)
    print "\nsorted", points

    lower = []
    for p in points:
        while len(lower) >= 2 and cross_product(lower[-2], lower[-1], p) <= 0:
            lower.pop()
        lower.append(p)

    upper = []
    for p in reversed(points):
        while len(upper) >= 2 and cross_product(upper[-2], upper[-1], p) <= 0:
            upper.pop()
        upper.append(p)

    return lower[:-1] + upper[:-1]

def calc_area(points):
    n = len(points)
    area = points[-1][0]*points[0][1] - points[0][0]*points[-1][1]

    for i in xrange(1, n - 1):
        area += points[i][0] * points[i + 1][1] - points[i + 1][0] * points[i][1]

    area = abs(area)
    area /= 2.0
    return area

def solve(points):
    return calc_area(graham_scan(points)) - calc_area(points)

def main():
    fin = open('sheep.in', 'r')
    lines = fin.readlines()
    fin.close()
    lines = map(lambda x: map(int, x[:-1].split()), lines)
    lines = map(lambda l: (l[0], l[1]), lines)

    #print calc_area(lines)
    test1 = [(0, 0), (1, 0), (0, 1)] 
    test2 = [(0, 0), (1, -1), (0, 1), (-1, -1)]
    print test1, calc_area(test1), graham_scan(test1), calc_area(graham_scan(test1)), solve(test1)
    print test2, calc_area(test2), graham_scan(test2), calc_area(graham_scan(test2)), solve(test2)

if __name__ == '__main__':
    main()
