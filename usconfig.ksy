meta:
  id: us_config
  title: US_CONFIG 
  endian: le
  file-extension: bin

seq:
  - id: magic
    type: str
    size: 4
    encoding: ASCII

  - id: version
    type: u2

  - id: region_len
    type: u1

  - id: region 
    type: str
    size: region_len
    encoding: UTF-8

  - id: url_count
    type: u2

  - id: urls
    type: url
    repeat: expr
    repeat-expr: url_count

  - id: retry_interval_sec
    type: u4

  - id: timeout_sec
    type: u4

  - id: flags
    type: u4
  
  - id: schedule_start_hour
    type: u1

  - id: schedule_end_hour
    type: u1

  - id: reserved 
    size: 10
    type: bytes


types:
  url:
    seq:
      - id: len
        type: u2
        doc: Length of the URL string.
      - id: value
        type: str
        size: len
        encoding: UTF-8
        doc: The URL as a UTF-8 string.