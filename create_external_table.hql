CREATE EXTERNAL TABLE <schema>.<table_name> (
  state varchar(2),
  table_key varchar(24),
  cust_id varchar(24) COMMENT 'Customer ID',
  loc_city varchar(50) COMMENT 'Property City',
  mail_city varchar(50)
  )
  ROW FORMAT SERDE
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
  WITH SERDEPROPERTIES (
  'field.delim' = '\u0001'
  'serialization.encoding'='UTF-8'
  STORED AS INPUTFORMAT
  'org.apache.hadoop.mapred.TextInputFormat'
  OUTPUTFORMAT
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
  LOCATION
  '<location to store table>
  tableproperties ("skip.header.line.count"="1")
  ;
