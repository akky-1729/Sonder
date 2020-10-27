function Initialize()
	RandomNumGenerated = SKIN:GetVariable("RandomNumGenerated")
	if RandomNumGenerated == "0" then
		GenerateRandomNumbers()
	end
end

function GenerateRandomNumbers()
	if RandomNumGenerated == "0" then
		for i = 1, 4 do
			--9223372036854775807
			randomnum = math.random(0,100000000000)
			if i == 1 then
				SKIN:Bang('!WriteKeyValue Variables RandomNumSettings "'..randomnum..'" "#@#Variables.inc"')
			elseif i == 2 then
				SKIN:Bang('!WriteKeyValue Variables RandomNumTime "'..randomnum..'" "#@#Variables.inc"')
			elseif i == 3 then
				SKIN:Bang('!WriteKeyValue Variables RandomNumWeather "'..randomnum..'" "#@#Variables.inc"')
			elseif i == 4 then
				SKIN:Bang('!WriteKeyValue Variables RandomNumSpace "'..randomnum..'" "#@#Variables.inc"')
			end
		end
	SKIN:Bang('!WriteKeyValue Variables RandomNumGenerated 1 "#@#Variables.inc"')
	end
end