#!/bin/bash

SERVOBLASTER=/dev/servoblaster
STEERING_SERVO_NO=1
ACCEL_SERVO_NO=2

echo '1 Steer straight & Drive forward'
echo ${STEERING_SERVO_NO}=165 > ${SERVOBLASTER}
sleep 1
echo ${ACCEL_SERVO_NO}=145 > ${SERVOBLASTER}
sleep 1

echo '3 Steer straight & Drive forward'
echo ${STEERING_SERVO_NO}=165 > ${SERVOBLASTER}
sleep 1
echo ${ACCEL_SERVO_NO}=125 > ${SERVOBLASTER}
sleep 1

echo '4 Power off & Steer to the left'
echo ${ACCEL_SERVO_NO}=150 > ${SERVOBLASTER}
#sleepenh 0.5
echo ${STEERING_SERVO_NO}=195 > ${SERVOBLASTER}
sleep 1

echo ${ACCEL_SERVO_NO}=145 > ${SERVOBLASTER}
echo ${STEERING_SERVO_NO}=175 > ${SERVOBLASTER}
sleep 1

echo '5 Drive forward & Steer to the right'
echo ${ACCEL_SERVO_NO}=145 > ${SERVOBLASTER}
echo ${STEERING_SERVO_NO}=175 > ${SERVOBLASTER}
sleepenh 0.3 #usleeep don't use.need install sleepenh

echo ${ACCEL_SERVO_NO}=148 > ${SERVOBLASTER}
echo ${STEERING_SERVO_NO}=155 > ${SERVOBLASTER}
sleepenh 0.3

echo ${ACCEL_SERVO_NO}=149 > ${SERVOBLASTER}
echo ${ACCEL_SERVO_NO}=149 > ${SERVOBLASTER}
echo ${STEERING_SERVO_NO}=145 > ${SERVOBLASTER}
sleepenh 0.3

echo ${ACCEL_SERVO_NO}=150 > ${SERVOBLASTER}
echo ${STEERING_SERVO_NO}=125 > ${SERVOBLASTER}
sleepenh 0.3

echo '6 Power off'
echo ${ACCEL_SERVO_NO}=150 > ${SERVOBLASTER}
echo ${STEERING_SERVO_NO}=160 > ${SERVOBLASTER}
