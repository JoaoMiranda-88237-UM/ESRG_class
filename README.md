# ERSG_class - Group menseger
This project implements a "Broadcasting Chat service", using some features such as:
* TCP-IP Client/Server; 
* Posix threads;
* Message Queues;
* Daemons;
* Device Drivers.

## How it works?

Each Client is connected to the Server via TCP/IP. After the connection is established, each client can send to the server a character string passed by argument via command line. The server after receiving the message, it forwards the received messages to all connected Clients, and identifies the client that has sent the message. In order to check the status of each connected client. Every 5 seconds the Server checks if each client is still ONLINE or AFK. (it is not shown on the terminal).

#### Interconnection

![plot](./Interconnectio.png)

## How to use?
### 1. Installation

### 2. Execution 
#### 2.1 Start TCP server
Starts a TCP server on a given port.
```Shell
$ ./server <port>
```
#### 2.2 Start Daemon client
Starts a TCP client connected to a given server name on a given port.
```Shell
$ ./daemon <servername> <port> 
```
When this is running, a led (led0 - green led in Raspberry Pi) is light up. This is done via a device driver, developed in previous classes.
#### 2.3 Client - Send message / see received messages
Send message to server or to see messages that have been send to the client since last time. Everytime the user wants to send a message he must use client with the wanted message to be sent. 
```shell
$ ./client <msg[0}> <msg[1}> ... <msg[n]>
```
#### 2.4. Close connection
##### 2.4.1 On client
Type 'close', or use Ctrl+C.
```shell
$ ./tcpclient_send close
```
When this happens, the daemon terminates, and the led that was previously light up (led0) is turned off.

##### 2.4.2  On server
Type 'close', or use Ctrl+C.

## Done by
João Miranda, a88237
Duarte Rodrigues, a88259
Masters in Embedded Systems @ Universidade do Minho, 2021