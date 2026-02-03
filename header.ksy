meta:
  id: boss_header
seq:
  - id: magic
    type: u4
  - id: version
    type: u4
  - id: file_size
    type: u4
  - id: Serial
    type: u8
  - id: Const
    type: u2
  - id: Padding
    type: u2
  - id: hash 
    type: u2
  - id: rsa
    type: u2
  - id: IV # Short for initialization vector
    size: 12