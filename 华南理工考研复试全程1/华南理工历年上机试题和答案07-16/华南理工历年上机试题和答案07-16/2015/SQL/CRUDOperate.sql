INSERT INTO [test2015].[dbo].[EMPLOYEE]
           ([EmpNo]
           ,[EmpName]
           ,[EmpSex]
           ,[EmpAge])
     VALUES(@EmpNo,@EmpName,@EmpSex,@EmpAge)
GO

UPDATE [test2015].[dbo].[EMPLOYEE]
   SET [EmpName] = @EmpName
      ,[EmpSex] = @EmpSex
      ,[EmpAge] = @EmpAge
 WHERE [EmpNo] = @EmpNo
GO
DELETE FROM [test2015].[dbo].[EMPLOYEE]
      WHERE [EmpNo] = @EmpNo
GO

SELECT [EmpNo]
      ,[EmpName]
      ,[EmpSex]
      ,[EmpAge]
  FROM [test2015].[dbo].[EMPLOYEE]
GO

select c.EmpName Ա������,b.CmpName ��˾��,a.Salary нˮ
from WORKS a,COMPANY b,EMPLOYEE c
where a.CmpNo=b.CmpNo and c.EmpNo=a.EmpNo and c.EmpNo=@EmpNo

select b.EmpName ,SUM(Salary) нˮ
from WORKS a,EMPLOYEE b
where a.EmpNo=b.EmpNo and b.EmpAge>=40
group by b.EmpNo ,b.EmpName
order by нˮ desc


select c.EmpName Ա������,b.CmpName ��˾��
from WORKS a,COMPANY b,EMPLOYEE c
where a.CmpNo=b.CmpNo and c.EmpNo=a.EmpNo and c.EmpNo in(select EmpNo
														from WORKS
														group by EmpNo
														having COUNT(*)>1)
