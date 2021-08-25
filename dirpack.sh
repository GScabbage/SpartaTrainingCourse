echo "Please Enter Username:"
read USERNAME
echo "Please Enter Password:"
read -s PASSWORD
echo "Please Enter a Directory Name:"
read DIRECTORY
echo "The current working directory: $PWD"
mkdir $DIRECTORY
touch /home/cybercourse/$DIRECTORY/cyber.log
pwd>>/home/cybercourse/$DIRECTORY/cyber.log
whoami>>/home/cybercourse/$DIRECTORY/cyber.log
date +"%d-%m-%y %T">>/home/cybercourse/$DIRECTORY/cyber.log
echo "$USERNAME">>/home/cybercourse/$DIRECTORY/cyber.log
echo "$PASSWORD">>/home/cybercourse/$DIRECTORY/cyber.log
echo "Please Enter the Number of Packages you wish to Install:"
read PACKAGE_NUMBER
echo "$PACKAGE_NUMBER">>/home/cybercourse/$DIRECTORY/cyber.log

for ((i = 1; i <= PACKAGE_NUMBER; i++))
do 
    echo "Please Enter Package Number $i You Want to Install:"
    read pack
    echo "$pack" >>/home/cybercourse/$DIRECTORY/cyber.log
    sudo apt -y install $pack | tee /home/cybercourse/$DIRECTORY/$pack.log
    sudo apt -y remove --purge $pack
done 
