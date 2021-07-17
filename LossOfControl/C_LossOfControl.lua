C_LossOfControl = C_LossOfControl or {};
C_LossOfControl.ControlList = C_LossOfControl.ControlList or {};
local List = C_LossOfControl.ControlList;
local GetSpellInfo = GetSpellInfo;

-- Spell        ID             Type      priority 
List[GetSpellInfo(12826)] = {LOSS_OF_CONTROL_DISPLAY_POLYMORPH, 6}; -- Sheep
List[GetSpellInfo(51514)] = {LOSS_OF_CONTROL_DISPLAY_POLYMORPH, 6}; -- Hex
List[GetSpellInfo(71103)] = {LOSS_OF_CONTROL_DISPLAY_POLYMORPH, 6}; -- Combobulating Spray
List[GetSpellInfo(70410)] = {LOSS_OF_CONTROL_DISPLAY_POLYMORPH, 6}; -- Polymorph: Spider

List[GetSpellInfo(14309)] = {LOSS_OF_CONTROL_DISPLAY_FREEZE, 6}; -- Freezing Trap Effect
List[GetSpellInfo(43415)] = {LOSS_OF_CONTROL_DISPLAY_FREEZE, 6}; -- Freezing Trap
List[GetSpellInfo(60210)] = {LOSS_OF_CONTROL_DISPLAY_FREEZE, 6}; -- Freezing Arrow
List[GetSpellInfo(49203)] = {LOSS_OF_CONTROL_DISPLAY_FREEZE, 6}; -- Hungering Cold
List[GetSpellInfo(66012)] = {LOSS_OF_CONTROL_DISPLAY_FREEZE, 6}; -- Freezing Slash
List[GetSpellInfo(48400)] = {LOSS_OF_CONTROL_DISPLAY_FREEZE, 6}; -- Frost Tomb
List[GetSpellInfo(67650)] = {LOSS_OF_CONTROL_DISPLAY_FREEZE, 6}; -- Arctic Breath

List[GetSpellInfo(33786)] = {LOSS_OF_CONTROL_DISPLAY_CYCLONE, 7}; -- Cyclone

List[GetSpellInfo(710)]   = {LOSS_OF_CONTROL_DISPLAY_BANISH, 5}; -- Banish
List[GetSpellInfo(30940)] = {LOSS_OF_CONTROL_DISPLAY_BANISH, 5}; -- Burning Nova
List[GetSpellInfo(70645)] = {LOSS_OF_CONTROL_DISPLAY_BANISH, 5}; -- Chains of Shadow

List[GetSpellInfo(6358)]  = {LOSS_OF_CONTROL_DISPLAY_CHARM, 6}; -- Seducation

List[GetSpellInfo(605)]   = {LOSS_OF_CONTROL_DISPLAY_POSSESS, 6}; -- Mind Control
List[GetSpellInfo(71289)] = {LOSS_OF_CONTROL_DISPLAY_POSSESS, 6}; -- Dominate Mind
List[GetSpellInfo(51503)] = {LOSS_OF_CONTROL_DISPLAY_POSSESS, 6}; -- Domination
List[GetSpellInfo(70923)] = {LOSS_OF_CONTROL_DISPLAY_POSSESS, 6}; -- Uncontrollable Frenzy
List[GetSpellInfo(13181)] = {LOSS_OF_CONTROL_DISPLAY_POSSESS, 6}; -- Gnomish Mind Control Cap

List[GetSpellInfo(19503)] = {LOSS_OF_CONTROL_DISPLAY_CONFUSE, 6}; -- Scatter Shot
List[GetSpellInfo(70302)] = {LOSS_OF_CONTROL_DISPLAY_CONFUSE, 6}; -- Blinding Dirt
List[74456]               = {LOSS_OF_CONTROL_DISPLAY_CONFUSE, 6}; -- Conflagration

