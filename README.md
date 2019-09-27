ThinkPad Fan Control
============================
Version 0.5.1

This is a Modified Version of Stanko's ThinkPad-Fan-Control Version 0.5.0

Due to the Changes make to Linux over the 8 years since Stanko created this program

The program launching script no longer works properly.

Therefore I make some adjustments and Modifications.

You can find his original code on GitHub as well. Stanko/ThinkPad-Fan-Control

The Original README File is available here as OLD-README.md


Project is NOT in the Active Development
---------------------
The Original Creator: Stanko no longer uses a ThinkPad, therefore discontinued the project.

On the other hand, I am no where close to being a Professional Dev.

And I only use my Old ThinkPad as an On-the-Go Laptop.

The program is tested on ThinkPad T410s with Fedora 30

You can ask me questions, and I can give some suggestions, but I may not be able to fix problems deeper into Stanko's Code.

I made these adjustments because the Original Code as of Sept. 20th 2019 no longer works due to changes in Linux.

And I am here to share these changes for people like me who is not an expert at Coding or Linux.

Warranty and Warning Info
---------------------
This Program DOES NOT come with a Warranty.

And it WILL DAMAGE your device if used improperly!!

Damages may include:

Overheat Damage due to Incorrect Fan Speed Settings

Damage to Cooling Fan due to Long-Term Full-Speed Operation


Use this program at YOUR OWN RISK!!

Introduction
---------------------
This is program for controlling fans speed on IBM/Lenovo ThinkPads.

It is written for Linux only. This program is written in C, using GTK GUI.

Setup
---------------------
There are a few steps you need to do, in order to control the fan speed with this program.

1. Add the following line to file "/etc/modprobe.d/alsa-base.conf"

        options thinkpad_acpi fan_control=1


2. Install the GTK Development Libraries

        yum install libgnomeui-devel
        
        
        
        OR
        
        apt-get install libgnomeui-devel



After these steps, reboot.

---------------------
After the reboot, you would need to compile the code.

By the use of this simple command.

    make


Start-Up
---------------------------------
You must run this program as root, because only root can change the speed of fans.

I personally recommend using "start.sh", which will run ThinkPad Fan Control under administrator privileges.

Example:

        sudo ./start.sh
        

Start-Up Special Info
--------------------

Some System due to Desktop Environments Limitations would display an error. Example: GNOME Desktop Environment

If so, you need to Configure to Allow SuperUser GUI Application

        xhost +local:

(This MAY BE REQUIRED Everytime before launching the program)

I don't understand how to fix "tpfc_start-up.sh" 

Therefore it would not work for now.

How to Use
--------------------
The program has two modes - Automatic and Manual.

Manual Mode is very simple:

Choose the Fan Speed and Click the "Change Speed" button.



The Automatic Mode is a bit more complicated.


There are four options you can change:

* Scan Interval - how often the program will check for the CPUtemperature (default - 120s).
* Critical temperature - the program will speed up the fans when this temperature is reached (default - 55C).
* Safe temperature - the program will switch the fans to normal when the temperature is lower than this (default - 50C)
* Fan level speed - the speed of fans when the CPU reaches the critical temperature (default - 7).
 
If you would like to change the values for these options,

Click the "Set Options Above" button



I hope you enjoy using this :D

