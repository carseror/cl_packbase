-- carrypeople syncs
RegisterServerEvent('CarryPeople:sync')
AddEventHandler('CarryPeople:sync', function(target, animationLib,animationLib2, animation, animation2, distans, distans2, height,targetSrc,length,spin,controlFlagSrc,controlFlagTarget,animFlagTarget)
	TriggerClientEvent('CarryPeople:syncTarget', targetSrc, source, animationLib2, animation2, distans, distans2, height, length,spin,controlFlagTarget,animFlagTarget)
	TriggerClientEvent('CarryPeople:syncMe', source, animationLib, animation,length,controlFlagSrc,animFlagTarget)
end)

RegisterServerEvent('CarryPeople:stop')
AddEventHandler('CarryPeople:stop', function(targetSrc)
	TriggerClientEvent('CarryPeople:cl_stop', targetSrc)
end)
-- th and carrypeople syncs

RegisterServerEvent('cl_animations:sync')
AddEventHandler('cl_animations:sync', function(target, animationLib,animationLib2, animation, animation2, distans, distans2, height,targetSrc,length,spin,controlFlagSrc,controlFlagTarget,animFlagTarget,attachFlag)
	print("got to srv cl_animations:sync")
	print("got that fucking attach flag as: " .. tostring(attachFlag))
	TriggerClientEvent('cl_animations:syncTarget', targetSrc, source, animationLib2, animation2, distans, distans2, height, length,spin,controlFlagTarget,animFlagTarget,attachFlag)
	print("triggering to target: " .. tostring(targetSrc))
	TriggerClientEvent('cl_animations:syncMe', source, animationLib, animation,length,controlFlagSrc,animFlagTarget)
end)

RegisterServerEvent('cl_animations:stop')
AddEventHandler('cl_animations:stop', function(targetSrc)
	TriggerClientEvent('cl_animations:cl_stop', targetSrc)
end)