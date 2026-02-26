Everthing in linux is a process 

you can find that with command: top

ps aux | grep ping in Linux

This command is used to find running ping processes.

1️⃣ ps aux

Shows all running processes in the system.

a → all users

u → user-oriented format

x → include processes without terminal

2️⃣ |

Pipe operator → Sends output of first command to second command.

3️⃣ grep ping (grep : global regular experession printer)

Filters the output and shows only lines containing "ping"


example output
prikshit  1234  0.0  0.1  243280  8560  ??  S   10:30AM   0:00.01 ping google.com
prikshit  1250  0.0  0.0  243280   800  ??  S   10:31AM   0:00.00 grep ping


🔹 To Avoid Showing grep Process

Use:

ps aux | grep ping | grep -v grep

OR better:

pgrep -a ping

(pgrep is cleaner and more professional for DevOps work)

# SSH : Secure 

1️⃣ What is SSH?

SSH (Secure Shell) is a network protocol that allows you to securely connect to a remote machine over the internet or a local network.

It encrypts communication between:

Your local machine (client)

The remote server

Default port: 22

2️⃣ Why Do We Use SSH?

Before SSH, people used Telnet (not secure — passwords sent in plain text).

SSH solves major security problems:

✅ Encrypted communication
✅ Secure remote login
✅ Secure file transfer
✅ Safe server management
✅ Authentication using keys instead of passwords

3️⃣ Where Is SSH Used?

As a developer (especially DevOps / React Native backend work), SSH is used for:

Connecting to cloud servers like Amazon Web Services EC2
Managing Linux servers
Deploying applications
Accessing Docker servers
Git authentication (GitHub SSH keys)
Secure tunneling (port forwarding)

SSH work on 2 thing: 1. private key  and 2. Public key 

ssh -i pathTo_ur_private_key username@DNS


# to generate key by ssh : ssh-keygen

if we want to connect 2 server : To jisko connect krna hai uski public key ko hum jiss server se connect krna hai usski .ssh folder me authorized_keys file me add krna padega

how we find the all ssh config

cat /etc/ssh/sshd_config    


# List all installed packages
apt list --installed


# systemctl status nginx : this will tell the status of nginx

# journalctl -u nginx : will give the logs

<!-- user add -->

# sudo useradd -m berline 
: This will:

Create a new user named berline

-m → Create a home directory automatically
→ /home/berline

Copy default files from /etc/skel into that home directory


sudo useradd -M usernxzaxdsa

✅ What it did:

Created a new user named usernxzaxdsa

-M → Did NOT create a home directory

Default shell is usually /bin/sh

# how will we set the password for berlin

# sudo passwd berlin


<!-- switch user -->

# su user_name : su berlin

# cat /etc/group

✅ This command shows all groups available on your Linux system.

# sudo usermod -aG groupname username

Add user to docker group:

sudo usermod -aG docker berline

-a → append (do NOT remove existing groups)

-G → specify secondary group
