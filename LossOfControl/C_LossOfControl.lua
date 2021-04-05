local GetSpellInfo = GetSpellInfo;
C_LossOfControl = C_LossOfControl or {};
C_LossOfControl.ControlList = {
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

    [GetSpellInfo(6358)]  = {LOSS_OF_CONTROL_DISPLAY_CHARM, 6}, -- Seducation

    [GetSpellInfo(605)]   = {LOSS_OF_CONTROL_DISPLAY_POSSESS, 6}, -- Mind Control
    [GetSpellInfo(71289)] = {LOSS_OF_CONTROL_DISPLAY_POSSESS, 6}, -- Dominate Mind
    [GetSpellInfo(51503)] = {LOSS_OF_CONTROL_DISPLAY_POSSESS, 6}, -- Domination
    [GetSpellInfo(70923)] = {LOSS_OF_CONTROL_DISPLAY_POSSESS, 6}, -- Uncontrollable Frenzy
    [GetSpellInfo(13181)] = {LOSS_OF_CONTROL_DISPLAY_POSSESS, 6}, -- Gnomish Mind Control Cap

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
    [GetSpellInfo(8040)]  = {LOSS_OF_CONTROL_DISPLAY_SLEEP, 6}, -- Druid's Slumber

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
    [GetSpellInfo(6726)]  = {LOSS_OF_CONTROL_DISPLAY_SILENCE, 1}, -- Silence

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
    [GetSpellInfo(21749)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}, -- Thorn Volley
    [GetSpellInfo(3635)]  = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}, -- Crystal Gaze
    [GetSpellInfo(35313)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}, -- Hypnotic Gaze
    [GetSpellInfo(6524)]  = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}, -- Ground Tremor

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
};

C_LossOfControl.ControlData = {}; -- Таблица со всем активным контролем на нас

C_LossOfControl.GetActiveLossOfControlDataCount = function()
    return 1; -- #C_LossOfControl.ControlData нахуй это вообще нужно, если всегда единицу возвращает?
end

C_LossOfControl.GetActiveLossOfControlData = function(eventIndex)
    local data = C_LossOfControl.ControlData[eventIndex]
    if ( not data ) then
        return;
    end

    data.timeRemaining = data.expirationTime and data.expirationTime - GetTime() or nil;
    return data;
end