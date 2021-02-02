--######################################################################
--######         Bakcport LossOfControl from retail              #######
------------------------------------------------------------------------
--######################################################################
------------------------------------------------------------------------
--######       My Discord: https://discord.gg/Fm9kgfk            #######
------------------------------------------------------------------------
--######################################################################

SOUNDKIT = {
    UI_LOSS_OF_CONTROL_START = "Interface\\AddOns\\LossOfControl\\Media\\Sound\\34468",
}

local blacklist = {
    [72120] = true, 
    [70106] = true, 
    [72121] = true, 
    [24134] = true, 
    [71151] = true, 
    [23262] = true, 
    [38064] = true,     
    [49010] = true,  
    -- [spellID] = true,
    -- [spellID] = true,
}

C_LossOfControl = {}
C_LossOfControl.ControleList = {
    -- Spell        ID             Type      priority 
    [GetSpellInfo(12826)] = {LOSS_OF_CONTROL_DISPLAY_POLYMORPH, 6}, -- Sheep
    [GetSpellInfo(51514)] = {LOSS_OF_CONTROL_DISPLAY_POLYMORPH, 6}, -- Hex
    [GetSpellInfo(71103)] = {LOSS_OF_CONTROL_DISPLAY_POLYMORPH, 6}, -- Combobulating Spray
    [GetSpellInfo(70410)] = {LOSS_OF_CONTROL_DISPLAY_POLYMORPH, 6}, -- Polymorph: Spider

    [GetSpellInfo(14309)] = {LOSS_OF_CONTROL_DISPLAY_FREEZE, 6}, -- Freezing Trap
    [GetSpellInfo(60210)] = {LOSS_OF_CONTROL_DISPLAY_FREEZE, 6}, -- Freezing Arrow
    [GetSpellInfo(49203)] = {LOSS_OF_CONTROL_DISPLAY_FREEZE, 6}, -- Hungering Cold
    [GetSpellInfo(66012)] = {LOSS_OF_CONTROL_DISPLAY_FREEZE, 6}, -- Freezing Slash

    [GetSpellInfo(33786)] = {LOSS_OF_CONTROL_DISPLAY_CYCLONE, 7}, -- Cyclone

    [GetSpellInfo(710)]   = {LOSS_OF_CONTROL_DISPLAY_BANISH, 5}, -- Banish
    [GetSpellInfo(30940)] = {LOSS_OF_CONTROL_DISPLAY_BANISH, 5}, -- Burning Nova
    [GetSpellInfo(70645)] = {LOSS_OF_CONTROL_DISPLAY_BANISH, 5}, -- Chains of Shadow
    --[[
    [GetSpellInfo(1604)]  = {LOSS_OF_CONTROL_DISPLAY_DAZE, 2}, -- Dazed
    [GetSpellInfo(42945)] = {LOSS_OF_CONTROL_DISPLAY_DAZE, 2}, -- Blast Wave
    [GetSpellInfo(53227)] = {LOSS_OF_CONTROL_DISPLAY_DAZE, 2}, -- Typhoon
    [GetSpellInfo(51585)] = {LOSS_OF_CONTROL_DISPLAY_DAZE, 2}, -- Blade Twisting
    ]]
    [GetSpellInfo(6358)]  = {LOSS_OF_CONTROL_DISPLAY_CHARM, 6}, -- Seducation

    [GetSpellInfo(605)]   = {LOSS_OF_CONTROL_DISPLAY_POSSESS, 6}, -- Mind Control
    [GetSpellInfo(71289)] = {LOSS_OF_CONTROL_DISPLAY_POSSESS, 6}, -- Dominate Mind
    [GetSpellInfo(51503)] = {LOSS_OF_CONTROL_DISPLAY_POSSESS, 6}, -- Domination
    [GetSpellInfo(70923)] = {LOSS_OF_CONTROL_DISPLAY_POSSESS, 6}, -- Uncontrollable Frenzy

    [GetSpellInfo(19503)] = {LOSS_OF_CONTROL_DISPLAY_CONFUSE, 6}, -- Scatter Shot
    [GetSpellInfo(70302)] = {LOSS_OF_CONTROL_DISPLAY_CONFUSE, 6}, -- Blinding Dirt

    [GetSpellInfo(20066)] = {LOSS_OF_CONTROL_DISPLAY_INCAPACITATE, 5}, -- Repentance
    [GetSpellInfo(1776)]  = {LOSS_OF_CONTROL_DISPLAY_INCAPACITATE, 5}, -- Gouge
    [GetSpellInfo(32905)] = {LOSS_OF_CONTROL_DISPLAY_INCAPACITATE, 5}, -- Glare
    [GetSpellInfo(29676)] = {LOSS_OF_CONTROL_DISPLAY_INCAPACITATE, 5}, -- Rolling Pin
    [GetSpellInfo(70432)] = {LOSS_OF_CONTROL_DISPLAY_INCAPACITATE, 5}, -- Blood Sap
    [GetSpellInfo(67769)] = {LOSS_OF_CONTROL_DISPLAY_INCAPACITATE, 5}, -- Cobalt Frag Bomb
    [GetSpellInfo(19784)] = {LOSS_OF_CONTROL_DISPLAY_INCAPACITATE, 5}, -- Dark Iron Bomb
    [GetSpellInfo(4064)]  = {LOSS_OF_CONTROL_DISPLAY_INCAPACITATE, 5}, -- Rough Copper Bomb
    [GetSpellInfo(4065)]  = {LOSS_OF_CONTROL_DISPLAY_INCAPACITATE, 5}, -- Large Copper Bomb
    [GetSpellInfo(4066)]  = {LOSS_OF_CONTROL_DISPLAY_INCAPACITATE, 5}, -- Small Bronze Bomb
    [GetSpellInfo(4067)]  = {LOSS_OF_CONTROL_DISPLAY_INCAPACITATE, 5}, -- Big Bronze Bomb
    [GetSpellInfo(4068)]  = {LOSS_OF_CONTROL_DISPLAY_INCAPACITATE, 5}, -- Iron Grenade
    [GetSpellInfo(4069)]  = {LOSS_OF_CONTROL_DISPLAY_INCAPACITATE, 5}, -- Big Iron Bomb
    [GetSpellInfo(12024)] = {LOSS_OF_CONTROL_DISPLAY_INCAPACITATE, 5}, -- Net

    [GetSpellInfo(51724)] = {LOSS_OF_CONTROL_DISPLAY_SAP, 6}, -- Sap

    [GetSpellInfo(10955)] = {LOSS_OF_CONTROL_DISPLAY_SHACKLE_UNDEAD, 6}, -- Shackle Undead

    [GetSpellInfo(49012)] = {LOSS_OF_CONTROL_DISPLAY_SLEEP, 6}, -- Wyvern Sting
    [GetSpellInfo(18658)] = {LOSS_OF_CONTROL_DISPLAY_SLEEP, 6}, -- Hibernate
    [GetSpellInfo(59165)] = {LOSS_OF_CONTROL_DISPLAY_SLEEP, 6}, -- Sleep
    [GetSpellInfo(36333)] = {LOSS_OF_CONTROL_DISPLAY_SLEEP, 6}, -- Anesthetic
    [GetSpellInfo(3636)]  = {LOSS_OF_CONTROL_DISPLAY_SLEEP, 6}, -- Crystalline Slumber
    [GetSpellInfo(16798)] = {LOSS_OF_CONTROL_DISPLAY_SLEEP, 6}, -- Enchanting Lullaby
    [GetSpellInfo(7967)]  = {LOSS_OF_CONTROL_DISPLAY_SLEEP, 6}, -- Naralex's Nightmare
    [GetSpellInfo(29679)] = {LOSS_OF_CONTROL_DISPLAY_SLEEP, 6}, -- Bad Poetry

    [64044]               = {LOSS_OF_CONTROL_DISPLAY_HORROR, 3}, -- Psychic Horror
    [74384]               = {LOSS_OF_CONTROL_DISPLAY_HORROR, 3}, -- Intimidating Roar
    [16508]               = {LOSS_OF_CONTROL_DISPLAY_HORROR, 3}, -- Intimidating Roar
    [48696]               = {LOSS_OF_CONTROL_DISPLAY_HORROR, 3}, -- Intimidating Roar
    [51467]               = {LOSS_OF_CONTROL_DISPLAY_HORROR, 3}, -- Intimidating Roar
    [GetSpellInfo(49106)] = {LOSS_OF_CONTROL_DISPLAY_HORROR, 3}, -- Terrify
    [GetSpellInfo(53438)] = {LOSS_OF_CONTROL_DISPLAY_HORROR, 3}, -- Incite Horror
    [GetSpellInfo(47860)] = {LOSS_OF_CONTROL_DISPLAY_HORROR, 3}, -- Death Coil
    [GetSpellInfo(67677)] = {LOSS_OF_CONTROL_DISPLAY_HORROR, 3}, -- Waking Nightmare
    [GetSpellInfo(73070)] = {LOSS_OF_CONTROL_DISPLAY_HORROR, 3}, -- Incite Terror
    [GetSpellInfo(48144)] = {LOSS_OF_CONTROL_DISPLAY_HORROR, 3}, -- Terrifying Roar
    [GetSpellInfo(72435)] = {LOSS_OF_CONTROL_DISPLAY_HORROR, 3}, -- Defiling Horror
    [GetSpellInfo(72426)] = {LOSS_OF_CONTROL_DISPLAY_HORROR, 3}, -- Impending Despair
    [GetSpellInfo(36922)] = {LOSS_OF_CONTROL_DISPLAY_HORROR, 3}, -- Bellowing Roar

    [42380]               = {LOSS_OF_CONTROL_DISPLAY_DISORIENT, 6}, -- Conflagration
    [GetSpellInfo(42950)] = {LOSS_OF_CONTROL_DISPLAY_DISORIENT, 6}, -- Dragons Breath
    [GetSpellInfo(2094)]  = {LOSS_OF_CONTROL_DISPLAY_DISORIENT, 6}, -- Blind
    [GetSpellInfo(26108)] = {LOSS_OF_CONTROL_DISPLAY_DISORIENT, 6}, -- Glimpse of Madness
    [GetSpellInfo(52524)] = {LOSS_OF_CONTROL_DISPLAY_DISORIENT, 6}, -- Blinding Webs
    [GetSpellInfo(48558)] = {LOSS_OF_CONTROL_DISPLAY_DISORIENT, 6}, -- Backfire
    [GetSpellInfo(66862)] = {LOSS_OF_CONTROL_DISPLAY_DISORIENT, 6}, -- Radiance
    [GetSpellInfo(42805)] = {LOSS_OF_CONTROL_DISPLAY_DISORIENT, 6}, -- Dirty Trick
    [GetSpellInfo(36834)] = {LOSS_OF_CONTROL_DISPLAY_DISORIENT, 6}, -- Arcane Disruption
    [GetSpellInfo(17928)] = {LOSS_OF_CONTROL_DISPLAY_DISORIENT, 6}, -- Howl of Terror
    [GetSpellInfo(30057)] = {LOSS_OF_CONTROL_DISPLAY_DISORIENT, 6}, -- Improved Howl of Terror
    [GetSpellInfo(69240)] = {LOSS_OF_CONTROL_DISPLAY_DISORIENT, 6}, -- Vile Gas

    [GetSpellInfo(53588)] = {LOSS_OF_CONTROL_DISPLAY_SILENCE, 1}, -- Nether Shock
    [GetSpellInfo(1330)]  = {LOSS_OF_CONTROL_DISPLAY_SILENCE, 1}, -- Garrote
    [GetSpellInfo(25046)] = {LOSS_OF_CONTROL_DISPLAY_SILENCE, 1}, -- Arcane Torrent
    [GetSpellInfo(15487)] = {LOSS_OF_CONTROL_DISPLAY_SILENCE, 1}, -- Silence  
    [GetSpellInfo(34490)] = {LOSS_OF_CONTROL_DISPLAY_SILENCE, 1}, -- Silencing Shot
    [GetSpellInfo(18425)] = {LOSS_OF_CONTROL_DISPLAY_SILENCE, 1}, -- Improved Kick
    [GetSpellInfo(18469)] = {LOSS_OF_CONTROL_DISPLAY_SILENCE, 1}, -- Improved Counterspell
    [GetSpellInfo(19647)] = {LOSS_OF_CONTROL_DISPLAY_SILENCE, 1}, -- Spell Lock
    [GetSpellInfo(63529)] = {LOSS_OF_CONTROL_DISPLAY_SILENCE, 1}, -- Shield of the Templar
    [GetSpellInfo(49916)] = {LOSS_OF_CONTROL_DISPLAY_SILENCE, 1}, -- Strangulate
    [GetSpellInfo(18498)] = {LOSS_OF_CONTROL_DISPLAY_SILENCE, 1}, -- Gag Order
    [GetSpellInfo(19821)] = {LOSS_OF_CONTROL_DISPLAY_SILENCE, 1}, -- Arcane Bomb
    [GetSpellInfo(55663)] = {LOSS_OF_CONTROL_DISPLAY_SILENCE, 1}, -- Deafening Roar

    [GetSpellInfo(53543)] = {LOSS_OF_CONTROL_DISPLAY_DISARM, 2}, -- Snatch
    [GetSpellInfo(51722)] = {LOSS_OF_CONTROL_DISPLAY_DISARM, 2}, -- Dismantle
    [GetSpellInfo(676)]   = {LOSS_OF_CONTROL_DISPLAY_DISARM, 2}, -- Disarm
    [GetSpellInfo(53359)] = {LOSS_OF_CONTROL_DISPLAY_DISARM, 2}, -- Chimera Shot
    [GetSpellInfo(64058)] = {LOSS_OF_CONTROL_DISPLAY_DISARM, 2}, -- Psychic Horror
    [GetSpellInfo(64346)] = {LOSS_OF_CONTROL_DISPLAY_DISARM, 2}, -- Fiery Payback

    [GetSpellInfo(20511)] = {LOSS_OF_CONTROL_DISPLAY_FEAR, 3}, -- Intimidating Shout
    [GetSpellInfo(6215)]  = {LOSS_OF_CONTROL_DISPLAY_FEAR, 3}, -- Fear
    [GetSpellInfo(10890)] = {LOSS_OF_CONTROL_DISPLAY_FEAR, 3}, -- Psychic Scream
    [GetSpellInfo(14327)] = {LOSS_OF_CONTROL_DISPLAY_FEAR, 3}, -- Scare Beast
    [GetSpellInfo(10326)] = {LOSS_OF_CONTROL_DISPLAY_FEAR, 3}, -- Turn Evil
    [GetSpellInfo(5246)]  = {LOSS_OF_CONTROL_DISPLAY_FEAR, 3}, -- Intimidating Shout
    [GetSpellInfo(29544)] = {LOSS_OF_CONTROL_DISPLAY_FEAR, 3}, -- Frightening Shout

    [15655]               = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}, -- Shield Slam
    [8285]                = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}, -- Rampage
    [GetSpellInfo(49802)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}, -- Maim
    [GetSpellInfo(5918)]  = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}, -- Shadowstalker Stab
    [GetSpellInfo(15283)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}, -- Stunning Blow
    [GetSpellInfo(36877)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}, -- Stun Forever
    [GetSpellInfo(16075)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}, -- Throw Axe
    [GetSpellInfo(16045)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}, -- Encage
    [GetSpellInfo(47772)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}, -- Ice Nova
    [GetSpellInfo(49704)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}, -- Encasing Webs
    [GetSpellInfo(69222)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}, -- Throw Shield
    [GetSpellInfo(48131)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}, -- Stomp
    [GetSpellInfo(50234)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}, -- Crush
    [GetSpellInfo(55959)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}, -- Embrace of the Vampyr
    [GetSpellInfo(47995)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}, -- Intercept (Pet)
    [GetSpellInfo(53562)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}, -- Ravage
    [GetSpellInfo(53568)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}, -- Sonic Blast
    [GetSpellInfo(12809)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}, -- Concussion Blow
    [GetSpellInfo(46968)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}, -- Shockwave
    [GetSpellInfo(10308)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}, -- Hammer of Justice
    [GetSpellInfo(8983)]  = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}, -- Bash
    [GetSpellInfo(19577)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}, -- Intimidation
    [GetSpellInfo(8643)]  = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}, -- Kidney Shot
    [GetSpellInfo(20549)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}, -- War Stomp
    [GetSpellInfo(20252)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}, -- Intercept
    [GetSpellInfo(44572)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}, -- Deep Freeze
    [GetSpellInfo(30414)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}, -- Shadowfury
    [GetSpellInfo(2812)]  = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}, -- Holy Wrath
    [GetSpellInfo(22703)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}, -- Inferno Effect
    [GetSpellInfo(60995)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}, -- Demon Charge
    [GetSpellInfo(47481)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}, -- Gnaw  
    [GetSpellInfo(12355)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}, -- Impact
    [GetSpellInfo(16544)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}, -- Improved Fire Nova Totem
    [GetSpellInfo(39796)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}, -- Stoneclaw Totem
    [GetSpellInfo(20170)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}, -- Seal of Justice
    [GetSpellInfo(12798)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}, -- Revenge Stunned 
    [GetSpellInfo(1833)]  = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}, -- Cheap Shot
    [GetSpellInfo(49803)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}, -- Pounce 
    [GetSpellInfo(7922)]  = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}, -- Charge Stun
    [GetSpellInfo(66683)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}, -- Massive Crash
    [GetSpellInfo(66770)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}, -- Ferocious Butt
    [GetSpellInfo(70980)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}, -- Web Wrap
    [GetSpellInfo(66547)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}, -- Confess
    [GetSpellInfo(51750)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}, -- Screams of the Dead
    [GetSpellInfo(53148)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}, -- Charge
    [GetSpellInfo(35570)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}, -- Charge
    [GetSpellInfo(52825)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}, -- Swoop
    [GetSpellInfo(35011)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}, -- Knockdown
    [GetSpellInfo(58154)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}, -- Hammer of Injustice    
    [GetSpellInfo(51491)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}, -- Unrelenting Strike

    [GetSpellInfo(53548)] = {LOSS_OF_CONTROL_DISPLAY_ROOT, 4}, -- Pin
    [GetSpellInfo(47698)] = {LOSS_OF_CONTROL_DISPLAY_ROOT, 4}, -- Crystal Chains
    [GetSpellInfo(48179)] = {LOSS_OF_CONTROL_DISPLAY_ROOT, 4}, -- Crystallize
    [GetSpellInfo(50690)] = {LOSS_OF_CONTROL_DISPLAY_ROOT, 4}, -- Immobilizing Field
    [GetSpellInfo(49711)] = {LOSS_OF_CONTROL_DISPLAY_ROOT, 4}, -- Hooked Net
    [GetSpellInfo(53322)] = {LOSS_OF_CONTROL_DISPLAY_ROOT, 4}, -- Crushing Webs
    [GetSpellInfo(42917)] = {LOSS_OF_CONTROL_DISPLAY_ROOT, 4}, -- Frost Nova
    [GetSpellInfo(53308)] = {LOSS_OF_CONTROL_DISPLAY_ROOT, 4}, -- Entangling Roots
    [GetSpellInfo(53313)] = {LOSS_OF_CONTROL_DISPLAY_ROOT, 4}, -- Natures Grasp
    [GetSpellInfo(8377)]  = {LOSS_OF_CONTROL_DISPLAY_ROOT, 4}, -- Earthgrab   
    [GetSpellInfo(19675)] = {LOSS_OF_CONTROL_DISPLAY_ROOT, 4}, -- Feral Charge Effect
    [GetSpellInfo(19306)] = {LOSS_OF_CONTROL_DISPLAY_ROOT, 4}, -- Counterattack
    [GetSpellInfo(19185)] = {LOSS_OF_CONTROL_DISPLAY_ROOT, 4}, -- Entrapment
    [GetSpellInfo(54706)] = {LOSS_OF_CONTROL_DISPLAY_ROOT, 4}, -- Venom Web Spray
    [GetSpellInfo(4167)]  = {LOSS_OF_CONTROL_DISPLAY_ROOT, 4}, -- Web
    [GetSpellInfo(33395)] = {LOSS_OF_CONTROL_DISPLAY_ROOT, 4}, -- Freeze
    [GetSpellInfo(12494)] = {LOSS_OF_CONTROL_DISPLAY_ROOT, 4}, -- Frostbite
    [GetSpellInfo(55080)] = {LOSS_OF_CONTROL_DISPLAY_ROOT, 4}, -- Shattered Barrier
    [GetSpellInfo(58373)] = {LOSS_OF_CONTROL_DISPLAY_ROOT, 5}, -- Glyph of Hamstring
    [GetSpellInfo(23694)] = {LOSS_OF_CONTROL_DISPLAY_ROOT, 5}, -- Improved Hamstring
    [GetSpellInfo(39965)] = {LOSS_OF_CONTROL_DISPLAY_ROOT, 4}, -- Frost Grenade
    [GetSpellInfo(55536)] = {LOSS_OF_CONTROL_DISPLAY_ROOT, 4}, -- Frostweave Net
    [GetSpellInfo(13099)] = {LOSS_OF_CONTROL_DISPLAY_ROOT, 4}, -- Net-o-MaticК
    [GetSpellInfo(52491)] = {LOSS_OF_CONTROL_DISPLAY_ROOT, 4}, -- Web Explosion
    [GetSpellInfo(56632)] = {LOSS_OF_CONTROL_DISPLAY_ROOT, 4}, -- Tangled Webs
}

