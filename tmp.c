#include <fcntl.h>
#include <stdio.h>

int
main(void)
{
	int filedes = open("tmp.out", O_CREAT|O_WRONLY, 0644);
	ssize_t wrsz = write(filedes, "hello", 5);
	return 0;
}
