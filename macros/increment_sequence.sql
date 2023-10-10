{%- macro increment_sequence() -%}
  {{ log("[logging] Trigger increment_sequence: " ) }}
  {{ this.name }}_seq.nextval

{%- endmacro -%}