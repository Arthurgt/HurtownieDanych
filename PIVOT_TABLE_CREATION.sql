select * into [HD].[dbo].[PIVOT]
from [HD].[dbo].[Pivot_Data]

UPDATE [HD].[dbo].[PIVOT]
SET [Target] = CASE WHEN [Target]  LIKE '"%"'  THEN SUBSTRING([Target],2,LEN([Target])-2) ELSE [Target] END