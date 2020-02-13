#include<stdio.h>

int main()
{
	long int seed = 6897 ;
	int n,random,i;
	printf("\nHow many number do you want to generate?\t");
	scanf("%d", &n);

	printf("\nRandom numbers are :");
	
	for(i=0;i<n;i++){
		seed = seed * seed;
		seed = seed/100;
		seed = seed % 10000;
		random = seed;
		printf("%d\t",random);
	}
	printf("\n");
	return 0;
}
