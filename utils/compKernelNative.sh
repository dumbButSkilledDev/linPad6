#!/bin/bash

echo "=====> linux-apple compilation script"
echo "===> yes this should invoked by buildk_native.py"
cd linux-apple
echo "[INFO] running defconfig...."
make defconfig
echo "[INFO] running menuconfig in 5 seconds...."
echo "[INFO] hopefully you read readme.md...."
sleep 5
make defconfig
echo "[INFO] config done, starting compilation in 5 seconds...."
sleep 5
make -j8 Image.lzma dtbs
cp arch/arm64/boot/Image.lzma ../depBin/kernel.lzma
echo "[INFO] Complete!"
echo "[INFO] You can copy depBin/kernel.lzma to linux/macos's depBin (if using diffrent machine)"