{% snapshot orders_scd_2 %}

    {% set new_schema = target.schema + "_snapshot" %}

    {{
        config(
            target_database="ch19",
            target_schema=new_schema,
            unique_key="order_id",
            strategy="timestamp",
            updated_at="updated_at",
        )
    }}

    select *
    from ch19.{{ target.schema }}.orders
{% endsnapshot %}
