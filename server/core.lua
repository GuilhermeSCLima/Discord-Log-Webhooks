RegisterServerEvent("sendWebhooks")
AddEventHandler("sendWebhooks",function(Hook,Message)
    PerformHttpRequest(Webhooks[Hook],function(err,text,headers) end,"POST",json.encode({
        username = serverName,
        avatar_url = serverIcon,
        content = Message["content"] or nil,
        embeds = Message["embeds"] or nil,
	}),{ ["Content-Type"] = "application/json" })
end)

exports('color', function(name)
    if Colors[name] then
        return Colors[name]
    end
    return Colors["Default"]
end)

-- https://discord.com/developers/docs/resources/channel#embed-objects