# Registry Tuning

The registry entries that may be added/changed by this “General Tuning” procedure are:

Under HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters:

    Disable TCP selective acks option for better cpu utilization:                            

    SackOpts, type REG_DWORD, value set to 0.

            
Under HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AFD\Parameters:

    Enable fast datagram sending for UDP traffic:
                            
    FastSendDatagramThreshold, type REG_DWORD, value set to 64K.

            
Under HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Ndis\Parameters:

    Set RSS parameters:                               

    RssBaseCpu, type REG_DWORD, value set to 1.

# Otherwise just use my .reg files above. ;-)

            
