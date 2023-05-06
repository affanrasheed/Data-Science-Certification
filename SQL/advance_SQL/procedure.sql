call retrieve_all;

call update_saleprice(1,'BAD');

call retrieve_all;

drop procedure retrieve_all;
drop procedure update_saleprice;