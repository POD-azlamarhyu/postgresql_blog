select * from company_info where industry_type in (null,'小売');

select distinct on(stock_id) * from individual_stock_info where market_id in (1,4);

select * from individual_stock_info where market_id in (1,4);
