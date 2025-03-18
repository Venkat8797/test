{% macro create_database_object(db, sch) %}
  {% set db1 %}
    create or replace database {{ db }};
  {% endset %}
  {% do run_query(db1) %}

  {% set sch1 %}
    create or replace schema {{ sch }};
  {% endset %}
  {% do run_query(sch1) %}


{% endmacro %}