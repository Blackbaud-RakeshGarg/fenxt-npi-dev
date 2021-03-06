 create or replace view dm_ProjectBalance as select 
_sys_transform_id,
TenantId,
ProjectBalanceId,
FiscalPeriodId,
ProjectId,
Balance,
AddBalance,
EncumberanceType,
AccountId,
PostStatus
from out_ProjectBalance 
 where _sys_transform_id = (select max(id) from _sys_transform_id where ts_end is not null and entity = 'dm_ProjectBalance');
