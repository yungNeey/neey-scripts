Citizen.CreateThread(function()
	while true do
        -- This is the Application ID (Replace this with you own)
		SetDiscordAppId(924602814464938034)

        -- Here you will have to put the image name for the "large" icon.
		SetDiscordRichPresenceAsset('vemonrp')
        
        -- (11-11-2018) New Natives:

        -- Here you can add hover text for the "large" icon.
        SetDiscordRichPresenceAssetText('VenomRP')
       
        -- Here you will have to put the image name for the "small" icon.
        SetDiscordRichPresenceAssetSmall('vemonrp')

        -- Here you can add hover text for the "small" icon.
        SetDiscordRichPresenceAssetSmallText('VenomRP')


        -- (26-02-2021) New Native:

        --[[ 
            Here you can add buttons that will display in your Discord Status,
            First paramater is the button index (0 or 1), second is the title and 
            last is the url (this has to start with "fivem://connect/" or "https://") 
        ]]--
        SetDiscordRichPresenceAction(0, "Discord", "https://discord.gg/H9qCuUjqf8")
        SetDiscordRichPresenceAction(1, "Wejdz Na serwer!", "fivem://connect/http://45.157.233.38:30121")

        -- It updates every minute just in case.
		Citizen.Wait(60000)
	end
end)