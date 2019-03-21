INSERT INTO [emp].[dbo].[Employee]
           ([EmpID]
           ,[EmpName]
           ,[EPlace])
     VALUES(@EmpID,@EmpName,@EPlace)
GO

DELETE FROM [emp].[dbo].[Employee]
       WHERE [EmpID] = @EmpID
GO

UPDATE [emp].[dbo].[Employee]
   SET [EmpName] = @EmpName
      ,[EPlace] = @EPlace
 WHERE [EmpID] = @EmpID
GO

SELECT [EmpID]
      ,[EmpName]
      ,[EPlace]
  FROM [emp].[dbo].[Employee]
GO

select a.EmpID Ա����,b.EmpName Ա������,c.CName ��˾����,c.CPlace ��˾���ڵ�,
from Works a,Employee b,Company c
where a.CID=c.CID and a.EmpID=b.EmpID and b.EmpName=@EmpName

select EmpID,Salary �ܹ���
from Works
where CID=(select CID from Company where CName=@CName)

select EmpID,SUM(Salary) ����
from Works
group by EmpID
having COUNT(*)>1