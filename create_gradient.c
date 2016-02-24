#include <stdio.h>
#include <stdlib.h>

/*
 *	./create_gradient r1 g1 b1 r2 g2 b2 size [variable_name]
 *
 *	rgb1 & rgb2 should be between 0 and 255
 *	size > 2
 *	result is not garanted otherwise
 */

int main(int argc, char **argv)
{
	int		c1[3];
	int		c2[3];
	int		result[3];
	int		size;
	int		i = 0;
	double	t;

	if (argc < 8)
	{
		printf("Not enough arg");
		return (-1);
	}
	c1[0] = atoi(argv[1]);
	c1[1] = atoi(argv[2]);
	c1[2] = atoi(argv[3]);
	c2[0] = atoi(argv[4]);
	c2[1] = atoi(argv[5]);
	c2[2] = atoi(argv[6]);
	size = atoi(argv[7]);
	while (i < size)
	{
		t = i / (double) size;
		if (argc == 9)
			printf("%s[%d] = ", argv[8], i);
		else
			printf("color[%d] = ", i);
		result[0] = (1 - t) * c1[0] + t * c2[0];
		result[1] = (1 - t) * c1[1] + t * c2[1];
		result[2] = (1 - t) * c1[2] + t * c2[2];
		printf("%d;\n", (result[0] << 16) + (result[1] << 8) + result[2]);
		i++;
	}
	return (0);
}
