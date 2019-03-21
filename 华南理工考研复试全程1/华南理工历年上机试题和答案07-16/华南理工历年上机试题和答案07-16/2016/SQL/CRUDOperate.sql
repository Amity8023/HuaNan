INSERT INTO [test2016].[dbo].[Student]
           ([SNo]
           ,[SName]
           ,[SDate]
           ,[ClassNo])
     VALUES(@SNo,@SName,@SDate,@ClassNo)
GO

UPDATE [test2016].[dbo].[Student]
   SET [SName] = @SName
      ,[SDate] =@SDate
      ,[ClassNo] =@ClassNo
 WHERE [SNo] = @SNo
GO

DELETE FROM [test2016].[dbo].[Student]
      WHERE [SNo] = @SNo
GO

SELECT [SNo]
      ,[SName]
      ,[SDate]
      ,[ClassNo]
  FROM [test2016].[dbo].[Student]
GO
SELECT [DeptNo]
      ,[DeptName]
  FROM [test2016].[dbo].[Department]
GO

select a.SName ѧ������,b.SpecName רҵ����,b.DeptNo ϵ���
from Student a,Class b
where a.ClassNo=b.CNo and a.SName like '%%'  and b.SpecName=''

SELECT [CNo]
      ,[SpecName]
      ,[Num]
      ,[CYear]
      ,[DeptNo]
  FROM [test2016].[dbo].[Class]
GO

select a.DeptNo ϵ���,b.DeptName ϵ����,SUM(a.Num) ������
from Class a,Department b
where a.DeptNo=b.DeptNo
group by a.DeptNo,b.DeptName

select CYear ��ѧ���,SUM(Num) ������
from Class
group by CYear