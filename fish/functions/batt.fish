function batt
	upower -i /org/freedesktop/UPower/devices/battery_BATX| grep -E "state|to\ full|percentage"
end
