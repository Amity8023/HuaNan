#include <stdio.h>
#include <stdlib.h>

int Partition(int *arr,int low,int high)
{
	int pk=arr[low];	//�����һ��Ԫ��Ϊ����Ԫ�� 
	while(low<high)
	{
		while(low<high&&arr[high]>=pk)	//���������ұ�����Ԫ��С��Ԫ�� 
			high--;
		arr[low]=arr[high];		
		while(low<high&&arr[low]<pk)	//���������ұ�����Ԫ�ش��Ԫ�� 
			low++;
		arr[high]=arr[low];
	}
	arr[low]=pk;	//һ�����������Ԫ�ص�����λ�� 
	return low;	//��������Ԫ���±� 
}

void Quick_Sort(int *arr,int low,int high)
{
	if(low<high)
	{
		int pkloc=Partition(arr,low,high);//������Ԫ�ص�λ�� 
		Quick_Sort(arr,low,pkloc-1);//����Ԫ������������ 
		Quick_Sort(arr,pkloc+1,high);//����Ԫ������������ 
	}
 } 
 
 
 int main()
 {
 	int num;
 	printf("�����������Ԫ�صĸ���:");
 	scanf("%d",&num);
 	int i;
 	int *arr=(int*)malloc(num*(sizeof(int)));//��������ռ�
	
 	for(i=0;i<num;i++) 
 		scanf("%d",arr+i);
	
 	printf("����������˳��");
 	Quick_Sort(arr,0,num-1);
	
 	for(i=0;i<num;i++)
 		printf("%d ",arr[i]);
 	printf("\n");
 	
 	free(arr);
 	arr=0;
 	return 0;
 }
