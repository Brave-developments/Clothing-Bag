local QBCore = exports['qb-core']:GetCoreObject()

-- Assuming config.lua is in the same directory
Config = Config or {}
TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)

-- Make the clothing bag useable
QBCore.Functions.CreateUseableItem("clothing_bag", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        if Config.WhitelistedJobs[Player.PlayerData.job.name] then
            TriggerClientEvent('brave-clothingbag:client:openBag', source)
        else
            TriggerClientEvent('QBCore:Notify', source, 'You do not have permission to use this item.', 'error')
        end
    end
end)

RegisterNetEvent('brave-clothingbag:server:removeBag', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    
    Player.Functions.RemoveItem('clothing_bag', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['clothing_bag'], "remove")
end)
