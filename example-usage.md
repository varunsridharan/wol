# Example Usage

---

## Sending Test Email Via CLI
The below cmd can be used to send email via mailgun using cli 
### Arguments
1. Email Subject
2. Email Content / Message

```
bash /automation-scripts/email-notifiy.sh  "Hello World" "Some Message Value"
```

---

## Power On
The below cmd can be used to power on remote system 

### Arguments
1. Remote System IP -- ___Used To Check if system is turned on___
2. Remote System MAC Address -- ___Used To Send WOL Magic Packet___
3. Remote System Name  -- ___Used In Email Notification___

```
bash /automation-scripts/power-on.sh "10.0.3.2" "38:D5:47:B2:BB:36" "Proxmox Backup Server"
```

---

## Power Off

### Arguments
1. Remote System IP  -- ___Used To Check if system is turned off___
2. Remote System Username -- User with root ACCESS / permision to send shutdown signal
3. Remote System Password
4. Remote System MAC Address -- ___Used In Email Notification___
5. Remote System Name -- ___Used In Email Notification___
```
bash /automation-scripts/power-off.sh "10.0.3.2" "root" "root-password" "38:D5:47:B2:BB:36" "Proxmox Backup Server"
```
