#!/bin/bash
echo " select one among the following to execute"
echo -e "1)searchword \n2)check name \n3)find file \n4)create softlink \n5)edit file \n6) EXIT "
read opt
case $opt in 
1) echo " enter the word to search "
	read word
	grep -l -i -w -R "$word" /home/ec2-user/ > file_list
	if [ $? -eq 0 ] ; then
		echo " $word found in below files "
		cat file_list
	else
		echo "$word  not found in any files "
	fi
	rm file_list
/home/ec2-user/shellscripts/menu.sh
	;;

2) echo " enter the name to check its type "
	read name_f
	name=`find /home/ec2-user/ -iname "$name_f"`
	if [ -f $name ] ; then
	echo " $name is a file"
	elif [ -d $name ]; then
		echo " $name is directory "
	elif [ -L $name ] ; then
		echo "$name is a link"
	else 
		echo " $name not found "
	fi
/home/ec2-user/shellscripts/menu.sh
	;;
3) echo "enter the name of the file to find"
	read name
	find /home/ec2-user/ -iname "$name" > file_loc
	if [ -s file_loc ] ; then
		echo "$name is found in below location "
		cat file_loc
	else
		echo "$name not found "
	fi
	rm file_loc
	;;
4) echo " enter the name of the file to create soft link "
	read file
	if [ ! -f $file ] ; then
	echo " $file not found "
	exit 1
	fi
	echo " enter the name of the link "
	read link
	if [ -L $link ] ; then
	echo " link by name $link already exist "
	exit 1
	else
	ln -s $file $link 
	fi
	if [ $? -eq 0 ]; then
	echo " soft link $link created"
	else
	echo " softlink not created "
	fi
	;;
5) echo "enter the name of the file to edit"
	read name
	if [ -f $name ]; then
	vim $name
	else
	echo " file by name $name not found "
	fi
	;;
6) echo "you have opted for EXIT "
	;;
esac

