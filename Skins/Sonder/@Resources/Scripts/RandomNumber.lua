function Initialize()
	RandomNumGenerated = SKIN:GetVariable("RandomNumGenerated")
	if RandomNumGenerated == "0" then
		GenerateRandomNumbers()
	end
end

function GenerateRandomNumbers()
	if RandomNumGenerated == "0" then
		math.randomseed(os.time())
		randomnum = math.random() and math.random() and math.random() and math.random(2147483647)
		SKIN:Bang('!WriteKeyValue Variables RandomNumID "'..randomnum..'" "#@#Variables.inc"')
		SKIN:Bang('!WriteKeyValue Variables RandomNumGenerated 1 "#@#Variables.inc"')
	end
end