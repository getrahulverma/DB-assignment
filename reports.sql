-- Two reports

-- Create view to generate report for products most sold in different countries in last 7 days
-- This will display the details of Product which is most sold in last 7 days across ifferent countries


CREATE VIEW PRODMOSTSOLD_LAST7DAYS AS
SELECT PRODUCTID,PRODUCTNAME,QTY_SOLD 
FROM (
	SELECT tab.*, RANK() OVER (ORDER BY QTY_SOLD DESC) RN FROM (
	SELECT P.PRODUCTID, PRODUCTNAME, SUM(QUANTITY) as QTY_SOLD
	FROM ORDERS O, ORDER_ITEMS OI, PRODUCTS P,  REGIONS R, COUNTRIES C, LOCATIONS L, WAREHOUSES W
	WHERE O.ORDERID = OI.ORDERID
	AND OI.PRODUCTID = P.PRODUCTID
	AND R.REGIONID = C.REGION
	AND C.COUNTRYID = L.COUNTRY
	AND L.LOCATIONID = W.LOCATION
	AND OI.WAREHOUSEID = W.WAREHOUSEID
	AND ORDERDATE >= sysdate-7
	GROUP BY P.PRODUCTID, PRODUCTNAME
	ORDER BY P.PRODUCTID, PRODUCTNAME
	) tab 
)
WHERE RN=1;





-- Create view to generate report for customer who placed maximum orders in different countries in last 7 days
-- This will display the details of Customer which has placed most orders in last 7 days across ifferent countries

CREATE VIEW CUSTMOSTORDERS AS
SELECT CUSTOMERID, NAME, ADDRESS, WEBSITE, FACEBOOK, TWITTER, WHATSAPP, ORDERCOUNT
FROM (
SELECT C.*, tab.ORDERCOUNT, RANK() OVER (ORDER BY ORDERCOUNT DESC) RN FROM (
    SELECT O.CUSTOMERID, COUNT(*) AS ORDERCOUNT
    FROM ORDERS O
    WHERE ORDERDATE >= sysdate-7
    GROUP BY O.CUSTOMERID 
) tab, CUSTOMERS C
WHERE tab.CUSTOMERID = C.CUSTOMERID
) WHERE RN =1;






 
