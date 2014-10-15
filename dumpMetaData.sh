#!/bin/bash
stty -echo
printf "Password: "
read DBPASS
stty echo
printf "\n"
mysql -u root -p$DBPASS -e exit 2>/dev/null 
if [ "$?" = "0" ]
then
    printf "Dumping domain_meta_data..."
    mysqldump -u root -p$DBPASS --extended-insert=FALSE --skip-comments smarts_too_dallas_07142014 domain_meta_data > domain_meta_data.sql
    printf "\n"
    printf "Dumping property_meta_data..."
    mysqldump -u root -p$DBPASS --extended-insert=FALSE --skip-comments smarts_too_dallas_07142014 property_meta_data > property_meta_data.sql
    printf "\n"
    printf "Dumping area_meta_data..."
    mysqldump -u root -p$DBPASS --extended-insert=FALSE --skip-comments smarts_too_dallas_07142014 area_meta_data > area_meta_data.sql
    printf "\n"
    printf "Dumping area_category..."
    mysqldump -u root -p$DBPASS --extended-insert=FALSE --skip-comments smarts_too_dallas_07142014 area_category > area_category.sql
    printf "\n"
    printf "Dumping groups..."
    mysqldump -u root -p$DBPASS --extended-insert=FALSE --skip-comments smarts_too_dallas_07142014 groups > groups.sql
    printf "\n"
    printf "Dumping groups_area..."
    mysqldump -u root -p$DBPASS --extended-insert=FALSE --skip-comments smarts_too_dallas_07142014 groups_area > groups_area.sql
    printf "\n"
    printf "Dumping groups_area_list_view..."
    mysqldump -u root -p$DBPASS --extended-insert=FALSE --skip-comments smarts_too_dallas_07142014 groups_area_list_view > groups_area_list_view.sql
    printf "\n"
    printf "Dumping area_query_source..."
    mysqldump -u root -p$DBPASS --extended-insert=FALSE --skip-comments smarts_too_dallas_07142014 area_query_source > area_query_source.sql
    printf "\n"
    printf "Dumping list_view..."
    mysqldump -u root -p$DBPASS --extended-insert=FALSE --skip-comments smarts_too_dallas_07142014 list_view > list_view.sql
    printf "\n"
    printf "Dumping list_view_field..."
    mysqldump -u root -p$DBPASS --extended-insert=FALSE --skip-comments smarts_too_dallas_07142014 list_view_field > list_view_field.sql
    printf "\n"
    printf "Dumping work_flow..."
    mysqldump -u root -p$DBPASS --extended-insert=FALSE --skip-comments smarts_too_dallas_07142014 work_flow > work_flow.sql
    printf "\n"
    printf "Dumping step_definition..."
    mysqldump -u root -p$DBPASS --extended-insert=FALSE --skip-comments smarts_too_dallas_07142014 step_definition > step_definition.sql
    printf "\n"
    printf "Dumping transition_definition..."
    mysqldump -u root -p$DBPASS --extended-insert=FALSE --skip-comments smarts_too_dallas_07142014 transition_definition > transition_definition.sql
    printf "\n"
else
    echo "Couldn't connect..."
fi
