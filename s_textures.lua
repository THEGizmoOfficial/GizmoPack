--[[
    @author: Xen & THEGizmo
    @copyright: 2022-2023
    @description: Texture Apply On Map Start, Command Handler
    All rights reserved
]]--

adminMode = false, --| PL - true - Nikt nie moze otworzyć panelu, false - Każdy może otworzyć panel  | ENG - true - Nobody can open the panel, false - Anyone can open the panel

addCommandHandler("editor", function(plr, cmd)
    if not adminMode then
        triggerClientEvent(plr, "editor:createWindow", resourceRoot)
    end
end)

--[[addEventHandler("onResourceStart", root, function(resource)
    local info = getResourceInfo(resource, "type")
    if info == "map" then
        triggerLatentClientEvent(root, "reloadObjectTextures", root)
    end
end)]]--

addEventHandler("onElementCreate", root, function()
    if source and getElementType(source) == "object" then
        triggerLatentClientEvent(root, "reloadObjectTextures", root, source)
    end
end)

addEventHandler("onElementDestroy", root, function()
    if source and getElementType(source) == "object" then
        triggerLatentClientEvent(root, "clearObjectTextures", root, source)
    end
end)