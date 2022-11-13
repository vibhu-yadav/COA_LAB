#include <stdio.h>

void swap(int* a,int *b)
{

    printf("Swapping : %d, %d \n",*a,*b);

    int temp = *a;
    *a = *b;
    *b = temp;
}

void recursive_sort(int* A,int left,int right)
{
    int l = left;
    int r = right;
    int p = left;

    printf("%d,%d\n",left,right);

    while(l < r){

        printf("\n%d,%d\n\n",l,r);

        while(A[l] <= A[p] && l < right)
            l++;
        while(A[r] >= A[p] && r > left)
            r--;

        if(l >= r){
            swap(&A[p],&A[r]);
            // printf("Recursive Sort1\n");
            recursive_sort(A,left,r-1);
            // printf("Recursive Sort2\n");
            recursive_sort(A,r+1,right);
            return;
        }
        swap(&A[l],&A[r]);
    }
}

int main()
{
    printf("Enter a array of 10 numbers: ");
    int array[10];

    for(int i=0;i<10;i++) scanf("%d",&array[i]);

    recursive_sort(array,0,9);

    printf("Sorted Array: ");
    for(int i=0;i<9;i++) printf(" %d, ",array[i]);

    printf(" %d\n",array[9]);
}