function C_LossOfControl:SetDisplay()
    for _, info in pairs(self.ControleList) do
        if info and info[1] == LOSS_OF_CONTROL_DISPLAY_DISARM then
           info[3] = LossOfControl:GetDisplayValue(LOC_TYPE_DISARM)
        elseif info and info[1] == LOSS_OF_CONTROL_DISPLAY_ROOT then
            info[3] = LossOfControl:GetDisplayValue(LOC_TYPE_ROOT)
        elseif info and info[1] == LOSS_OF_CONTROL_DISPLAY_SILENCE then
            info[3] = LossOfControl:GetDisplayValue(LOC_TYPE_SILENCE)
        elseif info then
            info[3] = LossOfControl:GetDisplayValue(LOC_TYPE_FULL)
        end
    end
end

function LossOfControlFrame_AnimPlay( self )
	self.RedLineTop.Anim:Play()
	self.RedLineBottom.Anim:Play()
	self.Icon.Anim:Play()
end

function LossOfControlFrame_AnimStop( self )
	self.RedLineTop.Anim:Stop()
	self.RedLineBottom.Anim:Stop()
	self.Icon.Anim:Stop()
end

function LossOfControlFrame_AnimIsPlaying( self )
	if self.RedLineTop.Anim:IsPlaying()
	or self.RedLineBottom.Anim:IsPlaying()
	or self.Icon.Anim:IsPlaying() then
		return true
	end
