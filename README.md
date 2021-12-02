# ESRG_class

 * Start TCP Server:
./tcpserver2.elf "port" 

 * Open TCP Client Daemon connection:
./daemon "Ip con""port"
 
 * Open TCP Client connection:
./client "message"
-> "message" is optional. (Without it just print last messages.)

 **Connection scheme:
 [SERVER]<---|TCP|---->[DEAMON CLIENT]<---|MESSAGE QUEUES|-->[CLIENT]**
 
 * Options available:

    [TCP - MESSAGE QUEUES]
    -Send a message to client:
        In client: ./client "print message"

    [MESSAGE QUEUES - TCP]    
    -Send a message to server and reply to others clients://
        In client: ./client "print message"

    -Kill server://
        In server: "close" or "cntrl+c"

    -Kill client connection://
        In client: ./client "close"

    [TCP]
    -5s to 5s server check state of client:
        Message: "STATE?"
        Daemon reply with state.
        (dont show on terminal)

    -1min to 1min after send a message the daemon client change the state to AFK if it don't sent a message;
        (don't show on terminal)

    [DEVICE DRIVERS]
    -When client start (daemon), the raspberry pi 4 led on

    -When client "close" connection, the raspberry pi 4 led off
    
## Done by
João Miranda, a88237
Duarte Rodrigues, a88259

Masters in Embedded Systems @ Universidade do Minho, 2021
