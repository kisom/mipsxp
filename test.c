#include <stdio.h>
#include <stdlib.h>

long
bar(long baz)
{
	return baz + 1;
}

int
main(void)
{
	volatile long	foo = 0;
	volatile long	quux = 0;

	quux = bar(foo);
	return 0;
}
