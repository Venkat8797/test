{% macro log_run(model_name, start_time, end_time, status, failure_reason) %}
INSERT INTO project_logs.run_history (model_name, run_started_at, run_ended_at, status, failure_reason)
VALUES (
    '{{ model_name }}',
    '{{ start_time }}',
    '{{ end_time }}',
    '{{ status }}',
    {% if failure_reason is not none %}
    '{{ failure_reason }}'
    {% else %}
    null
    {% endif %}
)
{% endmacro %}
