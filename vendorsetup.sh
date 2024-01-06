#!/bin/bash

echo 'Starting Cloning repos for sky'

echo 'Cloning Device Tree 1'

rm -rf device/xiaomi/sky
git clone https://github.com/ProjectElixir-Devices/device_xiaomi_sky device/xiaomi/sky

echo 'Cloning Kernel tree 2'
rm -rf device/xiaomi/sky-kernel
git clone https://github.com/ProjectElixir-Devices/device_xiaomi_sky-kernel device/xiaomi/sky-kernel

echo 'Cloning Vendor Trees 3'

rm -rf vendor/xiaomi/sky
git clone https://github.com/ProjectElixir-Devices/vendor_xiaomi_sky vendor/xiaomi/sky

echo 'Cloning xiaomi´s common stuffs 4'

rm -rf hardware/xiaomi
git clone https://github.com/Project-Elixir/hardware_xiaomi hardware/xiaomi

echo 'lunch time' 
