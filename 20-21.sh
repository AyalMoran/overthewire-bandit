#There is a setuid binary in the homedirectory that does the following: it makes a connection to localhost on the port you specify as a commandline argument. It then reads a line of text from the connection and compares it to the password in the previous level (bandit20). If the password is correct, it will transmit the password for the next level (bandit21).

#NOTE: Try connecting to your own network daemon to see if it works as you think

what ive got so far is open a daemon on localhost that sends the password for bandit20 when connected to, then run the setuid binary pointing to that port.

echo "0qXahG8ZjOVMN9Ghs7iOWsCfZyXOUbYO" | nc -l 8080 &

./suconnect 8080


#password: 
EeoULMCra2q0dSkYj561DX7s1CpBuOBt

