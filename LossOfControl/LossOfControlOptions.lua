--######################################################################
--######         Bakcport LossOfControl from retail              #######
------------------------------------------------------------------------
--######################################################################
------------------------------------------------------------------------
--######       My Discord: https://discord.gg/Fm9kgfk            #######
------------------------------------------------------------------------
--######################################################################


local LossOfControl = LibStub("AceAddon-3.0"):NewAddon("LossOfControl", "AceEvent-3.0", "LibSink-2.0")
_G.LossOfControl = LossOfControl

local AceDB = LibStub("AceDB-3.0")
local AceConfig = LibStub("AceConfig-3.0")
local AceConfigDialog = LibStub("AceConfigDialog-3.0")
local profileDB

local LOC_OPTION_VALUE = function()
    return {
        [0] = LOC_OPTION_OFF,
        [1] = LOC_OPTION_ALERT,
        [2] = LOC_OPTION_FULL,
    }
end

local LOC_OPTION_SET = function(self, value)
    profileDB[self.option.name] = value
    C_LossOfControl:SetDisplay()
end

local LOC_OPTION_GET = function(self)
    return profileDB[self.option.name]
end

LossOfControl.default = {
    [LOC_TYPE_FULL] = 2,
    [LOC_TYPE_SILENCE] = 2,
    [LOC_TYPE_INTERRUPT] = 2,
    [LOC_TYPE_DISARM] = 2,
    [LOC_TYPE_ROOT] = 2
}

LossOfControl.options = {
    name = "Loss Of Control Alerts",
    handler = LossOfControl,
    type = "group",
    args = {
        full = {
            order = 1,
            type = "select",
            style = "dropdown",
            name = LOC_TYPE_FULL,
            get = LOC_OPTION_GET,
            set = LOC_OPTION_SET,
            values = LOC_OPTION_VALUE,
        },
        Silence = {
            order = 2,
            type = "select",
            style = "dropdown",
            name = LOC_TYPE_SILENCE,
            get = function()
                return profileDB[LOC_TYPE_SILENCE]
            end,
            set = LOC_OPTION_SET,
            values = LOC_OPTION_VALUE,
        },
        Interrupt = {
            order = 3,
            type = "select",
            style = "dropdown",
            name = LOC_TYPE_INTERRUPT,
            get = LOC_OPTION_GET,
            set = LOC_OPTION_SET,
            values = LOC_OPTION_VALUE,
        },
        Disarm = {
            order = 4,
            type = "select",
            style = "dropdown",
            name = LOC_TYPE_DISARM,
            get = LOC_OPTION_GET,
            set = LOC_OPTION_SET,
            values = LOC_OPTION_VALUE,
        },
        Root = {
            order = 5,
            type = "select",
            style = "dropdown",
            name = LOC_TYPE_ROOT,
            get = LOC_OPTION_GET,
            set = LOC_OPTION_SET,
            values = LOC_OPTION_VALUE,
        },
    },
}

function LossOfControl:SetupOptions()
    AceConfig:RegisterOptionsTable("LossOfControl", self.options, {SLASH_LossOfControl1})

    self.optionsFrames = {}
    self.optionsFrames.general = AceConfigDialog:AddToBlizOptions("LossOfControl", "LossOfControl")
end

function LossOfControl:OnInitialize()
    self.db = AceDB:New("LossOfControlDB")
    if not self.db then
		Print("Error: Database not loaded correctly. Please exit out of WoW and delete LossOfControl.lua found in: \\World of Warcraft\\WTF\\Account\\<Account Name>>\\SavedVariables\\")
    end

    self.db.char.myVal = self.db.char.myVal or LossOfControl.default
    profileDB = self.db.char.myVal

    self:SetupOptions()
    C_LossOfControl:SetDisplay()
 
    SLASH_LossOfControl1  = "/loc"
    SlashCmdList["LossOfControl"] = function()
        InterfaceOptionsFrame_OpenToCategory(LossOfControl.optionsFrames.general)
    end

end

function LossOfControl:GetDisplayValue(type)
    return profileDB[type]
end