end

function LossOfControlFrame_SetShown( self, value )
    if value then 
        self:Show()
    else
         self:Hide()
    end
end

SpellSchoolString = {
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
}

function GetSchoolString(lockoutSchool)
    if ( SpellSchoolString[lockoutSchool] ) then
        return SpellSchoolString[lockoutSchool]
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
}

C_LossOfControl.ControlData = {}
local ActiveControl = {}

C_LossOfControl.GetActiveLossOfControlDataCount = function()
    return 1 -- #C_LossOfControl.ControlData нахуй это вообще нужно, если всегда единицу возвращает?
end

C_LossOfControl.GetActiveLossOfControlData = function(eventIndex)
    local data = C_LossOfControl.ControlData[eventIndex]
    if not data then return nil end
    data.timeRemaining = data.expirationTime and data.expirationTime - GetTime() or nil
    return data
end

function LossOfControl_ScanEvents(Fields)
    tinsert(C_LossOfControl.ControlData, Fields)
    C_LossOfControl.ControlData = LossOfControl_SetControlDataPriority(C_LossOfControl.ControlData)
    local index = C_LossOfControl.GetActiveLossOfControlDataCount()
    C_LossOfControl.ScanEvents:TriggerEvent("LOSS_OF_CONTROL_ADDED", index)
