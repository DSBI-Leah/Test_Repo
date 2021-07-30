-- PROD
-- vendor
select top 1 'BODS',run_date_time,extract_begin_date,extract_end_date,RECORD_COUNT,* from [ETCFREDEV08\BI_DW].ODS.dbo.tSchedule_Run 
	where RUN_OBJECT='vendor' and RUN_SITE_ID='3' order by 2 desc
select top 1 'WM',run_date_time,extract_begin_date,extract_end_date,RECORD_COUNT,* from [ETCFRED01\BI_DW].ODS.dbo.tSchedule_Run 
	where RUN_OBJECT='vendor' and RUN_SITE_ID='3' order by 2 desc

select * from tvendor where runid='7e1da2af907211e89d911b3c03a06218' order by vendorOriginalID
select * from tvendor where runid='7e1da2af907211e89d911b3c03a06218' and vendorOriginalID='0000219063' order by vendorOriginalID

-- customer
select top 1 'BODS',run_date_time,extract_begin_date,extract_end_date,RECORD_COUNT,* from [ETCFREDEV08\BI_DW].ODS.dbo.tSchedule_Run  
	where RUN_OBJECT='customer' and RUN_SITE_ID='3' order by 2 desc
select top 1 'WM',run_date_time,extract_begin_date,extract_end_date,RECORD_COUNT,* from [ETCFRED01\BI_DW].ODS.dbo.tSchedule_Run  
	where RUN_OBJECT='customer' and RUN_SITE_ID='3' order by 2 desc

select * from tcustomer where extract_num='ca92e77a96d311e888fb1e38150470ca' order by original_cust_id
select * from tcustomer where extract_num='ca92e77a96d311e888fb1e38150470ca' and original_cust_id='E62310' order by original_cust_id

-- product
select top 1 'BODS',run_date_time,extract_begin_date,extract_end_date,RECORD_COUNT,* from [ETCFREDEV08\BI_DW].ODS.dbo.tSchedule_Run   
	where RUN_OBJECT='product' and RUN_SITE_ID='3' order by 2 desc
select top 1 'WM',run_date_time,extract_begin_date,extract_end_date,RECORD_COUNT,* from [ETCFRED01\BI_DW].ODS.dbo.tSchedule_Run   
	where RUN_OBJECT='product' and RUN_SITE_ID='3' order by 2 desc

select * from tProduct where extract_num='0d21cac7948911e8858002e819542f3e' order by original_product_id

-- po
select top 1 'BODS',run_date_time,extract_begin_date,extract_end_date,RECORD_COUNT,* from [ETCFREDEV08\BI_DW].ODS.dbo.tSchedule_Run    
	where RUN_OBJECT='po' and RUN_SITE_ID='3' order by 2 desc
select top 1 'WM',run_date_time,extract_begin_date,extract_end_date,RECORD_COUNT,* from [ETCFRED01\BI_DW].ODS.dbo.tSchedule_Run    
	where RUN_OBJECT='po' and RUN_SITE_ID='3' order by 2 desc

select * from tPurchaseOrder where runid='b081b4418fef11e8a1eb148c0c2063bf' order by ponum,polineitem
select * from tPurchaseOrder where runid='b081b4418fef11e8a1eb148c0c2063bf' and poNum='0076336113' and poLineItem='00001'
	order by ponum,poLineItem

-- ap
select top 1 'BODS',run_date_time,extract_begin_date,extract_end_date,RECORD_COUNT,* from [ETCFREDEV08\BI_DW].ODS.dbo.tSchedule_Run   
	where RUN_OBJECT='ap' and RUN_SITE_ID='3' order by 2 desc
select top 1 'WM',run_date_time,extract_begin_date,extract_end_date,RECORD_COUNT,* from [ETCFRED01\BI_DW].ODS.dbo.tSchedule_Run   
	where RUN_OBJECT='ap' and RUN_SITE_ID='3' order by 2 desc

select COUNT(*) from taccountspayable where runid='2e2cf8f0-9a5f-11e8-b39c-a3ff9da225f5R2' order by apacctdocnum,aplineitem

-- ar
select top 1 'BODS',run_date_time,extract_begin_date,extract_end_date,RECORD_COUNT,* from [ETCFREDEV08\BI_DW].ODS.dbo.tSchedule_Run   
	where RUN_OBJECT='ar' and RUN_SITE_ID='3' order by 2 desc
