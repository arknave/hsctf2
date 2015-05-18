def calc(k, v, s):
    a = ord(k) - ord('a')
    b = ord(v) - ord('a')
    if b < a:
        b += 26
    diff = b - a
    ans = ord(s) + diff 
    if ans > ord('z'):
        ans -= 26

    return chr(ans)
    
