# Volume management

command : df -h
explaination : this will tell about the storage and  where it is mounted (mapped) in our filke system

mount and unmount 


command  : root@ip-172-31-34-3:/mnt/data# mount /dev/nvme1n1 /mnt/data

mount: /mnt/data: wrong fs type, bad option, bad superblock on /dev/nvme1n1, missing codepage or helper program, or other error.
       dmesg(1) may have more information after failed mount system call.

---> above is the error because of file is not have same format

--->file conversion command 

command : mkfs -t ext4 /dev/nvme1n1

mke2fs 1.47.0 (5-Feb-2023)
Creating filesystem with 2621440 4k blocks and 655360 inodes
Filesystem UUID: a24c154d-7db2-412b-b974-61850ad32a6d
Superblock backups stored on blocks: 
	32768, 98304, 163840, 229376, 294912, 819200, 884736, 1605632

Allocating group tables: done                            
Writing inode tables: done                            
Creating journal (16384 blocks): done
Writing superblocks and filesystem accounting information: done 



<!-- after conversion ,mount -->

command : mount /dev/nvme1n1 /mnt/data

