#!/vendor/bin/sh

function print_msg()
{
  echo $1 > /dev/kmsg
}

print_msg "Start Booting Time service!"

BOOTTIME_PATH=/sys/devices/platform/exynos_boottime

echo 1 > $BOOTTIME_PATH/cal_boottime

result=$(cat ${BOOTTIME_PATH}/cal_boottime)

print_msg "result = ${result}"
