/*
drop view usage_qualification_groups
*/
create view usage_qualification_groups
as
select
c_Name as usage_qualification_group,
b.c_ExecutionSequence as row_num,
b.c_Filter as filter
from t_be_mvm_ade_usagequalgroup a
left outer join t_be_mvm_ade_usagequalifica b on a.c_UsageQualGroup_Id = b.c_UsageQualGroup_Id
;
/* (
usage_qualification_group VARCHAR2(100),
row_num NUMBER,
filter VARCHAR2(4000)
 );
*/
