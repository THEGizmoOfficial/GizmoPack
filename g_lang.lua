--[[
    @author: Xen & THEGizmo
    @copyright: 2022-2023
    @description: System Language
    All rights reserved
]]--

languages = {
    ["polish"] = {
        ["none"] = "Brak",
        ["selected"] = "Zaznaczona tekstura:",
        ["next"] = "Następna strona",
        ["previous"] = "Poprzednia strona",
        ["texture"] = "Ilość tekstur:",
        ["chatinfo"] = "By dodać teksturę na obiekt, najpierw wybierz ją z edytora tekstur!",

        ["modeinfo1"] = "Rodzaj",
        ["modeinfo2"] = "ID Modelu",
        ["modeinfo3"] = "Nazwa",
        ["modeinfo4"] = "Zasób",
        ["modeinfo5"] = "Tekstura A",
        ["modeinfo6"] = "Tekstura B",
        ["modeinfo7"] = "Tekstura C",
        ["modeinfo8"] = "Tekstura D",
        ["modeinfo9"] = "brak",
        ["modeinfoOFF"] = "Wyłączono statystyki",
        ["modeinfoON"] = "Włączono statystyki",
    },
    ["english"] = {
        ["none"] = "None",
        ["selected"] = "Selected texture:",
        ["next"] = "Next page",
        ["previous"] = "Previous page",
        ["texture"] = "Number of textures:",
        ["chatinfo"] = "To add a texture to an object, first select it from the texture editor!",

        ["modeinfo1"] = "Type",
        ["modeinfo2"] = "ID Model",
        ["modeinfo3"] = "Name",
        ["modeinfo4"] = "Resource",
        ["modeinfo5"] = "Texture A",
        ["modeinfo6"] = "Texture B",
        ["modeinfo7"] = "Texture C",
        ["modeinfo8"] = "Texture D",
        ["modeinfo9"] = "None",
        ["modeinfoOFF"] = "Statistics disabled",
        ["modeinfoON"] = "Statistics enabled",
    },
}

function getTranslation(language, text)
    return languages[language][text] or "error"
end