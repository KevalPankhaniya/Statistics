#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main()
{
	int iteration = 0;
	int p[5] = {0};
	int numberOfRedBalls = 0;
	int tempBall = 0;
	time_t t; 


	srand((unsigned)time(&t));

	printf("Enter the number of iteration that you want to execute:\n");
	scanf("%d",&iteration);
	
	while(iteration)
	{
		numberOfRedBalls = 0;

		for(int index = 0; index < 4; index++)
		{
			tempBall = rand()%2;
			if(tempBall == 0)
			{
				numberOfRedBalls++;
			}
		}

		if(numberOfRedBalls == 0)
		{
			p[0] = p[0] + 1;
		}
		else if(numberOfRedBalls == 1)
		{
			p[1] = p[1] + 1;
		}
		else if(numberOfRedBalls == 2)
		{
			p[2] = p[2] + 1;
		}
		else if(numberOfRedBalls == 3)
		{
			p[3] = p[3] + 1;
		}
		else if(numberOfRedBalls == 4)
		{
			p[4] = p[4] + 1;
		}
		else
		{
			printf("Wrong\n");
		}

		iteration--;
		
	}

	printf("%d %d %d %d %d\n",p[0],p[1],p[2],p[3],p[4]);
	return 0;
}
