import subprocess
import os

def getKernel():
    subprocess.run(["git", "clone", "https://github.com/konradybcio/linux-apple"])

def buildKernel():
    os.system("bash utils/compKernelCross.sh")

def main():
    print("===> linPad6 linux-apple kernel builder")
    print("------> time to compile dat kernel!")
    print("[INFO] Cloning kernel....")
    getKernel()
    print("[INFO] running compile script....")
    buildKernel()

main()