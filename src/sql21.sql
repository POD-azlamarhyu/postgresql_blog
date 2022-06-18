select * from market_info as mi left join individual_stock_info as isi on mi.market_id = isi.market_id;

select * from individual_stock_info as isi right join company_info as  ci on isi.stock_id = ci.stock_id;

select isi.stock_id,isi.market_id,ci.company_name,isi.current_value from individual_stock_info as isi left outer join company_info as  ci on isi.stock_id = ci.stock_id;

select * from individual_stock_info_history as isih left join individual_stock_info as isi on isih.stock_id = isi.stock_id;

select * from individual_stock_info_history as isih right join individual_stock_info as isi on isih.stock_id = isi.stock_id;

select * from individual_stock_info_history as isih full join individual_stock_info as isi on isih.stock_id = isi.stock_id;

select * from individual_stock_info_history as isih full join individual_stock_info as isi on isih.stock_id = isi.stock_id and isih.current_value = isi.current_value;

select * from individual_stock_info as isi left outer join company_info as  ci on isi.stock_id = ci.stock_id;

select * from individual_stock_info as isi right outer join company_info as  ci on isi.stock_id = ci.stock_id;

select * from individual_stock_info_history as isih left join individual_stock_info as isi on isih.stock_id = isi.stock_id and isih.current_value = isi.current_value;

select * from individual_stock_info_history as isih right join individual_stock_info as isi on isih.stock_id = isi.stock_id and isih.current_value = isi.current_value;