# WMIC
WMIC (Windows Management Instrumentation Command-line) is a command-line utility that allows users to perform Windows management tasks and access system information. It provides a powerful interface to manage hardware, software, and configurations on Windows systems through WMI.

### ✔️ Command

* Startup
```bash
wmic startup list full > c:\startup.txt
```

* DNS Cache
```bash
ipconfig /displaydns > C:\dnscache.txt
```

* List Process
```bash
wmic process list full | more > c:\list_process.txt
```

* List Service
```bash
wmic service list full > c:\list_service.txt
```

* List Job
```bash
wmic job list full > c:\list_job.txt
```

* Product Name
```bash
wmic /node:10.100.100.239 /user:LAB\administrator /password:"P@ssw0rd" product get name > c:\log_product.txt
```

* Process Call
```bash
wmic /node:10.100.100.239 /user:LAB\administrator /password:"P@ssw0rd" process call create > c:\log_process.txt
```

* Check List
```bash
tasklist /s \\10.100.100.239 /u LAB\administrator /p P@ssw0rd > c:\tasklist.txt
```

* Program Initial Connection
```bash
netstat -b 5 >> C:\connections.txt
```

### ©️ Credit
```bash
https://commandwindows.com/netstat.htm
```