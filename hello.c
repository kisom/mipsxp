#include <stdio.h>

int
main(void)
{
	int	foo	= 1;
	int	bar	= 2;
	int	baz	= 3;
	int	quux	= 4;
	printf("foo: %d %d %d %d\n", foo, bar, baz, quux);
	bar++;
	return 0;
}
