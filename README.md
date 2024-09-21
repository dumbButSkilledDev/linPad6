# linPad6
linux with a GUI on the iPad 6, that sucks.<br>
Or you could say, its a dumb linux distro for the ipad6, using the linux-apple kernel fork: https://github.com/konradybcio/linux-apple.<br>
And a pongoOS fork: https://github.com/konradybcio/pongoOS/tree/master<br> Building
## This Project Is WIP.
## You are unable to do anything with it currently.
## But heres some build instructions, that work.... (when i commit the files)
# Building
## Requirements
xcode command line tools<br>
linux machine<br>
macOS machine<br>
python3<br>
arm64 machine (ex raspberryPi) (optinal)<br>
stuff needed to build linux, on linux<br>
clang on linux<br>
## step 1
We need to download palra1n, and compile the fork of pongoOS<br>
MACOS REQUIRED FOR THIS PART (if you have the stuff to build pongoOS on linux, you can run this on linux)<br>
```
    $ git clone https://github.com/dumbButSkilledDev/linPad6
    $ cd linPad6
    (linPad6) $ python3 utils/setup.py
```
A folder called depBin with Pongo.bin inside it should be created.<br>
# step 2 (build dat kernel)
time to build dat kernel!<br>
LINUX REQUIRED, NO EXCEPTIONS!<br>
Instructions for compiling on x86_64 linux:<br>
```
   (linPad6) $ python3 utils/buildk_cross.py
   ---- NOTE: configure the kernel via the on screen prompts, check here for stuff to set depending on chipset: https://github.com/SoMainline/linux-apple-resources/blob/master/HOWTO.md
```
Instructions for compiling on arm64 linux:<br>
```
   (linPad6) $ python3 utils/buildk_native.py
   ---- NOTE: configure the kernel via the on screen prompts, check here for stuff to set depending on chipset: https://github.com/SoMainline/linux-apple-resources/blob/master/HOWTO.md
```
