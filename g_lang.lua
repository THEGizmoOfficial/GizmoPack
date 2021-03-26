--[[
    Author: XeN
    Description: languages
    Build: 1.4.1
]]

languages = {
    ["polish"] = {
        ["none"] = "Brak",
        ["editor"] = "Edytor tekstur",
        ["selected"] = "Zaznaczona tekstura:",
        ["next"] = "Następna strona",
        ["previous"] = "Poprzednia strona",
        ["texture"] = "Ilość tekstur:",
    },
    ["english"] = {
        ["none"] = "None",
        ["editor"] = "Texture editor",
        ["selected"] = "Selected texture:",
        ["next"] = "Next page",
        ["previous"] = "Previous page",
        ["texture"] = "Number of textures:",
    },
}

function getTranslation(language, text)
    return languages[language][text] or "error"
end