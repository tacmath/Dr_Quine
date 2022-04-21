COLLEEN = Colleen
GRACE = Grace
SULLY = Sully
COLLEENSRC = Colleen.s
GRACESRC = Grace.s
SULLYSRC = Sully.s

COLLEENOBJ = $(COLLEENSRC:.s=.o) 
GRACEOBJ = $(GRACESRC:.s=.o) 
SULLYOBJ = $(SULLYSRC:.s=.o) 

CC = gcc -Wall -Wextra -Werror

all: $(COLLEEN) $(GRACE) $(SULLY)

./%.o: ./%.s
	nasm -f macho64 $< -o $@

$(COLLEEN):	$(COLLEENOBJ)
		$(CC) $^ -o $@ 

$(GRACE):	$(GRACEOBJ)
		$(CC) $^ -o $@ 

$(SULLY):	$(SULLYOBJ)
		$(CC) $^ -o $@ 

clean:
		rm -f Grace_kid.s Sully_*.s
		rm -f $(COLLEENOBJ) $(GRACEOBJ) $(SULLYOBJ)

fclean: clean
		rm -f $(COLLEEN) $(GRACE) $(SULLY) Sully_*

re: fclean all
