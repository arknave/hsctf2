#include <stdio.h>
#include <math.h>

int main() {
    long long x = 0LL;
    long long y = 1LL;

    long long sum = 0LL;
    while (1) {
        long long m = y;
        long long n = sqrt(1LL + 2LL * m * m) - m;

        long long a = m * m - n * n;
        long long b = 2LL * m * n;

        if (a > 9999999997LL) break;
        printf("%lld %lld\n", a, b);
        sum += (a < b ? a : b);

        long long temp = 2LL * y + x;
        x = y;
        y = temp;
    }

    printf("%lld\n", sum);

    return 0;
}
