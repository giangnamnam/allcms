
/************Add 2 column to Product Repair*/

ALTER TABLE ProductRepair
ADD MemoDeposited nvarchar(100) NULL
GO
ALTER TABLE ProductRepair
ADD MemoRemainder nvarchar(100) NULL

