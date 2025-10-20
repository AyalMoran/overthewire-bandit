#The password for the next level is stored in the file data.txt, which is a hexdump of a file that has been repeatedly compressed. For this level it may be useful to create a directory under /tmp in which you can work. Use mkdir with a hard to guess directory name. Or better, use the command “mktemp -d”. Then copy the datafile using cp, and rename it using mv (read the manpages!)

this is a bit mroe tricky than previous levels:

mktemp -d 
cp data.txt /tmp/tmp.XYZ/data.txt

xxd -r data.txt > data.bin

file -b --mime-type data.bin

#depending on what you get from file command, use the appropriate decompression tool

gunzip -c data{n}.bin > data{n+1}.bin
bunzip2 -c data{n}.bin > data{n+1}.bin
unzip -p data{n}.bin > data{n+1}.bin
unxz -c data{n}.bin > data{n+1}.bin
#tar is a bit special, as it needs a real file so this might not work always.
tar -xf data{n}.bin > data{n+1}.bin

#do this repeatedly until 'file -b --mime-type data.bin' returns text/plain

cat data{final}.bin


#password:
FO5dwFsc0cbaIiH0h8J2eUks2vdTDwAn