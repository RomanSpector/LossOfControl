--######################################################################
--######         Bakcport LossOfControl from retail              #######
------------------------------------------------------------------------
--######################################################################
------------------------------------------------------------------------
--######       My Discord: https://discord.gg/Fm9kgfk            #######
------------------------------------------------------------------------
--######################################################################

local LossOfControl = LibStub("AceAddon-3.0"):NewAddon("LossOfControl", "AceEvent-3.0");
_G.LossOfControl = LossOfControl;
LossOfControl.timer = LibStub("AceTimer-3.0");
local LossOfControl_AddControlOrUpdate, LossOfControl_AddInterruptControl, LossOfControl_Hide;

SOUNDKIT = SOUNDKIT or {};
SOUNDKIT.UI_LOSS_OF_CONTROL_START = "Interface\\AddOns\\LossOfControl\\Media\\Sound\\34468.ogg";

local blacklist = {
    [72120] = true,
    [70106] = true,
    [72121] = true,
    [24134] = true,
    [71151] = true,
    [23262] = true,
    [38064] = true,
    [49010] = true,
    [72426] = true,
    -- [spellID] = true,
};

local SpellSchoolString = {
    [0x1]  = STRING_SCHOOL_PHYSICAL,
    [0x2]  = STRING_SCHOOL_HOLY,
    [0x4]  = STRING_SCHOOL_FIRE,
    [0x8]  = STRING_SCHOOL_NATURE,
    [0x10] = STRING_SCHOOL_FROST,
    [0x20] = STRING_SCHOOL_SHADOW,
    [0x40] = STRING_SCHOOL_ARCANE,
    -- double
    [0x3]  = STRING_SCHOOL_HOLYSTRIKE,
    [0x5]  = STRING_SCHOOL_FLAMESTRIKE,
    [0x6]  = STRING_SCHOOL_HOLYFIRE,
    [0x9]  = STRING_SCHOOL_STORMSTRIKE,
    [0xA]  = STRING_SCHOOL_HOLYSTORM,
    [0xC]  = STRING_SCHOOL_FIRESTORM,
    [0x11] = STRING_SCHOOL_FROSTSTRIKE,
    [0x12] = STRING_SCHOOL_HOLYFROST,
    [0x14] = STRING_SCHOOL_FROSTFIRE,
    [0x18] = STRING_SCHOOL_FROSTSTORM,
    [0x21] = STRING_SCHOOL_SHADOWSTRIKE,
    [0x22] = STRING_SCHOOL_SHADOWLIGHT,
    [0x24] = STRING_SCHOOL_SHADOWFLAME,
    [0x28] = STRING_SCHOOL_SHADOWSTORM,
    [0x30] = STRING_SCHOOL_SHADOWFROST,
    [0x41] = STRING_SCHOOL_SPELLSTRIKE,
    [0x42] = STRING_SCHOOL_DIVINE,
    [0x44] = STRING_SCHOOL_SPELLFIRE,
    [0x48] = STRING_SCHOOL_SPELLSTORM,
    [0x50] = STRING_SCHOOL_SPELLFROST,
    [0x60] = STRING_SCHOOL_SPELLSHADOW,
    [0x1C] = STRING_SCHOOL_ELEMENTAL,
    -- triple and more
    [0x7C] = STRING_SCHOOL_CHROMATIC,
    [0x7E] = STRING_SCHOOL_MAGIC,
    [0x7F] = STRING_SCHOOL_CHAOS,
};

function GetSchoolString(lockoutSchool)
    if ( SpellSchoolString[lockoutSchool] ) then
        return SpellSchoolString[lockoutSchool];
    end
end

local lockoutChannel = {
    --
    [GetSpellInfo(12051)] = GetSpellInfo(42897),
    --
    [GetSpellInfo(53007)] = GetSpellInfo(32375),
    --
    [GetSpellInfo(64901)] = GetSpellInfo(48071),
    [GetSpellInfo(64843)] = GetSpellInfo(48071),
    --
    [GetSpellInfo(48447)] = GetSpellInfo(50763),
};

