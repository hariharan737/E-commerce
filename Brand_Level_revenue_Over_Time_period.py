import pandas as pd
import mysql.connector
import pandas as pd
# Creating connection object
import mysql.connector
import os
# Creating connection object
# pip install mysql
mydb = mysql.connector.connect(
host = "myrds-aurora.cdiktl1g0cif.ap-south-1.rds.amazonaws.com",
user = "ecommerce",
port =3306,
password = "Redington@2023",
database="REDIN_SAP")
cursor = mydb.cursor()

Query= """
WITH Date_Ranges AS (
    SELECT 
        -- Last Quarter-to-Date Start and End
        CASE 
            WHEN MONTH(CURDATE()) BETWEEN 4 AND 6 THEN DATE_ADD(DATE_SUB(CURDATE(), INTERVAL 3 MONTH), INTERVAL -DAY(CURDATE())+1 DAY)  
            WHEN MONTH(CURDATE()) BETWEEN 7 AND 9 THEN DATE_ADD(DATE_SUB(CURDATE(), INTERVAL 3 MONTH), INTERVAL -DAY(CURDATE())+1 DAY)  
            WHEN MONTH(CURDATE()) BETWEEN 10 AND 12 THEN DATE_ADD(DATE_SUB(CURDATE(), INTERVAL 3 MONTH), INTERVAL -DAY(CURDATE())+1 DAY)  
            ELSE DATE_ADD(DATE_SUB(CURDATE(), INTERVAL 3 MONTH), INTERVAL -DAY(CURDATE())+1 DAY)  
        END AS LQTD_Start,
        DATE_SUB(CURDATE(), INTERVAL 3 MONTH) AS LQTD_End,

        -- Q-1 (Last Quarter) Start and End
        CASE 
            WHEN MONTH(CURDATE()) BETWEEN 4 AND 6 THEN DATE_FORMAT(DATE_SUB(CURDATE(), INTERVAL 3 MONTH), '%Y-01-01')
            WHEN MONTH(CURDATE()) BETWEEN 7 AND 9 THEN DATE_FORMAT(DATE_SUB(CURDATE(), INTERVAL 3 MONTH), '%Y-04-01')
            WHEN MONTH(CURDATE()) BETWEEN 10 AND 12 THEN DATE_FORMAT(DATE_SUB(CURDATE(), INTERVAL 3 MONTH), '%Y-07-01')
            ELSE DATE_FORMAT(DATE_SUB(CURDATE(), INTERVAL 3 MONTH), '%Y-10-01')
        END AS Q1_Start,
        CASE 
            WHEN MONTH(CURDATE()) BETWEEN 4 AND 6 THEN DATE_FORMAT(CURDATE(), '%Y-04-01')
            WHEN MONTH(CURDATE()) BETWEEN 7 AND 9 THEN DATE_FORMAT(CURDATE(), '%Y-07-01')
            WHEN MONTH(CURDATE()) BETWEEN 10 AND 12 THEN DATE_FORMAT(CURDATE(), '%Y-10-01')
            ELSE DATE_FORMAT(DATE_ADD(CURDATE(), INTERVAL 3 MONTH), '%Y-01-01')
        END AS Q1_End,

        -- Q-2 (Two Quarters Ago) Start and End
        CASE 
            WHEN MONTH(CURDATE()) BETWEEN 4 AND 6 THEN DATE_FORMAT(DATE_SUB(CURDATE(), INTERVAL 6 MONTH), '%Y-10-01')
            WHEN MONTH(CURDATE()) BETWEEN 7 AND 9 THEN DATE_FORMAT(DATE_SUB(CURDATE(), INTERVAL 6 MONTH), '%Y-01-01')
            WHEN MONTH(CURDATE()) BETWEEN 10 AND 12 THEN DATE_FORMAT(DATE_SUB(CURDATE(), INTERVAL 6 MONTH), '%Y-04-01')
            ELSE DATE_FORMAT(DATE_SUB(CURDATE(), INTERVAL 6 MONTH), '%Y-07-01')
        END AS Q2_Start,
        CASE 
            WHEN MONTH(CURDATE()) BETWEEN 4 AND 6 THEN DATE_FORMAT(DATE_SUB(CURDATE(), INTERVAL 3 MONTH), '%Y-01-01')
            WHEN MONTH(CURDATE()) BETWEEN 7 AND 9 THEN DATE_FORMAT(DATE_SUB(CURDATE(), INTERVAL 3 MONTH), '%Y-04-01')
            WHEN MONTH(CURDATE()) BETWEEN 10 AND 12 THEN DATE_FORMAT(DATE_SUB(CURDATE(), INTERVAL 3 MONTH), '%Y-07-01')
            ELSE DATE_FORMAT(DATE_SUB(CURDATE(), INTERVAL 3 MONTH), '%Y-10-01')
        END AS Q2_End
)
SELECT
    a.group AS BU,
    Brand,
    SUM(CASE WHEN invoice_date >= '20240401' THEN Net_Sales END )/10000000 AS Overall_Revenue,
    SUM(CASE WHEN parent_order_type = 'ZECM' and invoice_date >= '20240401' THEN Net_Sales END)/10000000 AS Online_revenue,
    SUM(CASE WHEN parent_order_type != 'ZECM' and invoice_date >= '20240401' THEN Net_Sales END)/10000000 AS Offline_revenue,
    SUM(CASE WHEN invoice_date >= DATE_SUB(CURDATE(), INTERVAL WEEKDAY(CURDATE()) DAY) THEN Net_Sales END)/10000000 AS WTD,
    SUM(CASE WHEN invoice_date >= DATE_SUB(DATE_SUB(CURDATE(), INTERVAL 1 WEEK), INTERVAL WEEKDAY(CURDATE()) DAY) AND invoice_date < DATE_SUB(CURDATE(), INTERVAL WEEKDAY(CURDATE()) DAY) THEN Net_Sales END)/10000000 AS LWTD,
    SUM(CASE WHEN invoice_date >= DATE_FORMAT(CURDATE(), '%Y-%m-01') THEN Net_Sales END)/10000000 AS MTD,
    SUM(CASE WHEN invoice_date >= DATE_FORMAT(DATE_SUB(CURDATE(), INTERVAL 1 MONTH), '%Y-%m-01') AND invoice_date < DATE_FORMAT(CURDATE(), '%Y-%m-01') THEN Net_Sales END)/10000000 AS LMTD,
	
	sum( CASE 
        WHEN invoice_date >= DATE_FORMAT(DATE_SUB(CURDATE(), INTERVAL 2 MONTH), '%Y-%m-01') 
        AND invoice_date < DATE_FORMAT(DATE_SUB(CURDATE(), INTERVAL 1 MONTH), '%Y-%m-01') THEN Net_Sales END)/10000000 AS "M-1",
		
		sum( CASE 
        WHEN invoice_date >= DATE_FORMAT(DATE_SUB(CURDATE(), INTERVAL 3 MONTH), '%Y-%m-01') 
        AND invoice_date < DATE_FORMAT(DATE_SUB(CURDATE(), INTERVAL 2 MONTH), '%Y-%m-01')  THEN Net_Sales END)/10000000 AS "M-2",
		
		sum( CASE 
        WHEN invoice_date >= DATE_FORMAT(DATE_SUB(CURDATE(), INTERVAL 4 MONTH), '%Y-%m-01') 
        AND invoice_date < DATE_FORMAT(DATE_SUB(CURDATE(), INTERVAL 3 MONTH), '%Y-%m-01')  THEN Net_Sales END)/10000000 AS "M-3",
	
	sum( CASE WHEN invoice_date >= 
				CASE 
        WHEN MONTH(CURDATE()) BETWEEN 4 AND 6 THEN DATE_FORMAT(CURDATE(), '%Y-04-01')  
        WHEN MONTH(CURDATE()) BETWEEN 7 AND 9 THEN DATE_FORMAT(CURDATE(), '%Y-07-01')  
        WHEN MONTH(CURDATE()) BETWEEN 10 AND 12 THEN DATE_FORMAT(CURDATE(), '%Y-10-01')  
        ELSE DATE_FORMAT(CURDATE(), '%Y-01-01') END  THEN Net_Sales END)/10000000 AS QTD,
    SUM(CASE WHEN invoice_date BETWEEN (SELECT LQTD_Start FROM Date_Ranges) AND (SELECT LQTD_End FROM Date_Ranges) THEN Net_Sales END)/10000000 AS LQTD,
    SUM(CASE WHEN invoice_date BETWEEN (SELECT Q1_Start FROM Date_Ranges) AND (SELECT Q1_End FROM Date_Ranges) THEN Net_Sales END)/10000000 AS "Q-1",
    SUM(CASE WHEN invoice_date BETWEEN (SELECT Q2_Start FROM Date_Ranges) AND (SELECT Q2_End FROM Date_Ranges) THEN Net_Sales END)/10000000 AS "Q-2",
    SUM(CASE WHEN invoice_date >= 
        CASE WHEN MONTH(CURDATE()) >= 4 THEN DATE_FORMAT(CURDATE(), '%Y-04-01') ELSE DATE_FORMAT(DATE_SUB(CURDATE(), INTERVAL 1 YEAR), '%Y-04-01') END
        THEN Net_Sales END)/10000000 AS YTD,
    SUM(CASE WHEN invoice_date >= 
        CASE WHEN MONTH(CURDATE()) >= 4 THEN DATE_FORMAT(DATE_SUB(CURDATE(), INTERVAL 1 YEAR), '%Y-04-01') ELSE DATE_FORMAT(DATE_SUB(CURDATE(), INTERVAL 2 YEAR), '%Y-04-01') END
        AND invoice_date < 
        CASE WHEN MONTH(CURDATE()) >= 4 THEN DATE_FORMAT(CURDATE(), '%Y-04-01') ELSE DATE_FORMAT(DATE_SUB(CURDATE(), INTERVAL 1 YEAR), '%Y-04-01') END
        THEN Net_Sales END)/10000000 AS LYTD
FROM REDIN_SAP.REDIN_SAP_PP_FIN a
WHERE invoice_date >= '2023-04-01'
GROUP BY 1,2;
"""
cursor.execute(Query)
rows = cursor.fetchall()
columns = [desc[0] for desc in cursor.description]
GA_test = pd.DataFrame(rows, columns=columns)
for col in GA_test.select_dtypes(include=['float64']).columns:
    GA_test[col] = GA_test[col].astype(float).round(2)
pd.set_option('display.float_format', '{:.2f}'.format)
print(GA_test)

GA_test.to_excel("Brand-level revenue.xlsx", index = False, float_format="%.2f")
