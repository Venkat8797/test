{% macro concat_with_3_var(s1,s2,s3) %}

   initcap({{s1}}||','||{{s2}}||','||{{s3}})

    
{% endmacro %}