List[GetSpellInfo(20066)] = {LOSS_OF_CONTROL_DISPLAY_INCAPACITATE, 5}; -- Repentance
List[GetSpellInfo(1776)]  = {LOSS_OF_CONTROL_DISPLAY_INCAPACITATE, 5}; -- Gouge
List[GetSpellInfo(32905)] = {LOSS_OF_CONTROL_DISPLAY_INCAPACITATE, 5}; -- Glare
List[GetSpellInfo(29676)] = {LOSS_OF_CONTROL_DISPLAY_INCAPACITATE, 5}; -- Rolling Pin
List[GetSpellInfo(70432)] = {LOSS_OF_CONTROL_DISPLAY_INCAPACITATE, 5}; -- Blood Sap
List[GetSpellInfo(67769)] = {LOSS_OF_CONTROL_DISPLAY_INCAPACITATE, 5}; -- Cobalt Frag Bomb
List[GetSpellInfo(19784)] = {LOSS_OF_CONTROL_DISPLAY_INCAPACITATE, 5}; -- Dark Iron Bomb
List[GetSpellInfo(4064)]  = {LOSS_OF_CONTROL_DISPLAY_INCAPACITATE, 5}; -- Rough Copper Bomb
List[GetSpellInfo(4065)]  = {LOSS_OF_CONTROL_DISPLAY_INCAPACITATE, 5}; -- Large Copper Bomb
List[GetSpellInfo(4066)]  = {LOSS_OF_CONTROL_DISPLAY_INCAPACITATE, 5}; -- Small Bronze Bomb
List[GetSpellInfo(4067)]  = {LOSS_OF_CONTROL_DISPLAY_INCAPACITATE, 5}; -- Big Bronze Bomb
List[GetSpellInfo(4068)]  = {LOSS_OF_CONTROL_DISPLAY_INCAPACITATE, 5}; -- Iron Grenade
List[GetSpellInfo(4069)]  = {LOSS_OF_CONTROL_DISPLAY_INCAPACITATE, 5}; -- Big Iron Bomb
List[GetSpellInfo(12024)] = {LOSS_OF_CONTROL_DISPLAY_INCAPACITATE, 5}; -- Net
List[GetSpellInfo(59726)] = {LOSS_OF_CONTROL_DISPLAY_INCAPACITATE, 5}; -- Shock of Sorrow

List[GetSpellInfo(51724)] = {LOSS_OF_CONTROL_DISPLAY_SAP, 6}; -- Sap

List[GetSpellInfo(10955)] = {LOSS_OF_CONTROL_DISPLAY_SHACKLE_UNDEAD, 6}; -- Shackle Undead

List[GetSpellInfo(49012)] = {LOSS_OF_CONTROL_DISPLAY_SLEEP, 6}; -- Wyvern Sting
List[GetSpellInfo(18658)] = {LOSS_OF_CONTROL_DISPLAY_SLEEP, 6}; -- Hibernate
List[GetSpellInfo(59165)] = {LOSS_OF_CONTROL_DISPLAY_SLEEP, 6}; -- Sleep
List[GetSpellInfo(36333)] = {LOSS_OF_CONTROL_DISPLAY_SLEEP, 6}; -- Anesthetic
List[GetSpellInfo(3636)]  = {LOSS_OF_CONTROL_DISPLAY_SLEEP, 6}; -- Crystalline Slumber
List[GetSpellInfo(16798)] = {LOSS_OF_CONTROL_DISPLAY_SLEEP, 6}; -- Enchanting Lullaby
List[GetSpellInfo(7967)]  = {LOSS_OF_CONTROL_DISPLAY_SLEEP, 6}; -- Naralex's Nightmare
List[GetSpellInfo(29679)] = {LOSS_OF_CONTROL_DISPLAY_SLEEP, 6}; -- Bad Poetry
List[GetSpellInfo(8040)]  = {LOSS_OF_CONTROL_DISPLAY_SLEEP, 6}; -- Druid's Slumber

