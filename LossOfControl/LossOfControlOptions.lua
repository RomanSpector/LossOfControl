--######################################################################
--######         Bakcport LossOfControl from retail              #######
------------------------------------------------------------------------
--######################################################################
------------------------------------------------------------------------
--######       My Discord: https://discord.gg/Fm9kgfk            #######
------------------------------------------------------------------------
--######################################################################

local LossOfControl = LibStub("AceAddon-3.0"):GetAddon("LossOfControl", "AceEvent-3.0");

local AceDB = LibStub("AceDB-3.0");
local AceConfig = LibStub("AceConfig-3.0");
local AceConfigDialog = LibStub("AceConfigDialog-3.0");
local lossOfControl = "Loss Of Control Alerts";
local profileDB;

local LOC_OPTION_VALUE = function()
    return {
        [0] = LOC_OPTION_OFF,
        [1] = LOC_OPTION_ALERT,
        [2] = LOC_OPTION_FULL,
    };
end

local function SetOptionValue(self, value)
    profileDB[self.option.name] = value;
    LossOfControl:SetDisplay();
end

local function GetOptionValue(self)
    return profileDB[self.option.name];
end

local function SetOptionEnable(self, value)

    for _, state in pairs(self.options.args) do
        if ( state.disabled ~= nil ) then
            state.disabled = not value;
        end
    end

    profileDB[self.option.name] = value;
    LoC_CVar.SetCVar("lossOfControl", value);
    LossOfControl:SendMessage("CVAR_UPDATE", LossOfControlFrame, "LOSS_OF_CONTROL", value and "1" or "0");
end

local function IsOptionEnable()
    return profileDB[lossOfControl];
end

LossOfControl.default = {
    [lossOfControl] = true,
    [LOC_TYPE_FULL] = 2,
    [LOC_TYPE_SILENCE] = 2,
    [LOC_TYPE_INTERRUPT] = 2,
    [LOC_TYPE_DISARM] = 2,
    [LOC_TYPE_ROOT] = 2;
};

LossOfControl.options = {
    name = "",
    handler = LossOfControl,
    type = "group",
    args = {
        lossOfControl = {
            order = 0,
            type = "toggle",
            name = lossOfControl,
            desc = OPTION_TOOLTIP_LOSS_OF_CONTROL,
            get = GetOptionValue,
            set = SetOptionEnable,
            width = "full"
        },
        full = {
            order = 1,
            type = "select",
            style = "dropdown",
            name = LOC_TYPE_FULL,
            desc = OPTION_LOSS_OF_CONTROL_FULL,
            get = GetOptionValue,
            set = SetOptionValue,
            values = LOC_OPTION_VALUE,
            disabled = not IsOptionEnable,
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
            set = SetOptionValue,
            values = LOC_OPTION_VALUE,
            disabled = not IsOptionEnable,
        },
        Interrupt = {
            order = 3,
            type = "select",
            style = "dropdown",
            name = LOC_TYPE_INTERRUPT,
            desc = OPTION_LOSS_OF_CONTROL_INTERRUPT,
            get = GetOptionValue,
            set = SetOptionValue,
            values = LOC_OPTION_VALUE,
            disabled = not IsOptionEnable,
        },
        Disarm = {
            order = 4,
            type = "select",
            style = "dropdown",
            name = LOC_TYPE_DISARM,
            desc = OPTION_LOSS_OF_CONTROL_DISARM,
            get = GetOptionValue,
            set = SetOptionValue,
            values = LOC_OPTION_VALUE,
            disabled = not IsOptionEnable,
        },
        Root = {
            order = 5,
            type = "select",
            style = "dropdown",
            name = LOC_TYPE_ROOT,
            desc = OPTION_LOSS_OF_CONTROL_ROOT,
            get = GetOptionValue,
            set = SetOptionValue,
            values = LOC_OPTION_VALUE,
            disabled = not IsOptionEnable,
        },
    },
};

function LossOfControl:SetupOptions()
    AceConfig:RegisterOptionsTable("LossOfControl", self.options, {SLASH_LossOfControl1});

    self.optionsFrames = {};
    self.optionsFrames.general = AceConfigDialog:AddToBlizOptions("LossOfControl", "LossOfControl");
end

function LossOfControl:OnInitialize()
    self.db = AceDB:New("LossOfControlDB");
    self.db.char.myVal = self.db.char.myVal or self.default;
    profileDB = self.db.char.myVal;

    self:SetupOptions();
    self:SetDisplay();
    LoC_CVar.SetCVar("lossOfControl", self.db.char.myVal["Loss Of Control Alerts"]);
    self:SendMessage("VARIABLES_LOADED", LossOfControlFrame);

    SLASH_LossOfControl1  = "/loc";
    SlashCmdList["LossOfControl"] = function()
        InterfaceOptionsFrame_OpenToCategory(self.optionsFrames.general);
    end

end

function LossOfControl:GetDisplayValue( controlType )
    return profileDB[controlType];
end

local displayType = {
    [LOSS_OF_CONTROL_DISPLAY_DISARM] = LOC_TYPE_DISARM,
    [LOSS_OF_CONTROL_DISPLAY_ROOT] = LOC_TYPE_ROOT,
    [LOSS_OF_CONTROL_DISPLAY_SILENCE] = LOC_TYPE_SILENCE,
};

function LossOfControl:SetDisplay()
    for _, spellData in pairs(C_LossOfControl.ControlList) do
        local controlType = spellData[1];
        spellData[3] = self:GetDisplayValue(displayType[controlType] or LOC_TYPE_FULL);
    end
end

LoC_CVar = LoC_CVar or {};
LoC_CVar.Config = {};

function LoC_CVar.GetCVarBool(name)
    return LoC_CVar.Config[name];
end

function LoC_CVar.SetCVar(eventName, value)
	if ( type(value) == "boolean" ) then
        LoC_CVar.Config[eventName] = value and "1" or "0";
	else
        LoC_CVar.Config[eventName] = value and tostring(value) or nil;
	end
end