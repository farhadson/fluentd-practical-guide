<buffer>
    @type file
    path /var/td-agent/buffer/fluentd/default_develop-json
    total_limit_size 2GB
    #   chunk_limit_records 1000
    chunk_limit_size 2MB
    retry_forever true
    retry_wait 10s
    retry_max_interval 300s
    flush_thread_count 2
    #   flush_interval 5s
    flush_at_shutdown false
    overflow_action drop_oldest_chunk
</buffer>    