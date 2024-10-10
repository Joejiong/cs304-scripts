# Define the compiler and flags
CC = gcc
CFLAGS = -Wall -g

# Define the target executable names
TARGETS = lab1p2q1 lab1p2q2 lab1p3 lab1p4

# Rule to compile all targets
# Rule to compile all targets and run them
all: $(TARGETS)
	@echo "Running -----lab1p2q1-----"
	./lab1p2q1
	@echo "Running -----lab1p2q2-----"
	@echo 1 2 1 2 Yeah!| ./lab1p2q2
	@echo "Running -----lab1p3-----"
	@echo "my_name_is_john! I_am_small"| ./lab1p3
	@./lab1p3 
	@echo "-----Creating temporary file----"
	@echo "my_name_is_john! I_am_small" > lab1p3in
	@echo "Running lab1p3 with lab1p3in as input..."
	./lab1p3 lab1p3in
	cat lab1p3out
	@echo "Running -----lab1p4-----"
	./lab1p4 my name is Marwan and my car is White
	
# Rule to compile each file into an executable
lab1p2q1: lab1p2q1.c
	$(CC) $(CFLAGS) -o lab1p2q1 lab1p2q1.c

lab1p2q2: lab1p2q2.c
	$(CC) $(CFLAGS) -o lab1p2q2 lab1p2q2.c

lab1p3: lab1p3.c
	$(CC) $(CFLAGS) -o lab1p3 lab1p3.c

lab1p4: lab1p4.c
	$(CC) $(CFLAGS) -o lab1p4 lab1p4.c

run_auto:
	echo "my_name_is_john" | ./lab1p3

# Rule for cleaning up compiled files
clean:
	rm -f $(TARGETS)