function RaidNotice_UpdateSlots( slotFrame, timings, elapsedTime, hasFading  )
	if ( slotFrame.scrollTime ) then
		slotFrame.scrollTime = slotFrame.scrollTime + elapsedTime;
		if ( slotFrame.scrollTime <= timings["RAID_NOTICE_SCALE_UP_TIME"] ) then
            slotFrame:SetTextHeight(floor(timings["RAID_NOTICE_MIN_HEIGHT"]+
            ((timings["RAID_NOTICE_MAX_HEIGHT"]-timings["RAID_NOTICE_MIN_HEIGHT"])*slotFrame.scrollTime/timings["RAID_NOTICE_SCALE_UP_TIME"])));
        		elseif ( slotFrame.scrollTime <= timings["RAID_NOTICE_SCALE_DOWN_TIME"] ) then
            slotFrame:SetTextHeight(floor(timings["RAID_NOTICE_MAX_HEIGHT"] -
            ((timings["RAID_NOTICE_MAX_HEIGHT"]-timings["RAID_NOTICE_MIN_HEIGHT"])*(slotFrame.scrollTime -
             timings["RAID_NOTICE_SCALE_UP_TIME"])/(timings["RAID_NOTICE_SCALE_DOWN_TIME"] -
             timings["RAID_NOTICE_SCALE_UP_TIME"]))));
		else
			slotFrame:SetTextHeight(timings["RAID_NOTICE_MIN_HEIGHT"]);
			slotFrame.scrollTime = nil;
		end
	end
    if ( hasFading ) then
		FadingFrame_OnUpdate(slotFrame);
	end
end

function CooldownFrame_Clear(self)
	self:Hide();
end

-------------------------------------------------------------

-------------------------------------------------------------
LossOfControlAnimGroupMixin = {};
LossOfControlAnimGroupMixin.AnimationGroup = {};

function LossOfControlAnimGroupMixin:Mixin(...)
	for i = 1, select("#", ...) do
		local mixin = select(i, ...);
		self.AnimationGroup[i] = mixin;
	end
end

function LossOfControlAnimGroupMixin:Play()
    for _, childKey in pairs(self.AnimationGroup) do
        childKey:Play();
    end
end

function LossOfControlAnimGroupMixin:Stop()
    for _, childKey in pairs(self.AnimationGroup) do
        childKey:Stop();
    end
end

function LossOfControlAnimGroupMixin:IsPlaying()
    for _, childKey in pairs(self.AnimationGroup) do
        return childKey:IsPlaying();
    end
end

LossOfContolrMixin = LossOfControl;
LossOfContolrMixin.ActiveControl = {};

function LossOfContolrMixin:OnLoad()
    self:RegisterEvent("UNIT_AURA", LossOfControl_AddControlOrUpdate);
    self:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED", LossOfControl_AddInterruptControl);
    self:RegisterEvent("PLAYER_ENTERING_WORLD", LossOfControl_Hide);

    self.Anim = LossOfControlAnimGroupMixin;
end

function LossOfContolrMixin:SetShown(value)
    if value then
        self:Show();
    else
         self:Hide();
    end
end

function LossOfContolrMixin:Added()
    local update = false;

    for i = 1, 255 do
        local AbilityName, _, iconTexture, _, locType, duration, expirationTime, _, _, _, spellID = UnitAura("player", i, "HARMFUL");
        if ( not AbilityName or blacklist[spellID] ) then
            break;
        end

        if C_LossOfControl.ControlList[spellID]
        or C_LossOfControl.ControlList[AbilityName] then
            local spellInfo = C_LossOfControl.ControlList;
            local Fields = {
                locType = locType,
                spellID = spellID,
                displayText = spellInfo[spellID] and spellInfo[spellID][1] or spellInfo[AbilityName][1],
                iconTexture = iconTexture,
                startTime = GetTime(),
                expirationTime = expirationTime,
                timeRemaining = expirationTime - GetTime(),
                duration = duration,
                lockoutSchool = nil,
                priority = spellInfo[spellID] and spellInfo[spellID][2] or spellInfo[AbilityName][2],
                displayType = spellInfo[spellID] and spellInfo[spellID][3] or spellInfo[AbilityName][3],
            }
            if not self.ActiveControl[spellID] or self.ActiveControl[spellID] < expirationTime then
                self.ActiveControl[spellID] = expirationTime;
                self:ScanEvents(Fields);
                update = true;
            end
        end

    end

    return update;
end

function LossOfContolrMixin:Update()
    local update = false;

    for index, controlData in pairs(C_LossOfControl.ControlData) do
        if not self:GetControlID(controlData.spellID)
        and not controlData.lockoutSchool then
            self.ActiveControl[controlData.spellID] = nil;
            C_LossOfControl.ControlData[index] = nil;
            C_LossOfControl.ControlData = self:SetControlDataPriority(C_LossOfControl.ControlData);
            self:SendMessage("LOSS_OF_CONTROL_UPDATE", LossOfControlFrame);
            update = true;
        end
    end

    return update;