select top 1 'WM',run_date_time,extract_begin_date,extract_end_date,RECORD_COUNT,* from [ETCFRED01\BI_DW].ODS.dbo.tSchedule_Run   
	where RUN_OBJECT='ar' and RUN_SITE_ID='3' order by 2 desc

select * from taccountsreceivable where runid='0038f230-94df-11e8-bca0-9a95191afb24R2' order by aracctdocnum,arlineitem

-- booking
select top 1 'BODS',run_date_time,extract_begin_date,extract_end_date,RECORD_COUNT,* from [ETCFREDEV08\BI_DW].ODS.dbo.tSchedule_Run   
	where RUN_OBJECT='booking' and RUN_SITE_ID='3' order by 2 desc
select top 1 'WM',run_date_time,extract_begin_date,extract_end_date,RECORD_COUNT,* from [ETCFRED01\BI_DW].ODS.dbo.tSchedule_Run   
	where RUN_OBJECT='booking' and RUN_SITE_ID='3' order by 2 desc

select * from tOrder_line where extract_num='47fac44f924d11e8949a14c808a85632' order by sales_order

-- billing
select top 1 'BODS',run_date_time,extract_begin_date,extract_end_date,RECORD_COUNT,* from [ETCFREDEV08\BI_DW].ODS.dbo.tSchedule_Run 
	where RUN_OBJECT='sales' and RUN_SITE_ID='3' order by 2 desc
select top 1 'WM',run_date_time,extract_begin_date,extract_end_date,RECORD_COUNT,* from [ETCFRED01\BI_DW].ODS.dbo.tSchedule_Run 
	where RUN_OBJECT='sales' and RUN_SITE_ID='3' order by 2 desc

select * from tOrder_line where extract_num='7b29d5238ff211e899960d84196c29c6' order by sales_order

-- backlog
select top 1 'BODS',run_date_time,extract_begin_date,extract_end_date,RECORD_COUNT,* from [ETCFREDEV08\BI_DW].ODS.dbo.tSchedule_Run  
	where RUN_OBJECT='backlog' and RUN_SITE_ID='3' order by 2 desc
select top 1 'WM',run_date_time,extract_begin_date,extract_end_date,RECORD_COUNT,* from [ETCFRED01\BI_DW].ODS.dbo.tSchedule_Run  
	where RUN_OBJECT='backlog' and RUN_SITE_ID='3' order by 2 desc

select * from tOrder_line where extract_num='b1a90cfb994a11e8ba760c481b9c6ebe' order by sales_order

-- invoice
select top 1 'BODS',run_date_time,extract_begin_date,extract_end_date,RECORD_COUNT,* from [ETCFREDEV08\BI_DW].ODS.dbo.tSchedule_Run   
	where RUN_OBJECT='invoice' and RUN_SITE_ID='3' order by 2 desc
select top 1 'WM',run_date_time,extract_begin_date,extract_end_date,RECORD_COUNT,* from [ETCFRED01\BI_DW].ODS.dbo.tSchedule_Run   
	where RUN_OBJECT='invoice' and RUN_SITE_ID='3' order by 2 desc

select * from tOrder_line where extract_num='78594570-902b-11e8-b9da-b2bc0c31a131' order by sales_order

-- inventory
select top 1 'BODS',run_date_time,extract_begin_date,extract_end_date,RECORD_COUNT,* from [ETCFREDEV08\BI_DW].ODS.dbo.tSchedule_Run  
	where RUN_OBJECT='inventory' and RUN_SITE_ID='3' order by 2 desc
select top 1 'WM',run_date_time,extract_begin_date,extract_end_date,RECORD_COUNT,* from [ETCFRED01\BI_DW].ODS.dbo.tSchedule_Run  
	where RUN_OBJECT='inventory' and RUN_SITE_ID='3' order by 2 desc


select * from tOrder_line where extract_num='78594570-902b-11e8-b9da-b2bc0c31a131' order by sales_order

-- stdcost
select top 1 RECORD_COUNT,* from tSchedule_Run where RUN_OBJECT='stdcost' and RUN_SITE_ID='3' order by 1 desc

-- gr
select top 1 run_date_time,extract_begin_date,extract_end_date,RECORD_COUNT,* from tSchedule_Run where RUN_OBJECT='gr' and RUN_SITE_ID='3' order by 1 desc

----------
select * from tSchedule_Run 
-- update tSchedule_Run set run_status='DW_SUCCESS_NOTUSE'
where RUN_OBJECT='booking' and RUN_SITE_ID='3' 
and run_status='EAI_SUCCESS' -- and extract_end_date='20190101' 