exports('color', function(name)
    if Colors[name] then
        return Colors[name]
    end
    return Colors["Default"]
end)