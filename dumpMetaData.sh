#!/bin/bash
get_db_pass() {
    stty -echo
    printf "Password: "
    read DBPASS
    stty echo
}
attempt_connection() {
    printf "Connecting...\n"
    mysql -u root -p$DBPASS -e exit 2>/dev/null 
    CONNECTED=$?
}
dump_table() {
    printf "Dumping $1..."
    mysqldump -u root -p$DBPASS --extended-insert=FALSE --skip-comments smarts_too_dallas_07142014 $1 > $1.sql
    printf " OK\n"
}
run_script() {
    # Dependencies: none
    dump_table domain_meta_data

    # Dependencies: domain_meta_data
    dump_table property_meta_data

    # Dependencies: domain_meta_data
    dump_table area_meta_data

    # Dependencies: area_meta_data
    dump_table area_menu_item

    # Dependencies: domain_meta_data, area_meta_data
    dump_table area_query_source

    # Dependencies: 
    dump_table area_category

    # Dependencies: 
    dump_table groups

    # Dependencies: 
    dump_table groups_area

    # Dependencies: 
    dump_table list_view

    # Dependencies: list_view
    dump_table list_view_field

    # Dependencies: groups_area, list_view
    dump_table groups_area_list_view

    # Dependencies: 
    dump_table work_flow

    # Dependencies: 
    dump_table step_definition

    # Dependencies: 
    dump_table transition_definition

    # Dependencies: step_definition
    dump_table step_sub_tab

    # Dependencies: domain_meta_data
    dump_table print_attachment

    # Dependencies: print_template, domain_meta_data
    dump_table print_attachment_domain_meta_data

    # Dependencies: domain_meta_data
    dump_table print_section_definition

    # Dependencies: domain_meta_data
    dump_table print_text_definition

    # Dependencies: domain_meta_data
    dump_table print_template

    # Dependencies: domain_meta_data
    dump_table print_template_section

}
get_db_pass
attempt_connection
if [ "$CONNECTED" = "0" ]
then
    run_script
else
    echo "Couldn't connect..."
fi
