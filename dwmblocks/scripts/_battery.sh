#!/usr/bin/bash

full_icon=
nearly_full_icon=
middle_icon=
nearly_empty_icon=
empty_icon=

charging=ﮣ

# String manipulaton base = acpi
acpi_string=$(acpi)
read -a acpi_arr <<< $acpi_string

for i in "${acpi_arr[@]}"
do
  if [[ $i == *"," ]]; then
    battery_level=$i
    battery_level=${battery_level//"%,"/}
  fi
done

level=$battery_level

if [[ $level == 'Full,' ]]; then
  level=100
  battery_level=100
fi

if (( $level >= 95 )); then
  icon=$full_icon
elif (( 95 > $level && $level >= 75 )); then
  icon=$nearly_full_icon
elif (( 75 > $level && $level >= 35 )); then
  icon=$middle_icon
elif (( 35 > $level && $level >= 5 )); then
  icon=$nearly_empty_icon
elif (( $level < 5 )); then
  icon=$empty_icon
fi

for i in "${acpi_arr[@]}"
do
  if [[ $i == "Charging," ]]; then
    icon=$charging
  fi
done

echo '[' $icon $battery_level% ']'
