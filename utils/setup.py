import subprocess
import os

def cloneRepos():
    subprocess.run(["git", "clone", "https://github.com/konradybcio/pongoOS"])
    os.system("mkdir -p depBin")

def compileDepends():
    print("[INFO] Compiling pongoOS....")
    os.system("cd PongoOS && make all")
    os.system("cp PongoOS/build/Pongo.bin depBin")

def main():
    print("===> linPad6 setup utility")
    print("                --> just clones and compiles things....")
    print("[INFO] Downloading and installing palera1n....")
    os.system('sudo /bin/sh -c "$(curl -fsSL https://static.palera.in/scripts/install.sh)"') # hacky litterl fix
    print("[INFO] Cloning repos....")
    cloneRepos()
    print("[INFO] Compiling depends....")
    compileDepends()
    print("[INFO] You need linux to compile the kernel!")
    print("[INFO] So get linux....")
    print("[INFO] And clone this, then run utils/buildKernel.py!")

main()