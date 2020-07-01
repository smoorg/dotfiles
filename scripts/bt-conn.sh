#!/bin/sh

devices=$(bluetoothctl devices | awk '{printf('%1 \n', $3)}')

echo $devices;
