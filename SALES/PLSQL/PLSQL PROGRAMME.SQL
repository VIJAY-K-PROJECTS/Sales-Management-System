SET SERVEROUTPUT ON;



---------------------------------------------------------
--  PL/SQL -TOTAL_SALES
---------------------------------------------------------
DECLARE
    v_total_sales NUMBER;
BEGIN
    SELECT SUM(sales_amount)
    INTO v_total_sales
    FROM sales
    WHERE customer_id = 1;

    DBMS_OUTPUT.PUT_LINE('Total sales for customer 1: ' || v_total_sales);
END;
/
