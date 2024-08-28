<buffer>
    @type file
    path /var/td-agent/buffer/fluentd/default-netflow
    total_limit_size 40GB
    #   chunk_limit_records 1000
    chunk_limit_size 4MB
    retry_forever true
    retry_wait 10s
    retry_max_interval 300s
    flush_thread_count 4
    flush_mode interval
    flush_interval 30s
    flush_at_shutdown false
    overflow_action drop_oldest_chunk
</buffer>

