create partition function pfTest (datetime) as range right
for values ('20210101', '20220101', '20230101', '20240101', '20250101')