List[64044]               = {LOSS_OF_CONTROL_DISPLAY_HORROR, 3}; -- Psychic Horror
List[74384]               = {LOSS_OF_CONTROL_DISPLAY_HORROR, 3}; -- Intimidating Roar
List[16508]               = {LOSS_OF_CONTROL_DISPLAY_HORROR, 3}; -- Intimidating Roar
List[48696]               = {LOSS_OF_CONTROL_DISPLAY_HORROR, 3}; -- Intimidating Roar
List[51467]               = {LOSS_OF_CONTROL_DISPLAY_HORROR, 3}; -- Intimidating Roar
List[GetSpellInfo(49106)] = {LOSS_OF_CONTROL_DISPLAY_HORROR, 3}; -- Terrify
List[GetSpellInfo(53438)] = {LOSS_OF_CONTROL_DISPLAY_HORROR, 3}; -- Incite Horror
List[GetSpellInfo(47860)] = {LOSS_OF_CONTROL_DISPLAY_HORROR, 3}; -- Death Coil
List[GetSpellInfo(67677)] = {LOSS_OF_CONTROL_DISPLAY_HORROR, 3}; -- Waking Nightmare
List[GetSpellInfo(73070)] = {LOSS_OF_CONTROL_DISPLAY_HORROR, 3}; -- Incite Terror
List[GetSpellInfo(48144)] = {LOSS_OF_CONTROL_DISPLAY_HORROR, 3}; -- Terrifying Roar
List[GetSpellInfo(72435)] = {LOSS_OF_CONTROL_DISPLAY_HORROR, 3}; -- Defiling Horror
List[GetSpellInfo(36922)] = {LOSS_OF_CONTROL_DISPLAY_HORROR, 3}; -- Bellowing Roar

List[42380]               = {LOSS_OF_CONTROL_DISPLAY_DISORIENT, 6}; -- Conflagration
List[GetSpellInfo(42950)] = {LOSS_OF_CONTROL_DISPLAY_DISORIENT, 6}; -- Dragons Breath
List[GetSpellInfo(2094)]  = {LOSS_OF_CONTROL_DISPLAY_DISORIENT, 6}; -- Blind
List[GetSpellInfo(26108)] = {LOSS_OF_CONTROL_DISPLAY_DISORIENT, 6}; -- Glimpse of Madness
List[GetSpellInfo(52524)] = {LOSS_OF_CONTROL_DISPLAY_DISORIENT, 6}; -- Blinding Webs
List[GetSpellInfo(48558)] = {LOSS_OF_CONTROL_DISPLAY_DISORIENT, 6}; -- Backfire
List[GetSpellInfo(66862)] = {LOSS_OF_CONTROL_DISPLAY_DISORIENT, 6}; -- Radiance
List[GetSpellInfo(42805)] = {LOSS_OF_CONTROL_DISPLAY_DISORIENT, 6}; -- Dirty Trick
List[GetSpellInfo(36834)] = {LOSS_OF_CONTROL_DISPLAY_DISORIENT, 6}; -- Arcane Disruption
List[GetSpellInfo(17928)] = {LOSS_OF_CONTROL_DISPLAY_DISORIENT, 6}; -- Howl of Terror
List[GetSpellInfo(30057)] = {LOSS_OF_CONTROL_DISPLAY_DISORIENT, 6}; -- Improved Howl of Terror
List[GetSpellInfo(69240)] = {LOSS_OF_CONTROL_DISPLAY_DISORIENT, 6}; -- Vile Gas

