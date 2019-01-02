#!/bin/bash -e

if [ -d ./ignore ] ; then
	rm -rf ./ignore || true
fi

if [ ! -d ./files ] ; then
	mkdir -p files
fi

mkdir -p ./ignore

cd ./ignore/
ar xv ../opencl-tidl-fw_*_am57xx_evm.ipk
tar xf data.tar.gz
cp usr/share/ti/ti-opencl-tidl-fw-tree/eve_firmware.bin ../files/eve_firmware.bin
cp usr/share/ti/ti-opencl-tidl-fw-tree/ocl_tidl_dsp.lib ../files/ocl_tidl_dsp.lib
cd ../
rm -rf ./ignore || true

