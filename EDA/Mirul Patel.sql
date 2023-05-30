-- Mirulkumar Patel(n01489347)
-- Assignment 1b (Part B)
-- Questions 8

CREATE TABLE rep_contracts
(
store_ID NUMBER(8),
name NUMBER(5),
quarter CHAR(3),
rep_ID NUMBER(5),
CONSTRAINT rep_store_quarterPK PRIMARY KEY(store_ID, rep_ID, quarter)
);