List[GetSpellInfo(53588)] = {LOSS_OF_CONTROL_DISPLAY_SILENCE, 1}; -- Nether Shock
List[GetSpellInfo(1330)]  = {LOSS_OF_CONTROL_DISPLAY_SILENCE, 1}; -- Garrote
List[GetSpellInfo(25046)] = {LOSS_OF_CONTROL_DISPLAY_SILENCE, 1}; -- Arcane Torrent
List[GetSpellInfo(15487)] = {LOSS_OF_CONTROL_DISPLAY_SILENCE, 1}; -- Silence
List[GetSpellInfo(34490)] = {LOSS_OF_CONTROL_DISPLAY_SILENCE, 1}; -- Silencing Shot
List[GetSpellInfo(18425)] = {LOSS_OF_CONTROL_DISPLAY_SILENCE, 1}; -- Improved Kick
List[GetSpellInfo(18469)] = {LOSS_OF_CONTROL_DISPLAY_SILENCE, 1}; -- Improved Counterspell
List[GetSpellInfo(19647)] = {LOSS_OF_CONTROL_DISPLAY_SILENCE, 1}; -- Spell Lock
List[GetSpellInfo(63529)] = {LOSS_OF_CONTROL_DISPLAY_SILENCE, 1}; -- Shield of the Templar
List[GetSpellInfo(49916)] = {LOSS_OF_CONTROL_DISPLAY_SILENCE, 1}; -- Strangulate
List[GetSpellInfo(18498)] = {LOSS_OF_CONTROL_DISPLAY_SILENCE, 1}; -- Gag Order
List[GetSpellInfo(19821)] = {LOSS_OF_CONTROL_DISPLAY_SILENCE, 1}; -- Arcane Bomb
List[GetSpellInfo(55663)] = {LOSS_OF_CONTROL_DISPLAY_SILENCE, 1}; -- Deafening Roar
List[GetSpellInfo(6726)]  = {LOSS_OF_CONTROL_DISPLAY_SILENCE, 1}; -- Silence
List[GetSpellInfo(58526)] = {LOSS_OF_CONTROL_DISPLAY_SILENCE, 1}; -- Azure Bindings
List[GetSpellInfo(34190)] = {LOSS_OF_CONTROL_DISPLAY_SILENCE, 1}; -- Arcane Orb

List[GetSpellInfo(53543)] = {LOSS_OF_CONTROL_DISPLAY_DISARM, 2}; -- Snatch
List[GetSpellInfo(51722)] = {LOSS_OF_CONTROL_DISPLAY_DISARM, 2}; -- Dismantle
List[GetSpellInfo(676)]   = {LOSS_OF_CONTROL_DISPLAY_DISARM, 2}; -- Disarm
List[GetSpellInfo(53359)] = {LOSS_OF_CONTROL_DISPLAY_DISARM, 2}; -- Chimera Shot
List[GetSpellInfo(64058)] = {LOSS_OF_CONTROL_DISPLAY_DISARM, 2}; -- Psychic Horror
List[GetSpellInfo(64346)] = {LOSS_OF_CONTROL_DISPLAY_DISARM, 2}; -- Fiery Payback
List[GetSpellInfo(14180)] = {LOSS_OF_CONTROL_DISPLAY_DISARM, 2}; -- Sticky Tar
List[GetSpellInfo(33126)] = {LOSS_OF_CONTROL_DISPLAY_DISARM, 2}; -- Dropped Weapon
List[GetSpellInfo(36208)] = {LOSS_OF_CONTROL_DISPLAY_DISARM, 2}; -- Steal Weapon

List[GetSpellInfo(20511)] = {LOSS_OF_CONTROL_DISPLAY_FEAR, 3}; -- Intimidating Shout
List[GetSpellInfo(6215)]  = {LOSS_OF_CONTROL_DISPLAY_FEAR, 3}; -- Fear
List[GetSpellInfo(10890)] = {LOSS_OF_CONTROL_DISPLAY_FEAR, 3}; -- Psychic Scream
List[GetSpellInfo(14327)] = {LOSS_OF_CONTROL_DISPLAY_FEAR, 3}; -- Scare Beast
List[GetSpellInfo(10326)] = {LOSS_OF_CONTROL_DISPLAY_FEAR, 3}; -- Turn Evil
List[GetSpellInfo(5246)]  = {LOSS_OF_CONTROL_DISPLAY_FEAR, 3}; -- Intimidating Shout
List[GetSpellInfo(29544)] = {LOSS_OF_CONTROL_DISPLAY_FEAR, 3}; -- Frightening Shout

