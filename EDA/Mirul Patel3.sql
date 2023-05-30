--Mirulkumar Patel (n01489347)
--Lab 9
--Question 7

SELECT gl.account_number,i.invoice_id,i.line_item_amt
FROM general_ledger_accounts gl FULL OUTER JOIN invoice_line_items i
ON gl.account_number=i.account_number
ORDER BY gl.account_number ASC;
