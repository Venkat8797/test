{% macro table_bkp_macro(src_db,src_sch,tgt_db,tgt_sch,tbl_list) %}
  {% for tbl in tbl_list %}

     {% set soure_name = src_db~'.'~src_sch~'.'~tbl %}
     {% set target_name = tgt_db~'.'~tgt_sch~'.'~tbl %}

     {% set tbl_bkp %}

     create or replace table {{target_name}}  clone {{soure_name}} ;

     {% endset %} 
     {% do run_query(tbl_bkp) %}

  {% endfor %}

{% endmacro %}