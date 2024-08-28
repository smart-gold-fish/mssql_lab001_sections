;with nums as 
(
select 0 n union all select 1 union all select 2 union all select 3 union all select 4 
union all select 5 union all select 6 union all select 7 union all select 8 union all select 9 
)
insert into ptest(dt, dummy_int, dummy_char)
select dateadd(hh, rn-1, '20250101') dt, rn dummy_int, 'dummy char column #' + cast(rn as varchar)
from
(
select row_number() over(order by (select (null))) rn
from nums n1, nums n2, nums n3, nums n4, nums n5
)t
where dateadd(hh, rn-1, '20250101') between '20250101' and '20260101'