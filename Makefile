CC_r = arm-linux-gcc
CC_h=gcc
IP = 10.42.0.174

CFLAGS = -pthread -lrt
OBJS = client.elf

daemon: daemon.c ucmd.c
	$(CC_h) -pthread -o daemon.elf daemon.c ucmd.c $(CFLAGS)
	$(CC_r) -pthread -o daemon_rasp.elf daemon.c ucmd.c $(CFLAGS)

server: server.c ucmd.c
	$(CC_h) -pthread -o server.elf server.c ucmd.c $(CFLAGS)

%CC_r -> client[RASP] | CC_h -> client[HOST]
$(OBJS): %.elf: %.c
	$(CC_h) -o $@ $< $(CFLAGS)

all:$(OBJS) server daemon

transfer: 
	scp client.elf daemon_rasp.elf root@$(IP):/etc

.PHONY: clean
clean:
	rm -rf $(OBJS) *.elf
