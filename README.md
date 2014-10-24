Decoder -- The Intrig decoder on Android
========================================

Decoder is an example android application that uses xenon, the Intrig decoder, currently in beta (beta.intrig.com).  The 
purpose of this project is to showcase xenon on Android, and help you get up and running with the development system.

I tried to keep this application simple, yet non-trivial.  The decoder.cpp file is well documented.  

Upon launch, you will first see a text window displaying "loading spec..." for a couple of seconds.  Once loaded, you will 
see a screen full of Hex ASCII strings.  These are various LTE messages.  If you press the "Decode All" button, you should 
see the Hex ASCII strings replaced with the corresponding name of the message.

And that's it.

Installing
----------

It requires the Android SDK and NDK, as well as Qt for Android.  The xenon shared library for android can be found
at the Intrig download page, http://beta.intrig.com/download.

First, download the xenon shared library, currently named "xenon-2.0.0-beta3-linux-i686-armv7.tgz".  Even though it
has linux-i686 in the name, that is just the architecture used when cross compiling.  

untar the above into a place of your choice. The .pro file expects them to be in /opt/xenon-2.0.0-beta3-armv7, but
you can change that to whatever you want.

    sudo tar -C /opt -zxvf xenon-2.0.0-beta2-armv7.tgz

Download and install the Android NDK, Android SDK, ant, and Java.

Run qtcreator, and in the Tools/Options dialog, select the Android tab.  Make sure all the paths are correct.

Copying Assets
--------------

Copy the xddl directory from /opt/xenon-2.0.0-beta3-armv7/xddl into dist/assets

This is a special directory used to add files to the android package that is downloaded to the device.


Notes for Ubuntu x86-64
-----------------------

sudo apt-get install g++-multilib openjdk-7-jdk ant
