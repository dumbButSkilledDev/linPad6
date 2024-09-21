#!/bin/bash

echo "=====> linux-apple compilation script"
echo "                       [CROSS COMPILATION EDITION]"
echo "===> yes this should invoked by buildk_cross.py"
cd linux-apple
echo "[INFO] running defconfig...."
make ARCH=arm64 LLVM=1 defconfig
echo "[INFO] running menuconfig in 5 seconds...."
echo "[INFO] hopefully you read readme.md...."
sleep 5
make ARCH=arm64 LLVM=1 defconfig
echo "[INFO] config done, starting compilation in 5 seconds...."
sleep 5
make ARCH=arm64 LLVM=1 -j$(nproc) Image.lzma dtbs
cp arch/arm64/boot/Image.lzma ../depBin/kernel.lzma
echo "[INFO] Complete!"
echo "[INFO] You can copy depBin/kernel.lzma to linux/macos's depBin (if using diffrent machine)"