# fluentd-basics
## tcp_input, udp_input

#### bind:
**notice about 0.0.0.0**
from ref:
https://dev.to/howtouselinux/what-is-0000-ip-address-5gfo#:~:text=0.0%20ip%20address%3F-,0.0.,of%20their%20individual%20IP%20addresses.
0.0. 0.0 is a special IP address known as the "default route" or "unspecified address". It is used to indicate that traffic should be sent to all interfaces on a machine, regardless of their individual IP addresses.

#### tag:
can be anything but best to seperate different logic parts with dots ".", it helps for when you want to do same logics from similar inputs
syslog.cisco
syslog.fortigate

#### parse:
if you are not sure of the input type or you are sure but some times log creator can create logs out of formats. you may want to use a none parser type. this makes sure that you do not receive pattern not matched errors.



## syslog_input

### parse:
message_format can be none similar to the explanation on parse section of tcp_input.

## exclude_filter
this filter is used for dropping certain records based on a value in a key
