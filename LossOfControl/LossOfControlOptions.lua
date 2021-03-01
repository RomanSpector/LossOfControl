--######################################################################
--######         Bakcport LossOfControl from retail              #######
------------------------------------------------------------------------
--######################################################################
------------------------------------------------------------------------
--######       My Discord: https://discord.gg/Fm9kgfk            #######
------------------------------------------------------------------------
--######################################################################


local LossOfControl = LibStub("AceAddon-3.0"):GetAddon("LossOfControl", "AceEvent-3.0")
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
    LossOfControl:SetDisplay()
end

local LOC_OPTION_GET = function(self)
    return profileDB[self.option.name]
end

local LOC_OPTION_ENABLE = function(self, value)
    profileDB[self.option.name] = value
    C_Var.SetCVar("lossOfControl", value)
    LossOfControl:SendMessage("CVAR_UPDATE", LossOfControlFrame, "LOSS_OF_CONTROL", value and "1" or "0");
end

LossOfControl.default = {
    [LOC_TYPE_FULL] = 2,
    [LOC_TYPE_SILENCE] = 2,
    [LOC_TYPE_INTERRUPT] = 2,
    [LOC_TYPE_DISARM] = 2,
    [LOC_TYPE_ROOT] = 2
}

LossOfControl.options = {
    name = "",
    handler = LossOfControl,
    type = "group",
    args = {
        lossOfControl = {
            order = 0,
            type = "toggle",
            name = "Loss Of Control Alerts",
            desc = OPTION_TOOLTIP_LOSS_OF_CONTROL,
            get = LOC_OPTION_GET,
            set = LOC_OPTION_ENABLE,
            width = "full"
        },
        full = {
            order = 1,
            type = "select",
            style = "dropdown",
            name = LOC_TYPE_FULL,
            desc = OPTION_LOSS_OF_CONTROL_FULL,
            get = LOC_OPTION_GET,
            set = LOC_OPTION_SET,
            values = LOC_OPTION_VALUE,
        },
        Silence = {
            order = 2,
            type = "select",
            style = "dropdown",
            name = LOC_TYPE_SILENCE,
            desc = OPTION_LOSS_OF_CONTROL_SILENCE,
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
            desc = OPTION_LOSS_OF_CONTROL_INTERRUPT,
            get = LOC_OPTION_GET,
            set = LOC_OPTION_SET,
            values = LOC_OPTION_VALUE,
        },
        Disarm = {
            order = 4,
            type = "select",
            style = "dropdown",
            name = LOC_TYPE_DISARM,
            desc = OPTION_LOSS_OF_CONTROL_DISARM,
            get = LOC_OPTION_GET, 
            set = LOC_OPTION_SET,
            values = LOC_OPTION_VALUE,
        },
        Root = {
            order = 5,
            type = "select",
            style = "dropdown",
            name = LOC_TYPE_ROOT,
            desc = OPTION_LOSS_OF_CONTROL_ROOT,
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
        print("Error: Database not loaded correctly. Please exit out of WoW and delete LossOfControl.lua found in: \\World of Warcraft\\WTF\\Account\\<Account Name>>\\SavedVariables\\")
    end

    self.db.char.myVal = self.db.char.myVal or LossOfControl.default
    profileDB = self.db.char.myVal

    self:SetupOptions()
    LossOfControl:SetDisplay()
    C_Var.SetCVar("lossOfControl", self.db.char.myVal["Loss Of Control Alerts"])
    self:SendMessage("VARIABLES_LOADED", LossOfControlFrame);

    SLASH_LossOfControl1  = "/loc"
    SlashCmdList["LossOfControl"] = function()
        InterfaceOptionsFrame_OpenToCategory(LossOfControl.optionsFrames.general)
    end

end

function LossOfControl:GetDisplayValue( controlType )
    return profileDB[controlType]
end

local displayType = {
    [LOSS_OF_CONTROL_DISPLAY_DISARM] = LOC_TYPE_DISARM,
    [LOSS_OF_CONTROL_DISPLAY_ROOT] = LOC_TYPE_ROOT,
    [LOSS_OF_CONTROL_DISPLAY_SILENCE] = LOSS_OF_CONTROL_DISPLAY_SILENCE,
}

function LossOfControl:SetDisplay()
    for _, spellData in pairs(C_LossOfControl.ControleList) do
        local controlType = spellData[1]
        spellData[3] = self:GetDisplayValue(displayType[controlType] or LOC_TYPE_FULL)
    end
end

C_Var = {}
C_Var.config = {}

function C_Var.GetCVarBool(name)
    return C_Var.config[name]
end

function C_Var.SetCVar(eventName, value)
	if type(value) == "boolean" then
        C_Var.config[eventName] = value and "1" or "0"
	else
        C_Var.config[eventName] = value and tostring(value) or nil
	end
end