List[15655]               = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Shield Slam
List[8285]                = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Rampage
List[68771]               = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Thundering Stomp
List[47772]               = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Ice Nova
List[56935]               = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Ice Nova
List[GetSpellInfo(49802)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Maim
List[GetSpellInfo(5918)]  = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Shadowstalker Stab
List[GetSpellInfo(15283)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Stunning Blow
List[GetSpellInfo(36877)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Stun Forever
List[GetSpellInfo(16075)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Throw Axe
List[GetSpellInfo(16045)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Encage
List[GetSpellInfo(69222)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Throw Shield
List[GetSpellInfo(48131)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Stomp
List[GetSpellInfo(50234)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Crush
List[GetSpellInfo(55959)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Embrace of the Vampyr
List[GetSpellInfo(47995)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Intercept (Pet)
List[GetSpellInfo(53562)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Ravage
List[GetSpellInfo(53568)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Sonic Blast
List[GetSpellInfo(12809)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Concussion Blow
List[GetSpellInfo(46968)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Shockwave
List[GetSpellInfo(10308)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Hammer of Justice
List[GetSpellInfo(8983)]  = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Bash
List[GetSpellInfo(19577)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Intimidation
List[GetSpellInfo(8643)]  = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Kidney Shot
List[GetSpellInfo(20549)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- War Stomp
List[GetSpellInfo(20252)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Intercept
List[GetSpellInfo(44572)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Deep Freeze
List[GetSpellInfo(30414)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Shadowfury
List[GetSpellInfo(2812)]  = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Holy Wrath
List[GetSpellInfo(22703)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Inferno Effect
List[GetSpellInfo(60995)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Demon Charge
List[GetSpellInfo(47481)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Gnaw  
List[GetSpellInfo(12355)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Impact
List[GetSpellInfo(16544)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Improved Fire Nova Totem
List[GetSpellInfo(39796)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Stoneclaw Totem
List[GetSpellInfo(20170)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Seal of Justice
List[GetSpellInfo(12798)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Revenge Stunned 
List[GetSpellInfo(1833)]  = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Cheap Shot
List[GetSpellInfo(49803)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Pounce 
List[GetSpellInfo(7922)]  = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Charge Stun
List[GetSpellInfo(66683)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Massive Crash
List[GetSpellInfo(66770)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Ferocious Butt
List[GetSpellInfo(70980)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Web Wrap
List[GetSpellInfo(66547)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Confess
List[GetSpellInfo(51750)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Screams of the Dead
List[GetSpellInfo(53148)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Charge
List[GetSpellInfo(35570)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Charge
List[GetSpellInfo(52825)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Swoop
List[GetSpellInfo(35011)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Knockdown
List[GetSpellInfo(58154)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Hammer of Injustice    
List[GetSpellInfo(51491)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Unrelenting Strike
List[GetSpellInfo(21749)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Thorn Volley
List[GetSpellInfo(3635)]  = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Crystal Gaze
List[GetSpellInfo(35313)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Hypnotic Gaze
List[GetSpellInfo(6524)]  = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Ground Tremor
List[GetSpellInfo(6607)]  = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Lash
List[GetSpellInfo(47700)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Crystal Freeze
List[GetSpellInfo(43936)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Knockdown Spin
List[GetSpellInfo(52696)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Constricting Chains
List[GetSpellInfo(58848)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Time Stop
List[GetSpellInfo(72428)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Despair Stricken
List[GetSpellInfo(69133)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Lethargy
List[GetSpellInfo(29484)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Web Spray
List[GetSpellInfo(74531)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Tail Lash
List[GetSpellInfo(74509)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Repelling Wave
List[GetSpellInfo(71163)] = {LOSS_OF_CONTROL_DISPLAY_STUN, 5}; -- Devour Humanoid

List[52086]               = {LOSS_OF_CONTROL_DISPLAY_ROOT, 4}; -- Web Wrap
List[22519]               = {LOSS_OF_CONTROL_DISPLAY_ROOT, 4}; -- Ice Nova
List[12494]               = {LOSS_OF_CONTROL_DISPLAY_ROOT, 4}; -- Frostbite
List[58373]               = {LOSS_OF_CONTROL_DISPLAY_ROOT, 5}; -- Glyph of Hamstring
List[23694]               = {LOSS_OF_CONTROL_DISPLAY_ROOT, 5}; -- Improved Hamstring
List[GetSpellInfo(53548)] = {LOSS_OF_CONTROL_DISPLAY_ROOT, 4}; -- Pin
List[GetSpellInfo(47698)] = {LOSS_OF_CONTROL_DISPLAY_ROOT, 4}; -- Crystal Chains
List[GetSpellInfo(48179)] = {LOSS_OF_CONTROL_DISPLAY_ROOT, 4}; -- Crystallize
List[GetSpellInfo(50690)] = {LOSS_OF_CONTROL_DISPLAY_ROOT, 4}; -- Immobilizing Field
List[GetSpellInfo(49711)] = {LOSS_OF_CONTROL_DISPLAY_ROOT, 4}; -- Hooked Net
List[GetSpellInfo(53322)] = {LOSS_OF_CONTROL_DISPLAY_ROOT, 4}; -- Crushing Webs
List[GetSpellInfo(42917)] = {LOSS_OF_CONTROL_DISPLAY_ROOT, 4}; -- Frost Nova
List[GetSpellInfo(53308)] = {LOSS_OF_CONTROL_DISPLAY_ROOT, 4}; -- Entangling Roots
List[GetSpellInfo(53313)] = {LOSS_OF_CONTROL_DISPLAY_ROOT, 4}; -- Natures Grasp
List[GetSpellInfo(8377)]  = {LOSS_OF_CONTROL_DISPLAY_ROOT, 4}; -- Earthgrab   
List[GetSpellInfo(19675)] = {LOSS_OF_CONTROL_DISPLAY_ROOT, 4}; -- Feral Charge Effect
List[GetSpellInfo(19306)] = {LOSS_OF_CONTROL_DISPLAY_ROOT, 4}; -- Counterattack
List[GetSpellInfo(19185)] = {LOSS_OF_CONTROL_DISPLAY_ROOT, 4}; -- Entrapment
List[GetSpellInfo(54706)] = {LOSS_OF_CONTROL_DISPLAY_ROOT, 4}; -- Venom Web Spray
List[GetSpellInfo(4167)]  = {LOSS_OF_CONTROL_DISPLAY_ROOT, 4}; -- Web
List[GetSpellInfo(33395)] = {LOSS_OF_CONTROL_DISPLAY_ROOT, 4}; -- Freeze
List[GetSpellInfo(55080)] = {LOSS_OF_CONTROL_DISPLAY_ROOT, 4}; -- Shattered Barrier
List[GetSpellInfo(39965)] = {LOSS_OF_CONTROL_DISPLAY_ROOT, 4}; -- Frost Grenade
List[GetSpellInfo(55536)] = {LOSS_OF_CONTROL_DISPLAY_ROOT, 4}; -- Frostweave Net
List[GetSpellInfo(13099)] = {LOSS_OF_CONTROL_DISPLAY_ROOT, 4}; -- Net-o-MaticК
List[GetSpellInfo(52491)] = {LOSS_OF_CONTROL_DISPLAY_ROOT, 4}; -- Web Explosion
List[GetSpellInfo(56632)] = {LOSS_OF_CONTROL_DISPLAY_ROOT, 4}; -- Tangled Webs
List[GetSpellInfo(49704)] = {LOSS_OF_CONTROL_DISPLAY_ROOT, 4}; -- Encasing Webs
List[GetSpellInfo(61579)] = {LOSS_OF_CONTROL_DISPLAY_ROOT, 4}; -- Runic Focus
List[GetSpellInfo(71647)] = {LOSS_OF_CONTROL_DISPLAY_ROOT, 4}; -- Ice Trap
List[GetSpellInfo(72090)] = {LOSS_OF_CONTROL_DISPLAY_ROOT, 4}; -- Freezing Ground

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