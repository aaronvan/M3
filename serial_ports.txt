serialX = device [parameter:value]
device can be: dummy | modem | nullmodem | directserial
parameter is: irq
value is:
for directserial: realport (required), rxdelay (optional).
for modem: listenport (optional).
for nullmodem: server, rxdelay, txdelay, telnet, usedtr, transparent, port, inhsocket (all optional).
Defaults:
serial1=dummy
serial2=dummy
serial3=disabled
serial4=disabled
An example of how to configure an actual serial port for I/O use:

serial1=directserial realport:com1