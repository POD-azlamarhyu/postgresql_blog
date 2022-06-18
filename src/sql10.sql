delete from individual_stock_info where stock_id = 6;

delete from individual_stock_info where stock_id = 7;

delete from individual_stock_info using individual_stock_info_history where individual_stock_info.stock_id = individual_stock_info_history.stock_id;

