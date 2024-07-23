### https://rubygems.org/gems/fluent-plugin-flowcounter-simple/versions/0.1.0

### mapping section
<filter cisco.syslog.**>
  @type flowcounter_simple
  @id filter_flowcounter_syslog_cisco
  @log_level debug
#  indicator num/byte
  indicator num
#  second/minute/hour/day
  unit minute
  comment before_parse
</filter>

### output section
<store>
    @type flowcounter_simple
    @log_level debug
    @id output_flowcounter_syslog_cisco
    unit minute
    comment after_parse
</store>
