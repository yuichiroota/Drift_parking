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
echo ${STEERING_SERVO_NO}=175 > ${SERVOBLASTER}
sleep 1

echo '3 Steer straight & Drive forward'
echo ${STEERING_SERVO_NO}=150 > ${SERVOBLASTER}
sleep 1
echo ${ACCEL_SERVO_NO}=130 > ${SERVOBLASTER}
sleep 1

echo '4 Power off & Steer to the left'
echo ${ACCEL_SERVO_NO}=150 > ${SERVOBLASTER}
echo ${STEERING_SERVO_NO}=105 > ${SERVOBLASTER}
sleep 1

echo '5 Drive forward & Steer to the right'
echo ${ACCEL_SERVO_NO}=149 > ${SERVOBLASTER}
echo ${STEERING_SERVO_NO}=125 > ${SERVOBLASTER}
usleep 200000
echo ${ACCEL_SERVO_NO}=148 > ${SERVOBLASTER}
echo ${STEERING_SERVO_NO}=145 > ${SERVOBLASTER}
usleep 200000
echo ${ACCEL_SERVO_NO}=147 > ${SERVOBLASTER}
echo ${STEERING_SERVO_NO}=150 > ${SERVOBLASTER}
usleep 200000
echo ${ACCEL_SERVO_NO}=148 > ${SERVOBLASTER}
echo ${STEERING_SERVO_NO}=165 > ${SERVOBLASTER}
usleep 200000
echo ${ACCEL_SERVO_NO}=149 > ${SERVOBLASTER}
echo ${STEERING_SERVO_NO}=175 > ${SERVOBLASTER}
usleep 200000

echo '6 Power off'
echo ${ACCEL_SERVO_NO}=150 > ${SERVOBLASTER}

