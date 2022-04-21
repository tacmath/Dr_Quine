COLLEEN = Colleen
GRACE = Grace
SULLY = Sully
CC = c++ 

all: $(COLLEEN) $(GRACE) $(SULLY)

$(COLLEEN): colleen.cpp
		$(CC) -o $@ Colleen.cpp

$(GRACE): Grace.cpp
		$(CC) -o $@ Grace.cpp

$(SULLY):  Sully.cpp
		$(CC) -o $@ Sully.cpp

clean:
		rm -f Grace_kid.cpp Sully_*

fclean: clean
		rm -f $(COLLEEN) $(GRACE) $(SULLY)

re: fclean all