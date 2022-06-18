select * from market_info as mi cross join individual_stock_info as isi;

select * from individual_stock_info as isi cross join company_info as ci where ci.headquarters_location like '%日本%';

select isi.stock_id,isi.market_id,ci.company_name,isi.current_value from individual_stock_info as isi cross join company_info as  ci;
