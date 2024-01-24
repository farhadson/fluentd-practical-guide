# fluentd-advanced
## routing
this routing which uses record modifier match splits the data,
if you direct it to one end point with tag changing it cannot appear in another
### default wrong implication in routing
2nd would never receive any logs
```
<route **>
  @id 1st
</route>
<route **>
  @id 2nd
</route>
```
### record_modifier 
should be the main choice, it can do nearly everything
### rewrite tag filter plugin
https://github.com/fluent/fluent-plugin-rewrite-tag-filter
### route plugin
https://github.com/tagomoris/fluent-plugin-route

