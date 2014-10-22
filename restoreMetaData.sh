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
restore_table() {
    printf "Restoring $1..."
    mysql -u root -p$DBPASS smarts_too_dallas_07142014 < $1.sql
}
run_script() {
    # Dependencies: none
    restore_table domain_meta_data

    # Dependencies: domain_meta_data
    restore_table property_meta_data

    # Dependencies: domain_meta_data
    restore_table area_meta_data

    # Dependencies: domain_meta_data, area_meta_data
    restore_table area_query_source

    # Dependencies: 
    restore_table area_category

    # Dependencies: 
    restore_table groups

    # Dependencies: 
    restore_table groups_area

    # Dependencies: 
    restore_table list_view

    # Dependencies: list_view
    restore_table list_view_field

    # Dependencies: groups_area, list_view
    restore_table groups_area_list_view

    # Dependencies: 
    restore_table work_flow

    # Dependencies: 
    restore_table step_definition

    # Dependencies: 
    restore_table transition_definition

    # Dependencies: step_definition
    restore_table step_sub_tab

    # Dependencies: domain_meta_data
    restore_table print_attachment

    # Dependencies: print_template, domain_meta_data
    restore_table print_attachment_domain_meta_data

    # Dependencies: domain_meta_data
    restore_table print_section_definition

    # Dependencies: domain_meta_data
    restore_table print_text_definition

    # Dependencies: domain_meta_data
    restore_table print_template

    # Dependencies: domain_meta_data
    restore_table print_template_section

}
get_db_pass
attempt_connection
if [ "$CONNECTED" = "0" ]
then
    run_script
else
    echo "Couldn't connect..."
fi