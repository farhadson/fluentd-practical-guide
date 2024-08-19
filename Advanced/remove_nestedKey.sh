# https://stackoverflow.com/questions/75665513/flatten-nested-json-using-fluentd

### INPUT LOG:
### {"field1":"value1","field2":"value2","field3":"{\"nested_field1\":\"value1\",\"nested_field2\":\"value2\",\"nested_field3\":\"value3\"}"}

<filter **>
  @type parser
  key_name field3
  reserve_data true
  remove_key_name_field true
  <parse>
    @type json
  </parse>
</filter>

<match **>
  @type stdout
</match>

fluentd -c ./fluent-flatten-json.conf

### OUTPUT LOG:
# {
#   "field1": "value1",
#   "field2": "value2",
#   "nested_field1": "value1",
#   "nested_field2": "value2",
#   "nested_field3": "value3"
# }