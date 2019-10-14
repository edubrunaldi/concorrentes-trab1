.PHONY: all
all: JR.o concorrentes.o 
	@$(CXX) $^ -o concorrentes -lpthread -g

%.o:
	@$(CXX) -c $(@:.o=.c) -Wall -g

.PHONY: clean
clean:
	@rm *.o concorrentes
	@rm -r out/*/*/*
	
.PHONY: run
run:
	@./concorrentes