end

function LossOfContolrMixin:AddInterruptControl(event, ...)
    local _, subEvent, _, _, _, _, destName, _, spellID, _, _, _, spellName, lockoutSchool = ...;

    if ( subEvent == "SPELL_INTERRUPT" and destName == UnitName("player") ) then
        if lockoutSchool then
            local _, _, iconTexture = GetSpellInfo(spellID);
            local duration;

            if lockoutChannel[spellName] then
                _, duration = GetSpellCooldown(lockoutChannel[spellName]);
            else
                _, duration = GetSpellCooldown(spellName);
            end

            local Fields = {
                locType = "SCHOOL_INTERRUPT",
                spellID = spellID,
                displayText = LOSS_OF_CONTROL_DISPLAY_INTERRUPT_SCHOOL,
                iconTexture = iconTexture,
                startTime = GetTime(),
                expirationTime = duration + GetTime(),
                timeRemaining = duration,
                duration = duration,
                lockoutSchool = lockoutSchool,
                priority = 5,
                displayType = LossOfControl:GetDisplayValue(LOC_TYPE_INTERRUPT),
            }

            self:ScanEvents(Fields);
            self.ActiveControl[spellID] = true;
            LossOfControl.timer:ScheduleTimer( function() self:InterruptUpdate() end, duration );
        end
    end

end

function LossOfContolrMixin:InterruptUpdate()
    for k, v in pairs(C_LossOfControl.ControlData) do
        if ( v.lockoutSchool and math.floor(v.expirationTime - GetTime()) <= 0 ) then
            C_LossOfControl.ControlData[k] = nil;
            C_LossOfControl.ControlData = self:SetControlDataPriority(C_LossOfControl.ControlData);
        end
    end
    self:SendMessage("LOSS_OF_CONTROL_UPDATE", LossOfControlFrame);
end

function LossOfContolrMixin:SetControlDataPriority(ControlData)
    local t = {}
    for _, data in pairs(ControlData) do
        if data and data.priority then
            t[#t + 1] = data;
        end
    end

    table.sort(t, function (a,b)
        if a.priority == b.priority then
            return a.expirationTime > b.expirationTime;
        else
            return (a.priority > b.priority);
        end
    end)

    return t
end

function LossOfContolrMixin:GetControlID(spellID)
    for i = 1, 255 do
        local debuffID = select(11, UnitAura("player", i, "HARMFUL"));
        if ( not debuffID ) then
            return;
        end

        if ( spellID == debuffID ) then
            return true;
        end
    end
end

function LossOfContolrMixin:ScanEvents(Fields)
    tinsert(C_LossOfControl.ControlData, Fields);
    C_LossOfControl.ControlData = self:SetControlDataPriority(C_LossOfControl.ControlData); -- сразу сортируем, т.к. от индекса толку никакого
    local index = C_LossOfControl.GetActiveLossOfControlDataCount();
    self:SendMessage("LOSS_OF_CONTROL_ADDED", LossOfControlFrame, index);
end

function LossOfContolrMixin:RegisterEvents(event)
    self:RegisterMessage(event, LossOfControlFrame_OnEvent);
end

function LossOfContolrMixin:UnRegisterEvents(event)
    self:UnregisterMessage(event, LossOfControlFrame_OnEvent);
end

function LossOfControl_AddInterruptControl(event, ...)
    if ( event and ... ) then
        LossOfContolrMixin:AddInterruptControl(event, ...);
    end
end

function LossOfControl_AddControlOrUpdate(event, unit)
    if not ( unit == "player" ) then
        return;
    end

    return LossOfContolrMixin:Update() or LossOfContolrMixin:Added();
end

function LossOfControl_Hide()
    if LossOfControlFrame and LossOfControlFrame:IsShown() then
        LossOfControlFrame:Hide();
        LossOfContolrMixin.ActiveControl = {};
        C_LossOfControl.ControlData = {};
    end
end

TimeLeftMixin = {};

function TimeLeftMixin:SetShown(value)
    if ( value ) then
        self:Show();
    else
        self:Hide();
    end
end

function Mixin(object, ...)
	for i = 1, select("#", ...) do
		local mixin = select(i, ...);
		for k, v in pairs(mixin) do
			object[k] = v;
		end
	end
	return object;
end
-- where ​... are the mixins to mixin
function CreateFromMixins(...)
	return Mixin({}, ...);
end

function CreateAndInitFromMixin(mixin, ...)
	local object = CreateFromMixins(mixin);
	object:Init(...);
	return object;
end