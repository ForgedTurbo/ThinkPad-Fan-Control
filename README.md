ThinkPad Fan Control
============================
Version 0.5.1

This is a Modified Version of Stanko's ThinkPad-Fan-Control Version 0.5.0

Due to the Changes made to Linux over the 8 years since Stanko created this program

The program launching script no longer works properly. (Before the Mods)

Therefore I make some Adjustments and Modifications.

You can find his original code on GitHub as well. [Stanko/ThinkPad-Fan-Control](https://github.com/Stanko/ThinkPad-Fan-Control)

The Original README File is available here as OLD-README.md


Project is NOT in the Active Development
---------------------
The Original Creator: Stanko no longer uses a ThinkPad, therefore discontinued the project.

On the other hand, I am no where close to being a Professional Dev.

Therefore, this is a Super Band-Aid Solution.

And I only use my Old ThinkPad as an On-the-Go Laptop.

The program is tested on ThinkPad T410s with Ubuntu 20.04 LTS

You can ask me questions, and I can give some suggestions and instructions, but I may not be able to go deeper into Stanko's Code.

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

Please run all commands under the folder of the program. Admin Rights may be Required. (Sudo)

Setup
---------------------
There are a few steps you need to do, in order to control the fan speed with this program.

1. Add the following line to file "/etc/modprobe.d/alsa-base.conf"

        options thinkpad_acpi fan_control=1


2. Install the GTK Development Libraries

        
        apt-get install gtk2.0
        apt-get install libglade2-dev



After these steps, reboot.

---------------------
After the reboot, you would need to compile the code.

By the use of this simple command.

    make


Start-Up
---------------------------------
You must run this program as root, because only root can change the speed of fans.

I personally recommend using "start.sh", which will run ThinkPad Fan Control under Administrator Privileges.

Example:

        sudo ./start.sh
        

Start-Up Special Info
--------------------

Some System due to Desktop Environments Limitations would display an Error. Example: Older GNOME Desktop Environment

If so, you need to Configure to Allow SuperUser GUI Application

        xhost +local:

(This MAY BE REQUIRED Everytime before Launching the Program)

I don't understand how to fix "tpfc_start-up.sh" 

Therefore it would not work for now... Sorry...

How to Use
--------------------
The program has two modes - Automatic and Manual.

Manual Mode is very simple:

Choose the Fan Speed and Click the "Change Speed" button.



The Automatic Mode is a bit more complicated.


There are four options you can change:

* Scan Interval - how often the program will check for the CPU temperature (default - 120s).
* Critical Temperature - the program will speed up the fans when this temperature is reached (default - 55C).
* Safe Temperature - the program will switch the fans to normal when the temperature is lower than this (default - 50C)
* Fan Level Speed - the speed of fans when the CPU reaches the critical temperature (default - 7).
 
If you would like to change the values for these options,

Click the "Set Options Above" button



I hope you enjoy using this :‑)

