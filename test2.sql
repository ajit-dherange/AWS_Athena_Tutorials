CREATE EXTERNAL TABLE `vdp_queries`(
  `servername` string COMMENT 'from deserializer', 
  `host` string COMMENT 'from deserializer', 
  `port` string COMMENT 'from deserializer', 
  `id` string COMMENT 'from deserializer', 
  `query_database` string COMMENT 'from deserializer', 
  `username` string COMMENT 'from deserializer', 
  `notificationtype` string COMMENT 'from deserializer', 
  `sessionid` string COMMENT 'from deserializer', 
  `starttime` string COMMENT 'from deserializer', 
  `endtime` string COMMENT 'from deserializer', 
  `duration` string COMMENT 'from deserializer', 
  `waitingtime` string COMMENT 'from deserializer', 
  `numrows` string COMMENT 'from deserializer', 
  `state` string COMMENT 'from deserializer', 
  `completed` string COMMENT 'from deserializer', 
  `cache` string COMMENT 'from deserializer', 
  `query` string COMMENT 'from deserializer', 
  `requesttype` string COMMENT 'from deserializer', 
  `elements` string COMMENT 'from deserializer', 
  `useragent` string COMMENT 'from deserializer', 
  `accessinterface` string COMMENT 'from deserializer', 
  `clientip` string COMMENT 'from deserializer', 
  `transactionid` string COMMENT 'from deserializer', 
  `webservicename` string COMMENT 'from deserializer')
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.OpenCSVSerde' 
WITH SERDEPROPERTIES ( 
  'separatorChar'='\t') 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  's3://sst-s3-xxx-yyy-uatizapp-denodo-vdp-queries-log/vdp-queries/'
TBLPROPERTIES (
  'classification'='csv')
