#include <stdio.h>
#include <stdlib.h>

void Insert_Sort(int *arr,int len)
{
	int i,j;
	for(i=1;i<len;i++)
		if(arr[i]<arr[i-1])	//��һ����С��ǰһ���� 
		{	
			//��ǰ����Ƚϣ�ֱ����Ҫ����ĵط� 
			int key=arr[i];		//Ҫ�����Ԫ�� 
			for(j=i-1;j>=0&&arr[j]>key;j--)
				arr[j+1]=arr[j];	//����Ԫ�� 
			arr[j+1]=key; 	
		} 	
 } 
 
 int main()
{
	int num;
	printf("������Ҫ�����Ԫ�ظ�����",num);
	scanf("%d",&num);
	printf("������Ҫ�����Ԫ�أ�");
	int *arr=(int*)malloc(num*(sizeof(int)));
	int i;
	for(i=0;i<num;i++)
		scanf("%d",arr+i);
	Insert_Sort(arr,num);
	printf("ֱ�Ӳ���������˳��Ϊ��");
	for(i=0;i<num;i++)
		printf("%d ",arr[i]); 
	free(arr);
	arr=0;	
	return 0;
}
