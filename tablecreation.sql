CREATE EXTERNAL TABLE IF NOT EXISTS s3db.superstore2 (
rowid INT,
orderid STRING,
orderdate STRING,	
shipdate STRING,	
shipmode STRING,	
custid STRING,
custname STRING,	
segment STRING,	
country STRING,	
city STRING,	
state STRING,	
postcode STRING,	
region STRING,	
prodid STRING,	
category STRING,	
subcategory STRING,	
prodname STRING,	
sales double,	
qty	double,
discount double,
profit double)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
    "separatorChar" = ",",
    "quoteChar" = "\"",
    "escapeChar" = "\\"
) 
STORED AS TEXTFILE
LOCATION 's3://stockdeta/superstore/'
TBLPROPERTIES ('skip.header.line.count'='1');
