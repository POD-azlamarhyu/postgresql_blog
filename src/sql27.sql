select ci.company_id,ci.company_name,bit_length(ci.company_name),ci.company_industry,ci.headquarters_location from company_info as ci;

select ci.company_id,ci.company_name,char_length(ci.company_name),ci.company_industry,ci.headquarters_location from company_info as ci;

select ci.company_id,ci.company_name_english,lower(ci.company_name_english),ci.company_industry,ci.headquarters_location from company_info as ci;

select ci.company_id,ci.company_name,upper(ci.company_name_english),ci.company_industry,ci.headquarters_location from company_info as ci;