#! /usr/bin/lua5.1
--[[format for instr is in-num/dem all must be present even if they are 0 so
0-1/16 valid 1/16 is not]] --
local inmm = function(instr)
	local instr = instr
	local total, mm
	local inch, num, dem = string.match(instr, "(%d*)[-](%d*)[/](%d*)")
	inch = tonumber(inch)
	num = tonumber(num)
	dem = tonumber(dem)
	if num ~= 0 and dem ~= 0 then
		total = inch + num / dem
	else
		total = inch
	end
	mm = math.floor(total * 25.4 + 0.5)
	return mm
end
--[[first arg number of entrys in a row second arg is the side length same format
no ft 36-0/0 for 3 ft only dose square size blocks the rest of the args are a space
list in-num/dem list of depths one for each sq]] --
local mkgrd = function(rl, ts)
	local sq = inmm(ts) * inmm(ts)
	local str = ''
	local i
	local total = 0
	local rl = tonumber(rl)
	local ct = 0
	for i = 3, #arg do
		local mm = inmm(arg[i])
		ct = ct + 1
		total = total + mm * sq
		str = str .. " " .. tostring(mm) .. " "
		if ct == rl then
			print(str)
			str = ""
			ct = 0
		end
	end
	print(str)
	print(total, "sq mm")
	print(total * 3.531 * math.pow(10, -8), "sq ft")
end
mkgrd(arg[1], arg[2])
