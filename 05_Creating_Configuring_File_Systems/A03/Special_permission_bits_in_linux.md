| Bit        | Meaning                     | Effect on File/Script/Directory                                                  | Numeric Value | Example (chmod)   |
|------------|-----------------------------|-----------------------------------------------------------------------------------|----------------|-------------------|
| SUID       | Set User ID                 | File runs with the permissions of the file owner instead of the executing user   | 4              | chmod 4755 file   |
| SGID       | Set Group ID                | File: runs with the file's group permissions<br>Directory: new files inherit group | 2              | chmod 2755 dir    |
| Sticky Bit | Only owner can delete       | Directory: only the file owner (or root) can delete files, even if others can write | 1              | chmod 1755 dir    |

---

🛠️ Notes

The numeric value is used as the first digit in the chmod permission mode.

These special bits can be combined:

chmod 6755 file → sets SUID (4) + SGID (2) = 6

chmod 7755 dir → sets SGID (2) + Sticky Bit (1) = 3

Final permission format:
[special][owner][group][others] → e.g. chmod 4755
means SUID + standard rwxr-xr-x (755) permissions.

Special bits are useful for system-level scripts, shared directories, and security-related behavior.