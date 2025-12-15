---------------------------------------
--INSERT CUSTOMER DETAILS
--------------------------------------------
INSERT INTO CUSTOMERS (CUSTOMER_NAME,EMAIL,CITY) VALUES ('VIJAY','vj@gmail.com','thanjavur');
INSERT INTO CUSTOMERS (CUSTOMER_NAME,EMAIL,CITY) VALUES ('MATHU','mathu@gmail.com','thanjavur');
INSERT INTO CUSTOMERS (CUSTOMER_NAME,EMAIL,CITY) VALUES ('susila','susi@gmail.com','nagapattinam');



---------------------------------------
--INSERT PRODUCTS DETAILS
---------------------------------------
insert INTO products (PRODUCT_NAME,CATEGORY,PRICE) values ('phone','electronic',10987);
insert INTO products (PRODUCT_NAME,CATEGORY,PRICE) values ('mouse','electronic',500);
insert INTO products (PRODUCT_NAME,CATEGORY,PRICE) values ('pen','stationery',5);
insert INTO products (PRODUCT_NAME,CATEGORY,PRICE) values ('shirt','textile',2000);

-----------------------------------------------------
--INSERT SALES DETAILS
-------------------------------------------------------
insert INTO sales (CUSTOMER_ID,PRODUCT_ID,SALES_DATE,QUANTITY,SALES_AMOUNT) values (1,1,DATE'2025-06-07',1,10987);
insert INTO sales (CUSTOMER_ID,PRODUCT_ID,SALES_DATE,QUANTITY,SALES_AMOUNT) values (3,3,DATE'2025-12-22',2,10);
insert INTO sales (CUSTOMER_ID,PRODUCT_ID,SALES_DATE,QUANTITY,SALES_AMOUNT) values (2,2,DATE'2025-09-12',5,2500);
insert INTO sales (CUSTOMER_ID,PRODUCT_ID,SALES_DATE,QUANTITY,SALES_AMOUNT) values (1,4,DATE'2025-08-19',1,2000);
insert INTO sales (CUSTOMER_ID,PRODUCT_ID,SALES_DATE,QUANTITY,SALES_AMOUNT) values (2,4,DATE'2025-01-28',2,4000);
insert INTO sales (CUSTOMER_ID,PRODUCT_ID,SALES_DATE,QUANTITY,SALES_AMOUNT) values (3,1,DATE'2025-11-15',1,10987);