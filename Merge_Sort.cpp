#include <stdio.h>
#include <stdlib.h>

//���������������й鲢���� 
Merge(int *arr,int *brr,int left,int mid,int right)
{
	for(int i=left;i<=right;i++)//��arr���Ƶ�brr�� 
		brr[i]=arr[i];
	int s1=left;
	int s2=mid+1;
	int k=left;
	while(s1<=mid&&s2<=right)	
	{
		if(brr[s1]<=brr[s2])
			arr[k++]=brr[s1++];
		else
			arr[k++]=brr[s2++];
	}
	while(s1<=mid)//�����δ�鲢�� 
	{
		arr[k++]=brr[s1++];
	}
	while(s2<=right)//�ұ���δ�鲢�� 
	{
		arr[k++]=brr[s2++];
	}
	
 } 

void Merge_Sort(int *arr,int *brr,int left,int right)
{
	if(left>=right)
		return ;
	int mid=(left+right)/2;
	Merge_Sort(arr,brr,left,mid);//��������й鲢���� 
	Merge_Sort(arr,brr,mid+1,right);//���ұ����й鲢���� 
	Merge(arr,brr,left,mid,right);//���������������й鲢���� 
	
}

int main()
{
	int num;
	printf("������Ҫ�����Ԫ�صĸ�����");
	scanf("%d",&num);
	int *arr=(int *)malloc(num*sizeof(int));
	int *brr=(int *)malloc(num*sizeof(int));
	int i;
	for(i=0;i<num;i++)
		scanf("%d",arr+i);
	printf("������˳��Ϊ��");
	Merge_Sort(arr,brr,0,num-1);
	for(i=0;i<num;i++)
		printf("%d ",arr[i]);
}
