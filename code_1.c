#include<stdio.h>

int main() {
	int a,b;
	printf("Enter the number:");
	scanf("%d %d", &a, &b);
	printf("Sum is %d", (a+b));
	return 0;
	}
	
// gcc code_1.c -o code_1.out
// ./code_1.out