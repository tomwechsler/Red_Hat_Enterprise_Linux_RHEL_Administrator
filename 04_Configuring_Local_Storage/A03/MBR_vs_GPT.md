| Feature                  | MBR (Master Boot Record)            | GPT (GUID Partition Table)                   |
|--------------------------|-------------------------------------|----------------------------------------------|
| Max number of partitions | 4 primary (or 3 + 1 extended)       | Up to 128 partitions (depending on the OS)   |
| Max disk size            | 2 TB                                | Over 9 zettabytes (theoretical limit)        |
| Compatibility            | Older systems, BIOS-based           | Modern systems, UEFI-based                   |
| Redundancy               | None                                | Yes, stores a backup of the partition table  |
| Checksum (CRC)           | No                                  | Yes, for error detection                     |
