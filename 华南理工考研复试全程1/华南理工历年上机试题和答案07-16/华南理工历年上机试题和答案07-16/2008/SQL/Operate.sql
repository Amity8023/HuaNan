INSERT INTO [test2008].[dbo].[Student]
           ([SNo]
           ,[SName]
           ,[sex]
           ,[ClassNo]
           ,[JoinYear])
     VALUES(@SNo, @SName,@sex,@ClassNo,@JoinYear)
GO

UPDATE [test2008].[dbo].[Student]
   SET [SName] = @SName
      ,[sex] = @sex
      ,[ClassNo] =@ClassNo
      ,[JoinYear] =@JoinYear
 WHERE SNo=@SNo
GO

--declare @ClassNo char(6)
--declare AllNum_Update cursor for
--select ClassNo from Student
--open AllNum_Update
--fetch AllNum_Update into @ClassNo
--while(@@FETCH_STATUS=0)
--begin
--update Class
--set AllNum=(select COUNT(*) from Student where ClassNo=@ClassNo)
--where ClassNo=@ClassNo
--end
--close AllNum_Update
--deallocate AllNum_Update
--��Ȼ����������������������ͳ�������һ���ˣ����������ͽ�͵�������
select  DeptID ѧԺ����,Sum(AllNum) ������
From Class
group by DeptID

select JoinYear ��ѧ���,COUNT(*) ����
from Student 
group by JoinYear

select *
from Student,Class,Department
where Student.ClassNo=Class.ClassNo and Class.DeptID=Department.DeptID 
and (Student.SName like '%%' or Class.ClassName like '%%' or Department.DeptName like '%%')