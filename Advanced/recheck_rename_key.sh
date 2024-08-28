# https://stackoverflow.com/questions/71129267/rename-subkey-in-json-output

<filter debug.test>
  @type         record_transformer
  enable_ruby   true
  <record>
    temp        ${ l = record["kubernetes"]["labels"]; record["kubernetes"]["pod_labels"] = l; nil; }
  </record>
  remove_keys   temp, $.kubernetes.labels
</filter>

# https://groups.google.com/g/fluentd/c/ewC1JzdZd0s
# https://github.com/shunwen/fluent-plugin-rename-key
<filter asa>
  @type record_transformer
  <record>
    server_name "server-asa"
    message_num ${message_number}
  </record>
  remove_keys message_number
</filter>