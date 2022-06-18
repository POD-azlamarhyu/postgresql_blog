select * from individual_stock_info as isi where isi.current_value >= (
     select avg(subisi.current_value) from individual_stock_info as subisi
);

select * from individual_stock_info as isi where isi.current_value = (
     select avg(subisi.current_value) from individual_stock_info as subisi
);

select * from individual_stock_info as isi where exists (
     select * from company_info as ci where isi.stock_id = ci.stock_id
);

select * from individual_stock_info as isi where exists (
     select * from individual_stock_info as subisi where subisi.current_value >= 1000
);

select * from individual_stock_info as isi where isi.current_value in (
     select subisi.current_value from individual_stock_info as subisi where subisi.current_value < 1000
);

select * from individual_stock_info as isi where isi.current_value in (
     select subisi.current_value from individual_stock_info as subisi where subisi.current_value < 1000
);

select * from individual_stock_info as isi where isi.current_value in (
     select subisi.current_value from individual_stock_info_history as subisi where subisi.current_value < 1000
);


select * from individual_stock_info as isi where isi.current_value > any (
     select subisi.current_value from individual_stock_info_history as subisi where subisi.current_value > 350 and subisi.current_value < 1000
);

select * from individual_stock_info as isi where isi.current_value < all (
     select subisi.current_value from individual_stock_info_history as subisi where subisi.current_value > 350 and subisi.current_value < 1000
);

select * from individual_stock_info as isi where isi.current_value = all (
     select subisi.current_value from individual_stock_info_history as subisi where subisi.current_value > 350 and subisi.current_value < 1000
);