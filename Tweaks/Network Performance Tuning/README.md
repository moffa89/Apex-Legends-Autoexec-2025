# Network Performance Tuning

The registry entries that may be added/changed by this “General Tuning” procedure are:

Under HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters:

    Disable TCP selective acks option for better cpu utilization:                            

    SackOpts, type REG_DWORD, value set to 0.

            
Under HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AFD\Parameters:

    Enable fast datagram sending for UDP traffic:
                            
    FastSendDatagramThreshold, type REG_DWORD, value set to 64000.

            
Under HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Ndis\Parameters:

    Set RSS parameters:                               

    RssBaseCpu, type REG_DWORD, value set to 1.


# Batchfile for install

I made a .bat file for this [Network Performance Tuning](https://github.com/moffa89/Apex-Legends-Autoexec-2025/blob/main/Tweaks/Network%20Performance%20Tuning/Network%20Performance%20Tuning.bat).

            
