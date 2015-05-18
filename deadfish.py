def main():
    acc = 0
    command = raw_input()
    for c in command:
        if acc == 256 or acc < 0:
            acc = 0
        if c == 'i':
            acc += 1
        elif c == 'd':
            acc -= 1
        elif c == 'o':
            print acc
        elif c =='s':
            acc *= acc
        else:
            print 'Unrecognized character', c

if __name__ == '__main__':
    main()
