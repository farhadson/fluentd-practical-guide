####### all the methods below maybe misleading, and are just for idea testing
### 1 test this for debugging
<filter test.**>
    @type stdout
    @id stdout_fortiweb_parsed
    <inject>
        tag_key test_begin_1
    </inject>
    <format>
        @type json
    </format>
</filter>

### 2
<filter test.**>
    @type record_modifier
    prepare_value @raw_message = "#{JSON.Generate(record)}"
    <record>
        raw_message ${@raw_message}
    </record>
</filter>


### 3
<filter test.**>
    @type record_modifier  
    <record>
        org_message ${record['msg_id']}
        raw_message "plain_${record}"   
    </record>
</filter>

### 4
<filter {dummy-alpha.ai}>
    @type record_modifier
    <record>
        @timestamp ${Time.at(record['time']).iso8601(9)}
    </record>
</filter>


<filter parsed.fortigate>
 @type record_modifier
 ###remove key1 and key2 from record
 remove_keys key1,key2 
</filter>
