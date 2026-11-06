
__attribute__((noinline))
int calculate(int x, int y)
{
    volatile int offset = 7;
    volatile int result = x + y + offset;

    return result;
}

int main(void)
{
    volatile int a = 10;
    volatile int b = 20;

    volatile int answer = calculate(a, b);
    return answer;
}

