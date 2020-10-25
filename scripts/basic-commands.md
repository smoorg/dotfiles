cat
man
info
locale
ls -a
ls -l 		file list as detailed table
ls -lh		file list as detailed table with proper memory mapping to KB, MB or GB from just bytes
head [file]
tails [file]
sort -n
sort -rn
wget http://pluralsight.comm 			throws an error due to improper url
wget http://pluralsight.comm 2> errorfile.txt 	throws an error and saves it into the error file

standard streams
0 - standard in
1 - standard out
2 - standard error

wc [file] 			word count
echo "Hello" > test.txt 	erases text and replace it with an input "Hello"
echo "hello" >> test.txt	appends input "Hello" to the file 

gz [file]				archive compression format algorytmh
tar xzf [file]				"extract zipped file", unzip
tar czf [new-archive-name] [folder]/	creates new archive from the specified folder
tar cf [large-archive] [folder]/	creates large archive (uncompressed)
gzip [large-archive].tar [folder]/	creates gzip archive
unzip					unpack the archive

lsusb					usb devices list
lspci					pci devices list
lshw					all hardware list

uname -r				kernel version used by the user
ls /lib/modules/`uname -r`		bash allows to inject another command that way
lsmod | grep sound
modprobe soundcore

ip route show				access to network router
or 'route'
netstat -i				list of connections
netstat -p				list of opened ports
sudo dhclient				make sure that dhcp exists
ip addr					info about current connections
or 'ifconfig'
host google.com				provides webpage IP
scp [file] [user@]@[remote_IP]:/home/[user] transfers provided file to specified localization on the remote machine


