--Mirulkumar Patel (n01489347)
--Lab 9
--Question 6

SELECT i.invoice_id,iv.vendor_id,iv.invoice_date,i.line_item_amount,i.line_item_description
FROM invoice_line_items i,invoices iv
WHERE  line_item_amount BETWEEN 1000 AND 3000
AND line_item_desc IN ('Freight','Crash Course Cover')
ORDER BY line_item_amount;