COLLEEN = Colleen
GRACE = Grace
SULLY = Sully
CC = gcc -Wall -Wextra -Werror

all: $(COLLEEN) $(GRACE) $(SULLY)

$(COLLEEN): Colleen.c
		$(CC) -o $@ Colleen.c

$(GRACE): Grace.c
		$(CC) -o $@ Grace.c

$(SULLY):  Sully.c
		$(CC) -o $@ Sully.c

clean:
		rm -f Grace_kid.c Sully_*

fclean: clean
		rm -f $(COLLEEN) $(GRACE) $(SULLY)

re: fclean all
