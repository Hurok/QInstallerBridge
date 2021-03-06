#!/bin/bash
# BSD-3 Clause.
# Copyright (C) 2017 Antony Jr.
# 
# A Simple Installer Script for Linux Users.

isCurl=$(command -v curl);
packageName="QInstallerBridge"
license="LICENSE"
repoRawUrl="https://raw.githubusercontent.com/antony-jr/QInstallerBridge/master/"

if [ $isCurl ]
	then
		echo Installing $packageName
		echo Creating directory:: $packageName
		mkdir $packageName
		cd $packageName
		echo Downloading LICENSE and the latest files... 
		curl -L https://git.io/vbdTI | bash # Install QArchive
		curl -L https://git.io/vbdTW | bash # Install QEasyDownloader
		curl -L $repoRawUrl$packageName.hpp --output $packageName.hpp
		curl -L $repoRawUrl$license --output $license
		echo Installation complete!
		echo Thank you for choosing $packageName
		cd ..
		exit
		
	else
		echo Please install curl to continue the installation.
		echo Aborting... 
		exit
fi
