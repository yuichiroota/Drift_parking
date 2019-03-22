#!/bin/bash

SERVOBLASTER=/dev/servoblaster
STEERING_SERVO_NO=1
ACCEL_SERVO_NO=2

echo '1 Steer straight & Drive forward'
echo ${STEERING_SERVO_NO}=150 > ${SERVOBLASTER}
sleep 1
echo ${ACCEL_SERVO_NO}=145 > ${SERVOBLASTER}
sleep 1

echo '2 Steer to the right'
echo ${STEERING_SERVO_NO}=135 > ${SERVOBLASTER} 
sleep 1

echo '3 Steer straight & Drive forward'
echo ${STEERING_SERVO_NO}=150 > ${SERVOBLASTER}
sleep 1
echo ${ACCEL_SERVO_NO}=130 > ${SERVOBLASTER}
sleepenh 0.4                                     #1sec is too late

echo '4 Power off & Steer to the left'
echo ${ACCEL_SERVO_NO}=150 > ${SERVOBLASTER}
echo ${STEERING_SERVO_NO}=195 > ${SERVOBLASTER}
sleep 1

echo '5 Drive forward & Steer to the right'
echo ${ACCEL_SERVO_NO}=145 > ${SERVOBLASTER}
echo ${STEERING_SERVO_NO}=175 > ${SERVOBLASTER}
sleepenh 0.3 #usleeep don't use.need install sleepenh

echo ${ACCEL_SERVO_NO}=143 > ${SERVOBLASTER}
echo ${STEERING_SERVO_NO}=155 > ${SERVOBLASTER}
sleepenh 0.3

echo ${ACCEL_SERVO_NO}=150 > ${SERVOBLASTER}
echo ${STEERING_SERVO_NO}=150 > ${SERVOBLASTER}
sleepenh 0.3

echo ${ACCEL_SERVO_NO}=150 > ${SERVOBLASTER}
echo ${STEERING_SERVO_NO}=145 > ${SERVOBLASTER}
sleepenh 0.3

echo ${ACCEL_SERVO_NO}=150 > ${SERVOBLASTER}
echo ${STEERING_SERVO_NO}=125 > ${SERVOBLASTER}
sleepenh 0.3

echo '6 Power off'
echo ${ACCEL_SERVO_NO}=150 > ${SERVOBLASTER}

