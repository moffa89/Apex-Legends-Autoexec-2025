# Network Performance Tuning

The registry entries that may be added/changed by this “General Tuning” procedure are:

Disable TCP selective acks option for better cpu utilization

Under HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters
                            
- SackOpts, type REG_DWORD, value set to 0.


Enable fast datagram sending for UDP traffic

Under HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AFD\Parameters
                            
- FastSendDatagramThreshold, type REG_DWORD, value set to 64000.


# Batchfile for install

- I made a .bat file for this [Network Performance Tuning](https://github.com/moffa89/Apex-Legends-Autoexec-2025/blob/main/Tweaks/Network%20Performance%20Tuning/Network%20Performance%20Tuning.bat).

            
