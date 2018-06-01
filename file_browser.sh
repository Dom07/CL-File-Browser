#! /bin/bash
reset
echo "Select an option from below:"
echo "1) File Browser"
echo "2) Process Manager"
echo "3) Exit"
read s
reset

while :
do
case $s in
	1) echo "------------------------------------------------------------"
	   echo "          Welcome To Simple File Browser"
	   echo "------------------------------------------------------------"
	   echo -e "\n"
	   echo "Current Directory" 
	   pwd
	   echo -e "\n"
	   echo "Files in Current Directory"
	   ls
	   echo -e "\n"
	   echo "Select an option from below"
	   echo "1) Change Current Directory"
	   echo "2) Create New Folder"
   	   echo "3) Delete a Folder"
   	   echo "4) Move File to another location"
	   echo "5) Rename File"
	   echo "6) Exit"
	   echo -e "\n"
	   read s1
	   echo -e "\n"
	  

	case $s1 in
	1) echo "Enter the Directory you want to work in or press .. to get out of this folder "
	   read direct
	   cd $direct
	   ;;
	2) echo "Enter the name of the file you want to create"
		read filename
		mkdir $filename
		ls
		;;
	3) echo "Enter the directory of the file you want to delete"
		read pathname
		rm -r $pathname
		ls
		;;
	4)echo "Enter the filename you want to move "
	  read filename
	  echo "Enter the directory where you want to move the file"
	  read direcname
	  mv $filename $direcname	
	    ;;
	5)echo "Enter the filename you want to rename"
	  read filename
	  echo "Enter the new filename"
	  read newname
	  mv $filename $newname
	  ;;
	
	6)exit 0
     	  ;;
	
	esac;;

	
	2) echo "------------------------------------------------------------"
	   echo "          Welcome To Process Manager"
	   echo "------------------------------------------------------------"
	   echo -e "\n"
	   echo "Active Processes"
	   ps aux
	   echo -e "\n"
	   echo "Select an option:"
	   echo "1) Kill Process"
	   echo "2) Exit"
	   echo -e "\n"
	   read s2
	   echo -e "\n"
	   
	case $s2 in
	1) echo "Enter the id of the process you want to kill: "
	   read p
	   kill $p
	   ;;
	2) exit 0
	   ;;
	   
	esac;;
	    
	3) exit 0
	;;
esac
done



	
