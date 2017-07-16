#echo "Dumping a copy of local database $DATABASENAME with prefix $TABLE_PREFIX tables $TABLES_SELECTED to: $LOCAL_TEMP_DIR, extra options:  $NODATA $LOCAL_LOCKTABLES $LOCAL_DATABASES $LOCAL_DROPDB $LOCAL_CHARACTER $LOCAL_COMPA_M4 $LOCAL_COMPA_NT...(dump line $TABLES_SELECTED_FOR_DUMP_LINE)"
echo "Dumping a copy of local database $DATABASENAME" 
echo "mysqldump $NODATA $LOCAL_LOCKTABLES $LOCAL_DATABASES $LOCAL_DROPDB $LOCAL_CHARACTER $LOCAL_COMPA_M4 $LOCAL_COMPA_NT $DATABASENAME $TABLES_SELECTED_FOR_DUMP_LINE | gzip -v > $LOCAL_TEMP_DIR/$DATABASENAME$TABLES_SELECTED-local.sql.gz"
#with prefix $TABLE_PREFIX tables $TABLES_SELECTED to: $LOCAL_TEMP_DIR, extra options:  $NODATA $LOCAL_LOCKTABLES $LOCAL_DATABASES $LOCAL_DROPDB $LOCAL_CHARACTER $LOCAL_COMPA_M4 $LOCAL_COMPA_NT...(dump line $TABLES_SELECTED_FOR_DUMP_LINE)"
mysqldump -u $MYSQL_USER_LOCAL -p$MYSQL_PASS_LOCAL $NODATA $LOCAL_LOCKTABLES $LOCAL_DATABASES $LOCAL_DROPDB $LOCAL_CHARACTER $LOCAL_COMPA_M4 $LOCAL_COMPA_NT $DATABASENAME $TABLES_SELECTED_FOR_DUMP_LINE | gzip -v > $LOCAL_TEMP_DIR/$DATABASENAME$TABLES_SELECTED-local.sql.gz
