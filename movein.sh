#!/bin/bash

if [ $# == 0 ]
then
	echo "please add a file to movein"
	echo "eg:"
	echo "     ./movein.sh ~/.vim"
	exit
fi

filepath=$1
filename=${filepath##*/}

echo $basename
#if [  -L $filepath ]
#then
#	echo "$filepath is a symbolic link,abort"
#	exit
#fi

if [ ! -f $filepath -a ! -d $filepath ]
then
	echo "cannot find  $filepath,abort"
	exit
fi


echo "movein  $filepath"
mv $filepath `pwd`/$filename
echo "add link"
ln -fs `pwd`/$filename  $filepath
echo "now the file is:"
echo "`ls -l $filepath`"
