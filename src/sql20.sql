select * from market_info as mi inner join individual_stock_info as isi on mi.market_id = isi.market_id;

select * from individual_stock_info as isi inner join company_info as  ci on isi.stock_id = ci.stock_id;

select isi.stock_id,isi.market_id,ci.company_name,isi.current_value from individual_stock_info as isi inner join company_info as  ci on isi.stock_id = ci.stock_id;