end

function LossOfControl_GetControlID(spellID)
    for i = 1, 255 do
        local id = select(11, UnitAura("player", i, "HARMFUL"))
        if not spellID then return end
        if spellID == id then
            return true
        end
    end
end

function LossOfControl_SetControlDataPriority(ControlData)
    local t = {}
    for _, data in pairs(ControlData) do
        if data and data.priority then
            t[#t + 1] = data
        end
    end
    table.sort(t, function (a,b)
            if a.priority == b.priority then
                return a.expirationTime > b.expirationTime
            else
                return (a.priority > b.priority)
        end
    end)
    return t
end

function LossOfControl_InterruptUpdate()
    for k, v in pairs(C_LossOfControl.ControlData) do
        if ( v.lockoutSchool and math.floor(v.expirationTime - GetTime()) <= 0 ) then
            C_LossOfControl.ControlData[k] = nil;
            C_LossOfControl.ControlData = LossOfControl_SetControlDataPriority(C_LossOfControl.ControlData);
        end
    end
    C_LossOfControl.ScanEvents:TriggerEvent("LOSS_OF_CONTROL_UPDATE");
end

function LossOfControl_AddControlOrUpdate(lockoutSchool, spellId, spellName)
    local Fields
    if lockoutSchool then
        local _, _, iconTexture = GetSpellInfo(spellId);
        local duration;
        if lockoutChannel[spellName] then
            _, duration = GetSpellCooldown(lockoutChannel[spellName]);
        else
            _, duration = GetSpellCooldown(spellName);
        end

        Fields = {
            locType = "SCHOOL_INTERRUPT",
            spellID = spellId,
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

        LossOfControl_ScanEvents(Fields);
        ActiveControl[spellId] = true;
        C_LossOfControl.timer:ScheduleTimer(LossOfControl_InterruptUpdate, duration);
        return
    end

    for index, controlData in pairs(C_LossOfControl.ControlData) do
        if not LossOfControl_GetControlID(controlData.spellID)
        and not controlData.lockoutSchool then
            ActiveControl[controlData.spellID] = nil;
            C_LossOfControl.ControlData[index] = nil;
            C_LossOfControl.ControlData = LossOfControl_SetControlDataPriority(C_LossOfControl.ControlData);
            C_LossOfControl.ScanEvents:TriggerEvent("LOSS_OF_CONTROL_UPDATE");
        end
    end

    for i = 1, 255 do
        local AbilityName, _, iconTexture, _, locType, duration, expirationTime, _, _, _, spellID = UnitAura("player", i, "HARMFUL")
        if (not AbilityName) or blacklist[spellID] then break end
        if C_LossOfControl.ControleList[spellID]
        or C_LossOfControl.ControleList[AbilityName] then
            local spellInfo = C_LossOfControl.ControleList;
            Fields = {
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
            if not ActiveControl[spellID] or ActiveControl[spellID] < expirationTime then
                ActiveControl[spellID] = expirationTime;
                LossOfControl_ScanEvents(Fields);
            end
        end
    end
end

function RaidNotice_UpdateSlot( slotFrame, timings, elapsedTime )
    if ( slotFrame.scrollTime ) then
        slotFrame.scrollTime = slotFrame.scrollTime + elapsedTime;
        if ( slotFrame.scrollTime <= timings["RAID_NOTICE_SCALE_UP_TIME"] ) then
            slotFrame:SetTextHeight(floor(timings["RAID_NOTICE_MIN_HEIGHT"]+
                    ((timings["RAID_NOTICE_MAX_HEIGHT"]-timings["RAID_NOTICE_MIN_HEIGHT"])*slotFrame.scrollTime/timings["RAID_NOTICE_SCALE_UP_TIME"])));   
        elseif ( slotFrame.scrollTime <= timings["RAID_NOTICE_SCALE_DOWN_TIME"] ) then
            slotFrame:SetTextHeight(floor(timings["RAID_NOTICE_MAX_HEIGHT"] - ((timings["RAID_NOTICE_MAX_HEIGHT"]-
                            timings["RAID_NOTICE_MIN_HEIGHT"])*(slotFrame.scrollTime - 
                            timings["RAID_NOTICE_SCALE_UP_TIME"])/(timings["RAID_NOTICE_SCALE_DOWN_TIME"] - 
                            timings["RAID_NOTICE_SCALE_UP_TIME"]))));
        else
            slotFrame:SetTextHeight(timings["RAID_NOTICE_MIN_HEIGHT"]);
            slotFrame.scrollTime = nil;
        end
    end
end

function CooldownFrame_Clear(self)
	self:Hide()
end

function LossOfControlFrame_Register(self) 
    self.Anim = self
	self.Anim.Play = LossOfControlFrame_AnimPlay
	self.Anim.Stop = LossOfControlFrame_AnimStop
    self.Anim.IsPlaying = LossOfControlFrame_AnimIsPlaying
    self.TimeLeft.SetShown = LossOfControlFrame_SetShown

    C_LossOfControl.ScanEvents = self

    function C_LossOfControl.ScanEvents:TriggerEvent(event, ...)
        LossOfControlFrame_OnEvent(self, event, ...)
    end
end

C_LossOfControl.timer = LibStub("AceTimer-3.0")
