# fluentd-monitoring-guide
notice that all the outputs that you use output @prometheus for should have similar keys in the labels section.
also if you use a label key on one output that you don't want it on the others, you should still put the key in them too.
