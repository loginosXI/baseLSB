--------------------------------------------
-- Melody Minstrel (Past Event Watcher) NPCs
--------------------------------------------

xi = xi or {}
xi.melody_minstrels = xi.melody_minstrels or {}

local npcCS =
{
    standard = -- standard Minstrels
    {
        [xi.zone.PORT_SAN_DORIA]            = 722,     -- Dabbio
        [xi.zone.NORTHERN_SAN_DORIA]        = 715,     -- Jufaue
        [xi.zone.SOUTHERN_SAN_DORIA]        = 676,     -- Gizel
        [xi.zone.CHATEAU_DORAGUILLE]        = 557,     -- Chaloutte
        [xi.zone.PORT_BASTOK]               = 260,     -- Dalba
        [xi.zone.BASTOK_MINES]              = 185,     -- Gorvik
        [xi.zone.BASTOK_MARKETS]            = 326,     -- Lamepaue
        [xi.zone.METALWORKS]                = 771,     -- Taulluque
        [xi.zone.PORT_WINDURST]             = 551,     -- Tonule
        [xi.zone.WINDURST_WATERS]           = 815,     -- Dienger
        [xi.zone.WINDURST_WOODS]            = 612,     -- Bozack
        [xi.zone.WINDURST_WALLS]            = 406,     -- Juvillie
        [xi.zone.HEAVENS_TOWER]             = 334,     -- Mashua
        [xi.zone.PORT_JEUNO]                = 10028,   -- Dohhel
        [xi.zone.LOWER_JEUNO]               = 10033,   -- Geuhbe
        [xi.zone.UPPER_JEUNO]               = 10010,   -- Tinjue
        [xi.zone.RULUDE_GARDENS]            = 10007,   -- Archanne
        [xi.zone.SELBINA]                   = 1102,    -- Battal
        [xi.zone.MHAURA]                    = 304,     -- Mathele
        [xi.zone.KAZHAM]                    = 278,     -- Beyzen
        [xi.zone.RABAO]                     = 101,     -- Zungutt
        [xi.zone.NORG]                      = 175,     -- Colleraie
        [xi.zone.TAVNAZIAN_SAFEHOLD]        = 100,     -- Latteaune
        [xi.zone.SEALIONS_DEN]              = 4,       -- Jovial Rat
        [xi.zone.AHT_URHGAN_WHITEGATE]       = 503,    -- Prillaure
        [xi.zone.NASHMAU]                    = 13,     -- Gehuha
        [xi.zone.SOUTHERN_SAN_DORIA_S]       = 0,      -- Zidalf
        [xi.zone.BASTOK_MARKETS_S]           = 0,      -- Heumila
        [xi.zone.WINDURST_WATERS_S]          = 0,      -- Gevarg
        [xi.zone.EASTERN_ADOULIN]            = 0,      -- Maudilyonne
        [xi.zone.RALA_WATERWAYS]             = 11,     -- Adrienaure
        [xi.zone.WESTERN_ADOULIN]            = 0,      -- Gehlvik
        [xi.zone.CELENNIA_MEMORIAL_LIBRARY]  = 0,      -- Jedelaih
    },
    additional = -- additional Minstrels
    {
        [xi.zone.NORTHERN_SAN_DORIA]         = 865,    -- Durogg
        [xi.zone.SOUTHERN_SAN_DORIA]         = 943,    -- Melledanne
        [xi.zone.WINDURST_WOODS]             = 845,    -- Sevah Kummekihn
        [xi.zone.LOWER_JEUNO]                = 10096,  -- Chimh Dlesbah
        [xi.zone.UPPER_JEUNO]                = 10173,  -- Mhao Kehtsoruho
        [xi.zone.AHT_URHGAN_WHITEGATE]       = 807,    -- Tsih Kolgimih
        [xi.zone.EASTERN_ADOULIN]            = 5,      -- Bheva Grantih
        [xi.zone.WESTERN_ADOULIN]            = 5216,   -- Ivoh Haalameb
    },
}

-- TODO: Add concise progress checks for multi-cs missions and quests
-- Currently this will just check to see if the full mission/quest is completed for each entry
-- Placeholder functions in many zones for additional content and/or yet to be implemented content

-- Helper functions

local placeHolderCheck = function(player)
    -- returns false for any options that are not implemented yet
    return false
end

local charVarCheck = function(player, varStr)
    -- checks char vars, returns boolean
    local check = player:getCharVar(varStr)
    if check ~= 0 then
        return true
    else
        return false
    end
end

local csReq =
{
    [xi.zone.PORT_SAN_DORIA] =
    {
        missions =
        {
            [1] = function(player)
                return placeHolderCheck(player)
            end,
        },
        quests =
        {
            [1] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.THE_PICKPOCKET)
            end,
            [2] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.CHASING_QUOTAS)
            end,
            [3] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.CHASING_QUOTAS)
            end,
            [4] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.CHASING_QUOTAS)
            end,
            [5] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.CHASING_QUOTAS)
            end,
            [6] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.KNIGHT_STALKER)
            end,
            [7] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.KNIGHT_STALKER)
            end,
            [8] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.A_TASTE_FOR_MEAT)
            end,
            [9] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.A_TASTE_FOR_MEAT)
            end,
            [10] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.OVER_THE_HILLS_AND_FAR_AWAY)
            end,
        },
        others =
        {
            [1] = function(player)
                return placeHolderCheck(player)
            end,
        },
        promathia =
        {
            [1] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.SLANDEROUS_UTTERINGS)
            end,
            [2] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.THREE_PATHS)
            end,
        },
        addons =
        {
            [1] = function(player)
                return placeHolderCheck(player)
            end,
        },
        extras =
        {
            [1] = function(player) -- Empty
                return placeHolderCheck(player)
            end,
        },
        misc =
        {
            [1] = function(player) -- Empty
                return placeHolderCheck(player)
            end,
        },
    },
    [xi.zone.NORTHERN_SAN_DORIA] =
    {
        missions =
        {
            [1] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.SANDORIA, xi.mission.id.sandoria.SAVE_THE_CHILDREN)
            end,
            [2] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.SANDORIA, xi.mission.id.sandoria.SAVE_THE_CHILDREN)
            end,
            [3] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.SANDORIA, xi.mission.id.sandoria.THE_DAVOI_REPORT)
            end,
            [4] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.SANDORIA, xi.mission.id.sandoria.PRESTIGE_OF_THE_PAPSQUE)
            end,
            [5] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.SANDORIA, xi.mission.id.sandoria.PRESTIGE_OF_THE_PAPSQUE)
            end,
            [6] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.SANDORIA, xi.mission.id.sandoria.COMING_OF_AGE)
            end,
            [7] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.SANDORIA, xi.mission.id.sandoria.THE_HEIR_TO_THE_LIGHT)
            end,
            [8] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.SANDORIA, xi.mission.id.sandoria.THE_HEIR_TO_THE_LIGHT)
            end,
            [9] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.SANDORIA, xi.mission.id.sandoria.THE_HEIR_TO_THE_LIGHT)
            end,
        },
        foreignMissions =
        {
            [1] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.BASTOK, xi.mission.id.bastok.THE_EMISSARY)
            end,
            [2] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.BASTOK, xi.mission.id.bastok.THE_EMISSARY)
            end,
            [3] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.BASTOK, xi.mission.id.windurst.THE_THREE_KINGDOMS)
            end,
            [4] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.BASTOK, xi.mission.id.windurst.THE_THREE_KINGDOMS)
            end,
        },
        quests =
        {
            [1] = function(player)
                return charVarCheck(player, "Telmoda_Madaline_Event")
            end,
            [2] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.THE_TRADER_IN_THE_FOREST)
            end,
            [3] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.THE_VICASQUE_S_SERMON)
            end,
            [4] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.FATHER_AND_SON)
            end,
            [5] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.FATHER_AND_SON)
            end,
            [6] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.FATHER_AND_SON)
            end,
            [7] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.A_BOY_S_DREAM)
            end,
            [8] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.A_BOY_S_DREAM)
            end,
            [9] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.ENVELOPED_IN_DARKNESS)
            end,
            [10] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.PEACE_FOR_THE_SPIRIT)
            end,
            [11] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.THE_HOLY_CREST)
            end,
            [12] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.THE_HOLY_CREST)
            end,
            [13] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.A_CRAFTSMAN_S_WORK)
            end,
            [14] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.A_CRAFTSMAN_S_WORK)
            end,
            [15] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.CHASING_QUOTAS)
            end,
            [16] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.UNEXPECTED_TREASURE)
            end,
            [17] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.HEALING_THE_LAND)
            end,
            [18] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.MESSENGER_FROM_BEYOND)
            end,
            [19] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.PIEUJE_S_DECISION)
            end,
            [20] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.TRIAL_BY_ICE)
            end,
            [21] = function(player) -- 136th C.E.A Ballista event
                return placeHolderCheck(player)
            end,
            [22] = function(player) -- 136th C.E.A Ballista event
                return placeHolderCheck(player)
            end,
            [23] = function(player) -- Forest for the Trees quest
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.FOREST_FOR_THE_TREES)
            end,
            [24] = function(player) -- Forest for the Trees quest
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.FOREST_FOR_THE_TREES)
            end,
            [25] = function(player) -- Forest for the Trees quest
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.FOREST_FOR_THE_TREES)
            end,
            [26] = function(player) -- Forest for the Trees quest
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.FOREST_FOR_THE_TREES)
            end,
            [27] = function(player) -- Trust
                return placeHolderCheck(player)
            end,
            [28] = function(player) -- Trust
                return placeHolderCheck(player)
            end,
        },
        others =
        {
            [1] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.CLASS_REUNION)
            end,
            [2] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.ITS_RAINING_MANNEQUINS)
            end,
            [3] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.CONFESSIONS_OF_A_BELLMAKER)
            end,
            [4] = function(player)  -- TOAU Waking the Colossus
                return placeHolderCheck(player)
            end,
            [5] = function(player)  -- WOTG Her Memories: The Faux Pas
                return placeHolderCheck(player)
            end,
            [6] = function(player)  -- WOTG Her Memories: The Faux Pas
                return placeHolderCheck(player)
            end,
            [7] = function(player)  -- Monstrosity
                return placeHolderCheck(player)
            end,
            [8] = function(player)  -- Trust
                return placeHolderCheck(player)
            end,
            [9] = function(player)  -- Trust
                return placeHolderCheck(player)
            end,
        },
        addons =
        {
            [1] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.THE_ROAD_FORKS)
            end,
            [2] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.THE_ROAD_FORKS)
            end,
            [3] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.THE_ROAD_FORKS)
            end,
            [4] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.SLANDEROUS_UTTERINGS)
            end,
            [5] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.THREE_PATHS)
            end,
        },
        extras =
        {
            [1] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.TOAU, xi.mission.id.toau.CONFESSIONS_OF_ROYALTY)
            end,
        },
        misc =
        {
            [1] = function(player) -- Empty
                return placeHolderCheck(player)
            end,
        },
    },
    [xi.zone.SOUTHERN_SAN_DORIA] =
    {
        missions =
        {
            [1] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.SANDORIA, xi.mission.id.sandoria.SMASH_THE_ORCISH_SCOUTS)
            end,
            [2] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.SANDORIA, xi.mission.id.sandoria.THE_HEIR_TO_THE_LIGHT)
            end,
        },
        quests =
        {
            [1] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.ROSEL_THE_ARMORER)
            end,
            [2] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.THE_SWEETEST_THINGS)
            end,
            [3] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.A_SQUIRE_S_TEST)
            end,
            [4] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.A_SQUIRE_S_TEST)
            end,
            [5] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.A_SQUIRE_S_TEST_II)
            end,
            [6] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.A_SQUIRE_S_TEST_II)
            end,
            [7] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.A_KNIGHT_S_TEST)
            end,
            [8] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.A_KNIGHT_S_TEST)
            end,
            [9] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.TO_CURE_A_COUGH)
            end,
            [10] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.DISTANT_LOYALTIES)
            end,
            [11] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.DISTANT_LOYALTIES)
            end,
            [12] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.THE_CRIMSON_TRIAL)
            end,
            [13] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.THE_CRIMSON_TRIAL)
            end,
            [14] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.PEACE_FOR_THE_SPIRIT)
            end,
            [15] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.A_BOY_S_DREAM)
            end,
            [16] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.UNDER_OATH)
            end,
            [17] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.UNDER_OATH)
            end,
            [18] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.KNIGHT_STALKER)
            end,
            [19] = function(player)
                return charVarCheck(player, "BrothersCS")
            end,
            [20] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.METHODS_CREATE_MADNESS)
            end,
            [21] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.METHODS_CREATE_MADNESS)
            end,
            [22] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.METHODS_CREATE_MADNESS)
            end,
            [23] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.A_TIMELY_VISIT)
            end,
            [24] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.A_TIMELY_VISIT)
            end,
            [25] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.A_TIMELY_VISIT)
            end,
            [26] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.A_TIMELY_VISIT)
            end,
            [27] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.A_TIMELY_VISIT)
            end,
            [28] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.A_TIMELY_VISIT)
            end,
            [29] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.A_TIMELY_VISIT)
            end,
        },
        others =
        {
            [1] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.SIGNED_IN_BLOOD)
            end,
            [2] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.SIGNED_IN_BLOOD)
            end,
            [3] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.SIGNED_IN_BLOOD)
            end,
            [4] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.TEA_WITH_A_TONBERRY)
            end,
            [5] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.TEA_WITH_A_TONBERRY)
            end,
            [6] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.SPICE_GALS)
            end,
            [7] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.SPICE_GALS)
            end,
            [8] = function(player)  -- Son and Father, not implemented
                return placeHolderCheck(player)
            end,
        },
        addons =
        {
            [1] = function(player)
                return player:hasKeyItem(xi.keyItem.VIAL_OF_SHROUDED_SAND)
            end,
            [2] = function(player)
                return player:hasTitle(xi.title.DYNAMIS_SAN_DORIA_INTERLOPER)
            end,
            [3] = function(player)
                return player:hasKeyItem(xi.keyItem.HYDRA_CORPS_COMMAND_SCEPTER)
            end,
            [4] = function(player) -- COP: Elderly Pursuits
                return placeHolderCheck(player)
            end,
            [5] = function(player) -- COP: Elderly Pursuits
                return placeHolderCheck(player)
            end,
            [6] = function(player) -- Others: An Understaning Overlord?
                return placeHolderCheck(player)
            end,
            [7] = function(player) -- Others: An Understaning Overlord?
                return placeHolderCheck(player)
            end,
            [8] = function(player) -- Others: A Generous General?
                return placeHolderCheck(player)
            end,
            [9] = function(player) -- Others: A Generous General?
                return placeHolderCheck(player)
            end,
            [10] = function(player) -- Others: Mixed Signals
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.MIXED_SIGNALS)
            end,
            [11] = function(player) -- Others: Chocobo on the Loose!
                return placeHolderCheck(player)
            end,
            [12] = function(player) -- Others: Chocobo on the Loose!
                return placeHolderCheck(player)
            end,
            [13] = function(player) -- Others: Lakeside Minuet
                return placeHolderCheck(player)
            end,
            [14] = function(player) -- Others: Say it with a Handbag
                return placeHolderCheck(player)
            end,
            [15] = function(player) -- Others: Say it with a Handbag
                return placeHolderCheck(player)
            end,
            [16] = function(player) -- Others: Say it with a Handbag
                return placeHolderCheck(player)
            end,
            [17] = function(player) -- Others: Say it with a Handbag
                return placeHolderCheck(player)
            end,
            [18] = function(player) -- Others: Her Memories: Homecoming Queen
                return placeHolderCheck(player)
            end,
            [19] = function(player) -- Others: Her Memories: Old Bean
                return placeHolderCheck(player)
            end,
            [20] = function(player) -- Others: Her Memories: Of Malign Maladies
                return placeHolderCheck(player)
            end,
            [21] = function(player) -- Others: Drafted by the Duchy
                return placeHolderCheck(player)
            end,
            [22] = function(player) -- Others: Battle on a New Front
                return placeHolderCheck(player)
            end,
            [23] = function(player) -- Others: VW Op #126: Qufim Incursion
                return placeHolderCheck(player)
            end,
            [24] = function(player) -- Others: ROE
                return placeHolderCheck(player)
            end,
            [25] = function(player) -- Others: UC
                return placeHolderCheck(player)
            end,
            [26] = function(player) -- Others: UC
                return placeHolderCheck(player)
            end,
            [27] = function(player) -- TRUST
                return placeHolderCheck(player)
            end,
            [28] = function(player) -- TRUST
                return placeHolderCheck(player)
            end,
            [29] = function(player) -- TRUST
                return placeHolderCheck(player)
            end,
            [30] = function(player) -- TRUST
                return placeHolderCheck(player)
            end,
            [31] = function(player) -- TRUST
                return placeHolderCheck(player)
            end,
        },
        extras =
        {
            [1] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.THE_ROAD_FORKS)
            end,
            [2] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.THREE_PATHS)
            end,
            [3] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.DAWN)
            end,
            [4] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.DAWN)
            end,
        },
        misc =
        {
            [1] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WOTG, xi.mission.id.wotg.DAUGHTER_OF_A_KNIGHT)
            end,
            [2] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WOTG, xi.mission.id.wotg.DAUGHTER_OF_A_KNIGHT)
            end,
            [3] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WOTG, xi.mission.id.wotg.DAUGHTER_OF_A_KNIGHT)
            end,
            [4] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WOTG, xi.mission.id.wotg.A_SPOONFUL_OF_SUGAR)
            end,
            [5] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WOTG, xi.mission.id.wotg.ANOTHER_WORLD)
            end,
        },
    },
    [xi.zone.CHATEAU_DORAGUILLE] =
    {
        missions =
        {
            [1] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.SANDORIA, xi.mission.id.sandoria.JOURNEY_ABROAD)
            end,
            [2] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.SANDORIA, xi.mission.id.sandoria.INFILTRATE_DAVOI)
            end,
            [3] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.SANDORIA, xi.mission.id.sandoria.INFILTRATE_DAVOI)
            end,
            [4] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.SANDORIA, xi.mission.id.sandoria.THE_CRYSTAL_SPRING)
            end,
            [5] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.SANDORIA, xi.mission.id.sandoria.THE_CRYSTAL_SPRING)
            end,
            [6] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.SANDORIA, xi.mission.id.sandoria.APPOINTMENT_TO_JEUNO)
            end,
            [7] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.SANDORIA, xi.mission.id.sandoria.THE_RUINS_OF_FEI_YIN)
            end,
            [8] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.SANDORIA, xi.mission.id.sandoria.THE_RUINS_OF_FEI_YIN)
            end,
            [9] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.SANDORIA, xi.mission.id.sandoria.THE_RUINS_OF_FEI_YIN)
            end,
            [10] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.SANDORIA, xi.mission.id.sandoria.THE_SHADOW_LORD)
            end,
            [11] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.SANDORIA, xi.mission.id.sandoria.THE_SHADOW_LORD)
            end,
            [12] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.SANDORIA, xi.mission.id.sandoria.LEAUTES_LAST_WISHES)
            end,
            [13] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.SANDORIA, xi.mission.id.sandoria.LEAUTES_LAST_WISHES)
            end,
            [14] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.SANDORIA, xi.mission.id.sandoria.RANPERRES_FINAL_REST)
            end,
            [15] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.SANDORIA, xi.mission.id.sandoria.RANPERRES_FINAL_REST)
            end,
            [16] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.SANDORIA, xi.mission.id.sandoria.THE_SECRET_WEAPON)
            end,
            [17] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.SANDORIA, xi.mission.id.sandoria.COMING_OF_AGE)
            end,
            [18] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.SANDORIA, xi.mission.id.sandoria.COMING_OF_AGE)
            end,
            [19] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.SANDORIA, xi.mission.id.sandoria.COMING_OF_AGE)
            end,
            [20] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.SANDORIA, xi.mission.id.sandoria.LIGHTBRINGER)
            end,
            [21] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.SANDORIA, xi.mission.id.sandoria.LIGHTBRINGER)
            end,
            [22] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.SANDORIA, xi.mission.id.sandoria.LIGHTBRINGER)
            end,
            [23] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.SANDORIA, xi.mission.id.sandoria.LIGHTBRINGER)
            end,
        },
        quests =
        {
            [1] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.SANDORIA, xi.mission.id.sandoria.BREAKING_BARRIERS)
            end,
            [2] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.SANDORIA, xi.mission.id.sandoria.BREAKING_BARRIERS)
            end,
            [3] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.SANDORIA, xi.mission.id.sandoria.THE_HEIR_TO_THE_LIGHT)
            end,
            [4] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.SANDORIA, xi.mission.id.sandoria.THE_HEIR_TO_THE_LIGHT)
            end,
            [5] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.SANDORIA, xi.mission.id.sandoria.THE_HEIR_TO_THE_LIGHT)
            end,
            [6] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.SANDORIA, xi.mission.id.sandoria.THE_HEIR_TO_THE_LIGHT)
            end,
            [7] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.SANDORIA, xi.mission.id.sandoria.THE_HEIR_TO_THE_LIGHT)
            end,
        },
        others =
        {
            [1] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.THE_GENERALS_SECRET)
            end,
            [2] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.THE_GENERALS_SECRET)
            end,
            [3] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.HER_MAJESTY_S_GARDEN)
            end,
            [4] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.HER_MAJESTY_S_GARDEN)
            end,
            [5] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.ENVELOPED_IN_DARKNESS)
            end,
            [6] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.ENVELOPED_IN_DARKNESS)
            end,
            [7] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.PRELUDE_OF_BLACK_AND_WHITE)
            end,
            [8] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.PIEUJE_S_DECISION)
            end,
            [9] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.A_BOY_S_DREAM)
            end,
            [10] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.A_BOY_S_DREAM)
            end,
            [11] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.UNDER_OATH)
            end,
            [12] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.UNDER_OATH)
            end,
            [13] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.UNDER_OATH)
            end,
            [14] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.KNIGHT_STALKER)
            end,
            [15] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.OLD_WOUNDS)
            end,
            [16] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.OLD_WOUNDS)
            end,
            [17] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.OLD_WOUNDS)
            end,
            [18] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.A_TIMELY_VISIT)
            end,
            [19] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.FIT_FOR_A_PRINCE)
            end,
            [20] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.FIT_FOR_A_PRINCE)
            end,
            [21] = function(player) -- Ballista (Conflict)
                return placeHolderCheck(player)
            end,
        },
        addons =
        {
            [1] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.THE_CIRCLE_OF_TIME)
            end,
            [2] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.THE_CIRCLE_OF_TIME)
            end,
            [3] = function(player) -- Ballista/Bastok (Conflict)
                return placeHolderCheck(player)
            end,
            [4] = function(player) -- Ballista/Windurst (Conflict)
                return placeHolderCheck(player)
            end,
            [5] = function(player) -- TOAU: Waking the Colossus
                return placeHolderCheck(player)
            end,
            [6] = function(player) -- TOAU: Waking the Colossus
                return placeHolderCheck(player)
            end,
            [7] = function(player) -- WOTG: Her Memories: Grave Resolve
                return placeHolderCheck(player)
            end,
            [8] = function(player) -- ROE: Trust
                return placeHolderCheck(player)
            end,
            [9] = function(player) -- ROE: Trust
                return placeHolderCheck(player)
            end,
            [10] = function(player) -- ROE: Trust
                return placeHolderCheck(player)
            end,
            [11] = function(player) -- ROE: Trust
                return placeHolderCheck(player)
            end,
        },
        extras =
        {
            [1] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.TOAU, xi.mission.id.toau.CONFESSIONS_OF_ROYALTY)
            end,
            [2] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.TOAU, xi.mission.id.toau.CONFESSIONS_OF_ROYALTY)
            end,
        },
        misc =
        {
            [1] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WOTG, xi.mission.id.wotg.A_HAWK_IN_REPOSE)
            end,
        },
    },
    [xi.zone.PORT_BASTOK] =
    {
        missions =
        {
            [1] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.BASTOK, xi.mission.id.bastok.FETICHISM)
            end,
            [2] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.BASTOK, xi.mission.id.bastok.TO_THE_FORSAKEN_MINES)
            end,
        },
        quests =
        {
            [1] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.BEAUTY_AND_THE_GALKA)
            end,
            [2] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.WELCOME_TO_BASTOK)
            end,
            [3] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.GUEST_OF_HAUTEUR)
            end,
            [4] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.CIDS_SECRET)
            end,
            [5] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.THE_USUAL)
            end,
            [7] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.LOVE_AND_ICE)
            end,
            [8] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.LOVE_AND_ICE)
            end,
            [9] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.A_TEST_OF_TRUE_LOVE)
            end,
            [10] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.A_TEST_OF_TRUE_LOVE)
            end,
            [11] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.A_TEST_OF_TRUE_LOVE)
            end,
            [12] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.LOVERS_IN_THE_DUSK)
            end,
            [13] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.GHOSTS_OF_THE_PAST)
            end,
            [14] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.GHOSTS_OF_THE_PAST)
            end,
            [15] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.THE_FIRST_MEETING)
            end,
            [16] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.THE_FIRST_MEETING)
            end,
            [17] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.AYAME_AND_KAEDE)
            end,
            [18] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.AYAME_AND_KAEDE)
            end,
            [19] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.AYAME_AND_KAEDE)
            end,
            [20] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.AYAME_AND_KAEDE)
            end,
            [21] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.AYAME_AND_KAEDE)
            end,
            [22] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.TRIAL_BY_EARTH)
            end,
            [23] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.THE_WALLS_OF_YOUR_MIND)
            end,
            [24] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.THE_WALLS_OF_YOUR_MIND)
            end,
            [25] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.THE_WALLS_OF_YOUR_MIND)
            end,
            [26] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.FADED_PROMISES)
            end,
            [27] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.OUT_OF_THE_DEPTHS)
            end,
            [28] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.OUT_OF_THE_DEPTHS)
            end,
        },
        others =
        {
            [1] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.THE_PUPPET_MASTER)
            end,
            [2] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.THE_PUPPET_MASTER)
            end,
            [3] = function(player)
                return player:hasCompletedQuest(xi.questLog.OUTLANDS, xi.quest.id.outlands.TWENTY_IN_PIRATE_YEARS)
            end,
            [4] = function(player)
                return player:hasCompletedQuest(xi.questLog.OUTLANDS, xi.quest.id.outlands.TWENTY_IN_PIRATE_YEARS)
            end,
            [5] = function(player)
                return player:hasCompletedQuest(xi.questLog.OUTLANDS, xi.quest.id.outlands.I_LL_TAKE_THE_BIG_BOX)
            end,
            [6] = function(player) -- COP: Chasing Dreams
                return placeHolderCheck(player)
            end,
        },
        addons =
        {
            [1] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.THE_CALL_OF_THE_WYRMKING)
            end,
            [2] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.THE_ENDURING_TUMULT_OF_WAR)
            end,
        },
        extras =
        {
            [1] = function(player) -- AMK: Drenched! It Began with a Raindrop
                return placeHolderCheck(player)
            end,
            [2] = function(player) -- AMK: Hasten! In a Jam in Jeuno?
                return placeHolderCheck(player)
            end,
        },
        misc =
        {
            [1] = function(player) -- Empty
                return placeHolderCheck(player)
            end,
        },
    },
    [xi.zone.BASTOK_MINES] =
    {
        missions =
        {
            [1] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.BASTOK, xi.mission.id.bastok.FETICHISM)
            end,
            [2] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.BASTOK, xi.mission.id.bastok.TO_THE_FORSAKEN_MINES)
            end,
            [3] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.BASTOK, xi.mission.id.bastok.RETURN_OF_THE_TALEKEEPER)
            end,
            [4] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.BASTOK, xi.mission.id.bastok.RETURN_OF_THE_TALEKEEPER)
            end,
            [5] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.BASTOK, xi.mission.id.bastok.ON_MY_WAY)
            end,
            [6] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.BASTOK, xi.mission.id.bastok.ENTER_THE_TALEKEEPER)
            end,
        },
        quests =
        {
            [1] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.THE_ELEVENTHS_HOUR)
            end,
            [2] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.THE_ELEVENTHS_HOUR)
            end,
            [3] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.FALLEN_COMRADES)
            end,
            [4] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.FALLEN_COMRADES)
            end,
            [5] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.RIVALS)
            end,
            [6] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.RIVALS)
            end,
            [7] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.THE_SIGNPOST_MARKS_THE_SPOT)
            end,
            [8] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.BLADE_OF_DARKNESS)
            end,
            [9] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.THE_DOORMAN)
            end,
            [10] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.THE_TALEKEEPERS_TRUTH)
            end,
            [11] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.THE_TALEKEEPERS_TRUTH)
            end,
            [12] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.THE_TALEKEEPERS_TRUTH)
            end,
            [13] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.THE_TALEKEEPERS_GIFT)
            end,
            [14] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.THE_TALEKEEPERS_GIFT)
            end,
            [15] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.BASTOK, xi.mission.id.bastok.FETICHISM)
            end,
            [16] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.INHERITANCE)
            end,
            [17] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.INHERITANCE)
            end,
            [18] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.INHERITANCE)
            end,
            [19] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.OUT_OF_THE_DEPTHS)
            end,
            [20] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.A_QUESTION_OF_FAITH)
            end,
            [21] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.A_QUESTION_OF_FAITH)
            end,
            [22] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.FULLY_MENTAL_ALCHEMIST)
            end,
            [23] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.FULLY_MENTAL_ALCHEMIST)
            end,
            [24] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.THE_WONDROUS_WHATCHAMACALLIT)
            end,
            [25] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.THE_WONDROUS_WHATCHAMACALLIT)
            end
        },
        others =
        {
            [1] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.CHAMELEON_CAPERS)
            end,
            [2] = function(player)
                return player:hasCompletedQuest(xi.questLog.OUTLANDS, xi.quest.id.outlands.A_THIEF_IN_NORG)
            end,
            [3] = function(player)
                return player:hasKeyItem(xi.keyItem.VIAL_OF_SHROUDED_SAND)
            end,
            [4] = function(player)
                return player:hasTitle(xi.title.DYNAMIS_BASTOK_INTERLOPER)
            end,
            [5] = function(player)
                return player:hasKeyItem(xi.keyItem.HYDRA_CORPS_EYEGLASS)
            end,
            [6] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.A_CHOCOBOS_TALE)
            end,
            [7] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.A_CHOCOBOS_TALE)
            end,
            [8] = function(player)
                return player:hasCompletedQuest(xi.questLog.AHT_URHGAN, xi.quest.id.ahtUrhgan.AGAINST_ALL_ODDS)
            end,
            [9] = function(player)
                return player:hasCompletedQuest(xi.questLog.AHT_URHGAN, xi.quest.id.ahtUrhgan.AGAINST_ALL_ODDS)
            end
        },
        addons =
        {
            [1] = function(player)
                -- TODO: Add addon scenario checks for future content
                return placeHolderCheck(player)
            end,
        },
        extras =
        {
            [1] = function(player) -- Not implemented, SOA
                return placeHolderCheck(player)
            end,
        },
        misc =
        {
            [1] = function(player) -- Empty
                return placeHolderCheck(player)
            end,
        },
    },
    [xi.zone.BASTOK_MARKETS] =
    {
        missions =
        {
            [1] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.BASTOK, xi.mission.id.bastok.FETICHISM)
            end,
            [2] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.BASTOK, xi.mission.id.bastok.TO_THE_FORSAKEN_MINES)
            end,
        },
        quests =
        {
            [1] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.THE_RETURN_OF_THE_ADVENTURER)
            end,
            [2] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.THE_FIRST_MEETING)
            end,
            [3] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.WISH_UPON_A_STAR)
            end,
            [4] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.WISH_UPON_A_STAR)
            end,
            [5] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.WISH_UPON_A_STAR)
            end,
            [6] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.ALL_BY_MYSELF)
            end,
            [7] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.A_PROPER_BURIAL)
            end,
            [8] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.A_PROPER_BURIAL)
            end,
            [9] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.A_PROPER_BURIAL)
            end,
            [10] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.A_PROPER_BURIAL)
            end,
            [11] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.A_PROPER_BURIAL)
            end,
            [12] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.A_PROPER_BURIAL)
            end,
            [13] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.A_PROPER_BURIAL)
            end,
            [14] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.A_PROPER_BURIAL)
            end,
        },
        others =
        {
            [1] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.BEAT_AROUND_THE_BUSHIN)
            end,
            [2] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.CONFESSIONS_OF_A_BELLMAKER)
            end,
            [3] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.PICTURE_PERFECT)
            end,
            [4] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.PICTURE_PERFECT)
            end,
            [5] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.PICTURE_PERFECT)
            end,
            [6] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.PICTURE_PERFECT)
            end,
            [7] = function(player)
                return player:hasCompletedQuest(xi.questLog.AHT_URHGAN, xi.quest.id.ahtUrhgan.NO_STRINGS_ATTACHED)
            end,
            [8] = function(player)
                return player:hasCompletedQuest(xi.questLog.AHT_URHGAN, xi.quest.id.ahtUrhgan.PUPPETMASTER_BLUES)
            end,
            [9] = function(player)
                return player:hasCompletedQuest(xi.questLog.AHT_URHGAN, xi.quest.id.ahtUrhgan.PUPPETMASTER_BLUES)
            end,
            [10] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.COMEBACK_QUEEN)
            end,
            [11] = function(player)
                return player:hasCompletedQuest(xi.questLog.ADOULIN, xi.quest.id.adoulin.WAYWARD_WAYPOINTS)
            end,
            [12] = function(player)
                return player:hasCompletedQuest(xi.questLog.ADOULIN, xi.quest.id.adoulin.WAYWARD_WAYPOINTS)
            end,
            [13] = function(player)
                return player:hasCompletedQuest(xi.questLog.CRYSTAL_WAR, xi.quest.id.crystalWar.DRAFTED_BY_THE_DUCHY)
            end,
            [14] = function(player)
                return player:hasCompletedQuest(xi.questLog.CRYSTAL_WAR, xi.quest.id.crystalWar.BATTLE_ON_A_NEW_FRONT)
            end,
            [15] = function(player) -- Not implemented, Voidwatch
                return placeHolderCheck(player)
            end,
            [16] = function(player) -- Not implemented, ROE
                return placeHolderCheck(player)
            end,
            [17] = function(player) -- Not implemented, ROE
                return placeHolderCheck(player)
            end,
            [18] = function(player) -- Not implemented, UC
                return placeHolderCheck(player)
            end,
            [19] = function(player) -- Not implemented, UC
                return placeHolderCheck(player)
            end,
            [20] = function(player) -- Not implemented, ROE
                return placeHolderCheck(player)
            end,
        },
        addons =
        {
            [1] = function(player) -- Not implemented, Addons
                return placeHolderCheck(player)
            end,
        },
        extras =
        {
            [1] = function(player) -- Not implemented, SOA
                return placeHolderCheck(player)
            end,
        },
        misc =
        {
            [1] = function(player) -- Empty
                return placeHolderCheck(player)
            end,
        },
    },
    [xi.zone.METALWORKS] =
    {
        missions =
        {
            [1] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.BASTOK, xi.mission.id.bastok.THE_ZERUHN_REPORT)
            end,
            [2] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.BASTOK, xi.mission.id.bastok.GEOLOGICAL_SURVEY)
            end,
            [3] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.BASTOK, xi.mission.id.bastok.GEOLOGICAL_SURVEY)
            end,
            [4] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.BASTOK, xi.mission.id.bastok.FETICHISM)
            end,
            [5] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.BASTOK, xi.mission.id.bastok.THE_CRYSTAL_LINE)
            end,
            [6] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.BASTOK, xi.mission.id.bastok.WADING_BEASTS)
            end,
            [7] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.BASTOK, xi.mission.id.bastok.THE_EMISSARY)
            end,
            [8] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.BASTOK, xi.mission.id.bastok.THE_EMISSARY)
            end,
            [9] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.BASTOK, xi.mission.id.bastok.THE_FOUR_MUSKETEERS)
            end,
            [10] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.BASTOK, xi.mission.id.bastok.TO_THE_FORSAKEN_MINES)
            end,
            [11] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.BASTOK, xi.mission.id.bastok.JEUNO)
            end,
            [12] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.BASTOK, xi.mission.id.bastok.DARKNESS_RISING)
            end,
            [13] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.BASTOK, xi.mission.id.bastok.DARKNESS_RISING)
            end,
            [14] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.BASTOK, xi.mission.id.bastok.XARCABARD_LAND_OF_TRUTHS)
            end,
            [15] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.BASTOK, xi.mission.id.bastok.XARCABARD_LAND_OF_TRUTHS)
            end,
            [16] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.BASTOK, xi.mission.id.bastok.THE_PIRATES_COVE)
            end,
            [17] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.BASTOK, xi.mission.id.bastok.THE_PIRATES_COVE)
            end,
            [18] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.BASTOK, xi.mission.id.bastok.THE_FINAL_IMAGE)
            end,
            [19] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.BASTOK, xi.mission.id.bastok.THE_FINAL_IMAGE)
            end,
            [20] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.BASTOK, xi.mission.id.bastok.ON_MY_WAY)
            end,
            [21] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.BASTOK, xi.mission.id.bastok.ON_MY_WAY)
            end,
            [22] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.BASTOK, xi.mission.id.bastok.THE_CHAINS_THAT_BIND_US)
            end,
            [23] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.BASTOK, xi.mission.id.bastok.THE_CHAINS_THAT_BIND_US)
            end,
            [24] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.BASTOK, xi.mission.id.bastok.THE_SALT_OF_THE_EARTH)
            end,
            [25] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.BASTOK, xi.mission.id.bastok.THE_SALT_OF_THE_EARTH)
            end,
            [26] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.BASTOK, xi.mission.id.bastok.THE_SALT_OF_THE_EARTH)
            end,
            [27] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.BASTOK, xi.mission.id.bastok.WHERE_TWO_PATHS_CONVERGE)
            end,
            [28] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.BASTOK, xi.mission.id.bastok.WHERE_TWO_PATHS_CONVERGE)
            end,
        },
        quests =
        {
            [1] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.SANDORIA, xi.mission.id.sandoria.JOURNEY_ABROAD)
            end,
            [2] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.SANDORIA, xi.mission.id.sandoria.JOURNEY_ABROAD)
            end,
            [3] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.SANDORIA, xi.mission.id.sandoria.JOURNEY_ABROAD)
            end,
            [4] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WINDURST, xi.mission.id.windurst.THE_THREE_KINGDOMS)
            end,
            [5] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WINDURST, xi.mission.id.windurst.THE_THREE_KINGDOMS)
            end,
        },
        others =
        {
            [1] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.CIDS_SECRET)
            end,
            [2] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.TRUE_STRENGTH)
            end,
            [3] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.TRUE_STRENGTH)
            end,
            [4] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.THE_DOORMAN)
            end,
            [5] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.DARK_LEGACY)
            end,
            [6] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.DARK_PUPPET)
            end,
            [7] = function(player) -- Cornelia CS
                return placeHolderCheck(player)
            end,
            [8] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.THE_WEIGHT_OF_YOUR_LIMITS)
            end,
            [9] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.THE_WEIGHT_OF_YOUR_LIMITS)
            end,
            [10] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.THE_WEIGHT_OF_YOUR_LIMITS)
            end,
            [11] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.SHOOT_FIRST_ASK_QUESTIONS_LATER)
            end,
            [12] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.SHOOT_FIRST_ASK_QUESTIONS_LATER)
            end,
            [13] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.SHOOT_FIRST_ASK_QUESTIONS_LATER)
            end,
            [14] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.FADED_PROMISES)
            end,
            [15] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.FADED_PROMISES)
            end,
            [16] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.FADED_PROMISES)
            end,
            [17] = function(player) -- Ballista
                return placeHolderCheck(player)
            end,
            [18] = function(player) -- Ballista
                return placeHolderCheck(player)
            end,
            [19] = function(player) -- Ballista
                return placeHolderCheck(player)
            end,
            [20] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.OUT_OF_THE_DEPTHS)
            end,
            [21] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.A_QUESTION_OF_FAITH)
            end,
            [22] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.RETURN_TO_THE_DEPTHS)
            end,
            [23] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.RETURN_TO_THE_DEPTHS)
            end,
            [24] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.TEAK_ME_TO_THE_STARS)
            end,
            [25] = function(player) -- Hyper Active
                return placeHolderCheck(player)
            end,
            [26] = function(player) -- The Naming Game
                return placeHolderCheck(player)
            end,
            [27] = function(player) -- The Naming Game
                return placeHolderCheck(player)
            end,
        },
        addons =
        {
            [1] = function(player) -- Bait and Switch
                return placeHolderCheck(player)
            end,
            [2] = function(player) -- Bait and Switch
                return placeHolderCheck(player)
            end,
            [3] = function(player) -- Bait and Switch
                return placeHolderCheck(player)
            end,
            [4] = function(player) -- Bait and Switch
                return placeHolderCheck(player)
            end,
            [5] = function(player) -- Bait and Switch
                return placeHolderCheck(player)
            end,
            [6] = function(player) -- Bait and Switch
                return placeHolderCheck(player)
            end,
            [7] = function(player) -- Bait and Switch
                return placeHolderCheck(player)
            end,
            [8] = function(player) -- Bait and Switch
                return placeHolderCheck(player)
            end,
            [9] = function(player) -- Bait and Switch
                return placeHolderCheck(player)
            end,
            [10] = function(player) -- Bait and Switch
                return placeHolderCheck(player)
            end,
            [11] = function(player) -- Bait and Switch
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.TOO_MANY_CHEFS)
            end,
            [12] = function(player) -- Bait and Switch
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.TOO_MANY_CHEFS)
            end,
            [13] = function(player) -- Bait and Switch
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.TOO_MANY_CHEFS)
            end,
            [14] = function(player) -- Fires of Discontent
                return placeHolderCheck(player)
            end,
            [15] = function(player) -- Synergistic Pursuits
                return placeHolderCheck(player)
            end,
            [16] = function(player) -- Synergistic Pursuits
                return placeHolderCheck(player)
            end,
            [17] = function(player) -- Bonds of Mythril
                return placeHolderCheck(player)
            end,
            [18] = function(player) -- Synergistic Support
                return placeHolderCheck(player)
            end,
            [19] = function(player) -- Synergistic Support
                return placeHolderCheck(player)
            end,
            [20] = function(player) -- Synergistic Support
                return placeHolderCheck(player)
            end,
            [21] = function(player) -- Trust
                return placeHolderCheck(player)
            end,
            [22] = function(player) -- Trust
                return placeHolderCheck(player)
            end,
        },
        extras =
        {
            [1] = function(player) -- Empty
                return player:hasItem(xi.items.ANNIHILATOR)
            end,
            [2] = function(player) -- Ballista: Conflict (San d'Oria)
                return placeHolderCheck(player)
            end,
            [3] = function(player) -- Ballista: Conflict (Windurst)
                return placeHolderCheck(player)
            end,
            [4] = function(player) -- COP: The Search for Goldmane
                return player:hasCompletedQuest(xi.questLog.OUTLANDS, xi.quest.id.outlands.THE_SEARCH_FOR_GOLDMANE)
            end,
            [5] = function(player) -- WOTG: Message on the Wind
                return placeHolderCheck(player)
            end,
            [6] = function(player) -- WOTG: The Long March North
                return placeHolderCheck(player)
            end,
            [7] = function(player) -- WOTG: The Long March North
                return placeHolderCheck(player)
            end,
            [8] = function(player) -- WOTG: The Long March North
                return placeHolderCheck(player)
            end,
            [9] = function(player) -- TOAU: Waking the Colossus
                return placeHolderCheck(player)
            end,
            [10] = function(player) -- SOA: Vegetable Vegetable Revolution
                return placeHolderCheck(player)
            end,
            [11] = function(player) -- ROE: Trust
                return placeHolderCheck(player)
            end,
            [12] = function(player) -- ROE: Trust
                return placeHolderCheck(player)
            end,
            [13] = function(player) -- ROE: Trust
                return placeHolderCheck(player)
            end,
            [14] = function(player) -- SOA: Vegetable Vegetable Crisis
                return placeHolderCheck(player)
            end,
            [15] = function(player) -- Vegetable Vegetable Frustration
                return placeHolderCheck(player)
            end,
            [16] = function(player) -- Vegetable Vegetable Frustration
                return placeHolderCheck(player)
            end,
            [17] = function(player) -- Vegetable Vegetable Frustration
                return placeHolderCheck(player)
            end,
        },
        misc =
        {
            [1] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.THE_CALL_OF_THE_WYRMKING)
            end,
            [2] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.TENDING_AGED_WOUNDS)
            end,
            [3] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.THE_ENDURING_TUMULT_OF_WAR)
            end,
            [4] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.THREE_PATHS)
            end,
            [5] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.THREE_PATHS)
            end,
            [6] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.THREE_PATHS)
            end,
            [7] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.THREE_PATHS)
            end,
            [8] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.THREE_PATHS)
            end,
            [9] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.ONE_TO_BE_FEARED)
            end,
            [10] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.FIRE_IN_THE_EYES_OF_MEN)
            end,
            [11] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.FIRE_IN_THE_EYES_OF_MEN)
            end,
            [12] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.CALM_BEFORE_THE_STORM)
            end,
            [13] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.CALM_BEFORE_THE_STORM)
            end,
            [14] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.DAWN)
            end,
        },
    },
    [xi.zone.PORT_WINDURST] =
    {
        missions =
        {
            [1] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WINDURST, xi.mission.id.windurst.THE_HORUTOTO_RUINS_EXPERIMENT)
            end,
            [2] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WINDURST, xi.mission.id.windurst.FULL_MOON_FOUNTAIN)
            end,
        },
        quests =
        {
            [1] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.BASTOK, xi.mission.id.bastok.THE_EMISSARY_WINDURST)
            end,
            [2] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.BASTOK, xi.mission.id.bastok.THE_EMISSARY_WINDURST2)
            end,
        },
        others =
        {
            [1] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.TRUTH_JUSTICE_AND_THE_ONION_WAY)
            end,
            [2] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.TRUTH_JUSTICE_AND_THE_ONION_WAY)
            end,
            [3] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.KNOW_ONES_ONIONS)
            end,
            [4] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.KNOW_ONES_ONIONS)
            end,
            [5] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.INSPECTORS_GADGET)
            end,
            [6] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.INSPECTORS_GADGET)
            end,
            [7] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.ONION_RINGS)
            end,
            [8] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.CRYING_OVER_ONIONS)
            end,
            [9] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.CRYING_OVER_ONIONS)
            end,
            [10] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.THE_PROMISE)
            end,
            [11] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.THE_PROMISE)
            end,
            [12] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.THE_PROMISE)
            end,
            [13] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.MAKING_AMENS)
            end,
            [14] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.MAKING_AMENS)
            end,
            [15] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.MAKING_AMENS)
            end,
            [16] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.MAKING_AMENS)
            end,
            [17] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.WONDER_WANDS)
            end,
            [18] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.WONDER_WANDS)
            end,
            [19] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.ORASTERY_WOES)
            end,
            [20] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.ORASTERY_WOES)
            end,
            [21] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.ORASTERY_WOES)
            end,
            [22] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.ONE_GOOD_DEED)
            end,
            [23] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.ONE_GOOD_DEED)
            end,
            [24] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.ONE_GOOD_DEED)
            end,
        },
        addons =
        {
            [1] = function(player) -- Monstrosity
                return placeHolderCheck(player)
            end,
            [2] = function(player) -- RUN AF
                return placeHolderCheck(player)
            end,
            [3] = function(player) -- RUN AF
                return placeHolderCheck(player)
            end,
            [4] = function(player) -- RUN AF
                return placeHolderCheck(player)
            end,
        },
        extras =
        {
            [1] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.THE_ROAD_FORKS)
            end,
            [2] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.DAWN)
            end,
        },
        misc =
        {
            [1] = function(player) -- AMK: Drenched! It Began with a Raindrop
                return placeHolderCheck(player)
            end,
            [2] = function(player) -- AMK: Hasten! In a Jam in Jeuno?
                return placeHolderCheck(player)
            end,
        },
    },
    [xi.zone.WINDURST_WATERS] =
    {
        missions =
        {
            [1] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WINDURST, xi.mission.id.windurst.THE_PRICE_OF_PEACE)
            end,
            [2] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WINDURST, xi.mission.id.windurst.LOST_FOR_WORDS)
            end,
            [3] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WINDURST, xi.mission.id.windurst.LOST_FOR_WORDS)
            end,
            [4] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WINDURST, xi.mission.id.windurst.A_TESTING_TIME)
            end,
            [5] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WINDURST, xi.mission.id.windurst.THE_SIXTH_MINISTRY)
            end,
            [6] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WINDURST, xi.mission.id.windurst.THE_SIXTH_MINISTRY)
            end,
            [7] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WINDURST, xi.mission.id.windurst.AWAKENING_OF_THE_GODS)
            end,
            [8] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WINDURST, xi.mission.id.windurst.AWAKENING_OF_THE_GODS)
            end,
            [9] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WINDURST, xi.mission.id.windurst.VAIN)
            end,
            [10] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WINDURST, xi.mission.id.windurst.VAIN)
            end,
            [11] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WINDURST, xi.mission.id.windurst.THE_JESTER_WHOD_BE_KING)
            end,
        },
        quests =
        {
            [1] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.A_POSE_BY_ANY_OTHER_NAME)
            end,
            [2] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.SCOOPED)
            end,
            [3] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.WONDERING_MINSTREL)
            end,
            [4] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.TORAIMARAI_TURMOIL)
            end,
            [5] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.CRYING_OVER_ONIONS)
            end,
            [6] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.CRYING_OVER_ONIONS)
            end,
            [7] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.CRYING_OVER_ONIONS)
            end,
            [8] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.WILD_CARD)
            end,
            [9] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.WILD_CARD)
            end,
            [10] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.THE_MOONLIT_PATH)
            end,
            [11] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.THE_MOONLIT_PATH)
            end,
            [12] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.THE_MOONLIT_PATH)
            end,
            [13] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.THE_MOONLIT_PATH)
            end,
            [14] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.THE_MOONLIT_PATH)
            end,
            [15] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.TUNING_IN)
            end,
            [16] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.TUNING_IN)
            end,
            [17] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.TUNING_OUT)
            end,
            [18] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.WAKING_DREAMS)
            end,
            [19] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.WAKING_DREAMS)
            end,
            [20] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.WAKING_DREAMS)
            end,
            [21] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.WAKING_DREAMS)
            end,
            [22] = function(player) -- WOTG: Healing Herbs
                return placeHolderCheck(player)
            end,
            [23] = function(player) -- WOTG: Healing Herbs
                return placeHolderCheck(player)
            end,
            [24] = function(player) -- WOTG: The Dawn of Delectability
                return placeHolderCheck(player)
            end,
            [25] = function(player) -- WOTG: The Dawn of Delectability
                return placeHolderCheck(player)
            end,
            [26] = function(player) -- WOTG: The Dawn of Delectability
                return placeHolderCheck(player)
            end,
            [27] = function(player) -- WOTG: Babban Ny Mheillea
                return placeHolderCheck(player)
            end,
            [28] = function(player) -- WOTG: Babban Ny Mheillea
                return placeHolderCheck(player)
            end,
            [29] = function(player) -- WOTG: Babban Ny Mheillea
                return placeHolderCheck(player)
            end,
        },
        others =
        {
            [1] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.THE_ROAD_FORKS)
            end,
            [2] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.THE_ROAD_FORKS)
            end,
            [3] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.THE_ROAD_FORKS)
            end,
            [4] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.THE_ROAD_FORKS)
            end,
            [5] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.THE_ROAD_FORKS)
            end,
            [6] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.THREE_PATHS)
            end,
        },
        addons =
        {
            [1] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
        },
        extras =
        {
            [1] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
        },
        misc =
        {
            [1] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
        },
    },
    [xi.zone.WINDURST_WOODS] =
    {
        missions =
        {
            [1] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WINDURST, xi.mission.id.windurst.THE_HEART_OF_THE_MATTER)
            end,
            [2] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WINDURST, xi.mission.id.windurst.THE_HEART_OF_THE_MATTER)
            end,
            [3] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WINDURST, xi.mission.id.windurst.THE_HEART_OF_THE_MATTER)
            end,
            [4] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WINDURST, xi.mission.id.windurst.THE_JESTER_WHOD_BE_KING)
            end,
            [5] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WINDURST, xi.mission.id.windurst.THE_JESTER_WHOD_BE_KING)
            end,
            [6] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WINDURST, xi.mission.id.windurst.THE_JESTER_WHOD_BE_KING)
            end,
            [7] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WINDURST, xi.mission.id.windurst.THE_JESTER_WHOD_BE_KING)
            end,
            [8] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WINDURST, xi.mission.id.windurst.DOLL_OF_THE_DEAD)
            end,
            [9] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WINDURST, xi.mission.id.windurst.DOLL_OF_THE_DEAD)
            end,
            [10] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WINDURST, xi.mission.id.windurst.DOLL_OF_THE_DEAD)
            end,
        },
        quests =
        {
            [1] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.SANDORIA, xi.mission.id.sandoria.JOURNEY_ABROAD)
            end,
            [2] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.SANDORIA, xi.mission.id.sandoria.JOURNEY_ABROAD)
            end,
        },
        others =
        {
            [1] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.THE_AMAZIN_SCORPIO)
            end,
            [2] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.LEGENDARY_PLAN_B)
            end,
            [3] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.LEGENDARY_PLAN_B)
            end,
            [4] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.CAN_CARDIANS_CRY)
            end,
            [5] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.CAN_CARDIANS_CRY)
            end,
            [6] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.THE_FANGED_ONE)
            end,
            [7] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.THE_FANGED_ONE)
            end,
            [8] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.THE_TENSHODO_SHOWDOWN)
            end,
            [9] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.AS_THICK_AS_THIEVES)
            end,
            [10] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.AS_THICK_AS_THIEVES)
            end,
            [11] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.HITTING_THE_MARQUISATE)
            end,
            [12] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.HITTING_THE_MARQUISATE)
            end,
            [13] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.SIN_HUNTING)
            end,
            [14] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.SIN_HUNTING)
            end,
            [15] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.FIRE_AND_BRIMSTONE)
            end,
            [16] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.FIRE_AND_BRIMSTONE)
            end,
            [17] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.FIRE_AND_BRIMSTONE)
            end,
            [18] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.UNBRIDLED_PASSION)
            end,
            [19] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.UNBRIDLED_PASSION)
            end,
            [20] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.WILD_CARD)
            end,
            [21] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.FROM_SAPLINGS_GROW)
            end,
            [22] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.FROM_SAPLINGS_GROW)
            end,
            [23] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.FROM_SAPLINGS_GROW)
            end,
        },
        addons =
        {
            [1] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.THE_KIND_CARDIAN)
            end,
            [2] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [3] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [4] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [5] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [6] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [7] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [8] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [9] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [10] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [11] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [12] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [13] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [14] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [15] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [16] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [17] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
        },
        extras =
        {
            [1] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.THREE_PATHS)
            end,
        },
        misc =
        {
            [1] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [2] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
        },
    },
    [xi.zone.WINDURST_WALLS] =
    {
        missions =
        {
            [1] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WINDURST, xi.mission.id.windurst.LOST_FOR_WORDS)
            end,
            [2] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WINDURST, xi.mission.id.windurst.THE_JESTER_WHOD_BE_KING)
            end,
            [3] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WINDURST, xi.mission.id.windurst.MOON_READING)
            end,
        },
        quests =
        {
            [1] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.CURSES_FOILED_A_GOLEM)
            end,
            [2] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.NOTHING_MATTERS)
            end,
            [3] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.NOTHING_MATTERS)
            end,
            [4] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.NOTHING_MATTERS)
            end,
            [5] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.KNOW_ONES_ONIONS)
            end,
            [6] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.ONION_RINGS)
            end,
            [7] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.WILD_CARD)
            end,
            [8] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.WILD_CARD)
            end,
            [9] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.WILD_CARD)
            end,
            [10] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.WILD_CARD)
            end,
            [11] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.I_CAN_HEAR_A_RAINBOW)
            end,
            [12] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.I_CAN_HEAR_A_RAINBOW)
            end,
            [13] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.THE_PUPPET_MASTER)
            end,
            [14] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.THE_PUPPET_MASTER)
            end,
            [15] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.CLASS_REUNION)
            end,
            [16] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.CLASS_REUNION)
            end,
            [17] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.CLASS_REUNION)
            end,
            [18] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.CLASS_REUNION)
            end,
        },
        others =
        {
            [1] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.CARBUNCLE_DEBACLE)
            end,
            [2] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.CARBUNCLE_DEBACLE)
            end,
            [3] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.BLOOD_AND_GLORY)
            end,
            [4] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.BLOOD_AND_GLORY)
            end,
            [5] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.BLOOD_AND_GLORY)
            end,
        },
        addons =
        {
            [1] = function(player)
                return player:hasKeyItem(xi.keyItem.VIAL_OF_SHROUDED_SAND)
            end,
            [2] = function(player)
                return player:hasTitle(xi.title.DYNAMIS_WINDURST_INTERLOPER)
            end,
            [3] = function(player)
                return player:hasKeyItem(xi.keyItem.HYDRA_CORPS_LANTERN)
            end,
            [4] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [5] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [6] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
        },
        extras =
        {
            [1] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.THE_ROAD_FORKS)
            end,
            [2] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.THE_ROAD_FORKS)
            end,
            [3] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.THE_ROAD_FORKS)
            end,
            [4] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.THE_ROAD_FORKS)
            end,
            [5] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.THREE_PATHS)
            end,
        },
        misc =
        {
            [1] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
        },
    },
    [xi.zone.HEAVENS_TOWER] =
    {
        missions =
        {
            [1] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WINDURST, xi.mission.id.windurst.THE_THREE_KINGDOMS)
            end,
            [2] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WINDURST, xi.mission.id.windurst.THE_THREE_KINGDOMS_BASTOK2)
            end,
            [3] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WINDURST, xi.mission.id.windurst.THE_THREE_KINGDOMS_SANDORIA2)
            end,
            [4] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WINDURST, xi.mission.id.windurst.TO_EACH_HIS_OWN_RIGHT)
            end,
            [5] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WINDURST, xi.mission.id.windurst.TO_EACH_HIS_OWN_RIGHT)
            end,
            [6] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WINDURST, xi.mission.id.windurst.WRITTEN_IN_THE_STARS)
            end,
            [7] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WINDURST, xi.mission.id.windurst.A_NEW_JOURNEY)
            end,
            [8] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WINDURST, xi.mission.id.windurst.THE_FINAL_SEAL)
            end,
            [9] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WINDURST, xi.mission.id.windurst.THE_FINAL_SEAL)
            end,
            [10] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WINDURST, xi.mission.id.windurst.THE_SHADOW_AWAITS)
            end,
            [11] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WINDURST, xi.mission.id.windurst.THE_SHADOW_AWAITS)
            end,
            [12] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WINDURST, xi.mission.id.windurst.THE_SHADOW_AWAITS)
            end,
            [13] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WINDURST, xi.mission.id.windurst.SAINTLY_INVITATION)
            end,
            [14] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WINDURST, xi.mission.id.windurst.SAINTLY_INVITATION)
            end,
            [15] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WINDURST, xi.mission.id.windurst.THE_JESTER_WHOD_BE_KING)
            end,
            [16] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WINDURST, xi.mission.id.windurst.DOLL_OF_THE_DEAD)
            end,
            [17] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WINDURST, xi.mission.id.windurst.DOLL_OF_THE_DEAD)
            end,
            [18] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WINDURST, xi.mission.id.windurst.MOON_READING)
            end,
            [19] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WINDURST, xi.mission.id.windurst.MOON_READING)
            end,
            [20] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WINDURST, xi.mission.id.windurst.MOON_READING)
            end,
            [21] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WINDURST, xi.mission.id.windurst.MOON_READING)
            end,
        },
        quests =
        {
            [1] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.SANDORIA, xi.mission.id.sandoria.JOURNEY_TO_WINDURST)
            end,
            [2] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.SANDORIA, xi.mission.id.sandoria.JOURNEY_TO_WINDURST2)
            end,
            [3] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.BASTOK, xi.mission.id.bastok.THE_EMISSARY_WINDURST)
            end,
            [4] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.BASTOK, xi.mission.id.bastok.THE_EMISSARY_WINDURST2)
            end,
        },
        others =
        {
            [1] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.THE_THREE_MAGI)
            end,
            [2] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.RECOLLECTIONS)
            end,
            [3] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.RECOLLECTIONS)
            end,
            [4] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.RECOLLECTIONS)
            end,
            [5] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.THE_ROOT_OF_THE_PROBLEM)
            end,
            [6] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.THE_ROOT_OF_THE_PROBLEM)
            end,
            [7] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.THE_ROOT_OF_THE_PROBLEM)
            end,
            [8] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [9] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [10] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [11] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [12] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
        },
        addons =
        {
            [1] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
        },
        extras =
        {
            [1] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
        },
        misc =
        {
            [1] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
        },
    },
    [xi.zone.PORT_JEUNO] =
    {
        missions =
        {
            [1] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.BORGHERTZ_S_WARRING_HANDS)
            end,
            [2] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.BORGHERTZ_S_WARRING_HANDS)
            end,
            [3] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
        },
        quests =
        {
            [1] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
        },
        others =
        {
            [1] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
        },
        addons =
        {
            [1] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
        },
        extras =
        {
            [1] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
        },
        misc =
        {
            [1] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
        },
    },
    [xi.zone.UPPER_JEUNO] =
    {
        missions =
        {
            [1] = function(player) -- Not implemented
                return player:hasKeyIem(xi.keyItem.YAGUDO_TORCH)
            end,
        },
        quests =
        {
            [1] = function(player) -- Not implemented
                return player:hasKeyIem(xi.keyItem.CREST_OF_DAVOI)
            end,
            [2] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.SAVE_MY_SISTER)
            end,
            [3] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.SAVE_MY_SISTER)
            end,
            [4] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.SAVE_MY_SISTER)
            end,
            [5] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.A_CLOCK_MOST_DELICATE)
            end,
            [6] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.A_CLOCK_MOST_DELICATE)
            end,
            [7] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.A_CLOCK_MOST_DELICATE)
            end,
            [8] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.THE_CLOCKMASTER)
            end,
            [9] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.CHOCOBOS_WOUNDS)
            end,
            [10] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.CHOCOBOS_WOUNDS)
            end,
            [11] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.SAVE_MY_SON)
            end,
            [12] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.PATH_OF_THE_BEASTMASTER)
            end,
            [13] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.A_CANDLELIGHT_VIGIL)
            end,
            [14] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.A_CANDLELIGHT_VIGIL)
            end,
            [15] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.SEARCHING_FOR_THE_RIGHT_WORDS)
            end,
            [16] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.SEARCHING_FOR_THE_RIGHT_WORDS)
            end,
            [17] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.THE_KIND_CARDIAN)
            end,
            [18] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.AXE_THE_COMPETITION)
            end,
            [19] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.AXE_THE_COMPETITION)
            end,
            [20] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.AXE_THE_COMPETITION)
            end,
            [21] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.A_CHOCOBOS_TALE)
            end,
            [22] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.A_CHOCOBOS_TALE)
            end,
            [23] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.A_REPUTATION_IN_RUINS)
            end,
        },
        others =
        {
            [1] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.BORGHERTZ_S_WARRING_HANDS)
            end,
            [2] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.BORGHERTZ_S_STRIKING_HANDS)
            end,
            [3] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.BORGHERTZ_S_HEALING_HANDS)
            end,
            [4] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.BORGHERTZ_S_SORCEROUS_HANDS)
            end,
            [5] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.BORGHERTZ_S_VERMILLION_HANDS)
            end,
            [6] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.BORGHERTZ_S_SNEAKY_HANDS)
            end,
            [7] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.BORGHERTZ_S_STALWART_HANDS)
            end,
            [8] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.BORGHERTZ_S_SHADOWY_HANDS)
            end,
            [9] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.BORGHERTZ_S_WILD_HANDS)
            end,
            [10] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.BORGHERTZ_S_HARMONIOUS_HANDS)
            end,
            [11] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.BORGHERTZ_S_CHASING_HANDS)
            end,
            [12] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.BORGHERTZ_S_LOYAL_HANDS)
            end,
            [13] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.BORGHERTZ_S_LURKING_HANDS)
            end,
            [14] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.BORGHERTZ_S_DRAGON_HANDS)
            end,
            [15] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.BORGHERTZ_S_CALLING_HANDS)
            end,
            [16] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [17] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [18] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [19] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [20] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [21] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [22] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [23] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
        },
        addons =
        {
            [1] = function(player) -- Not implemented, Adventuring Fellow
                return placeHolderCheck(player)
            end,
        },
        extras =
        {
            [1] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
        },
        misc =
        {
            [1] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.THE_RITES_OF_LIFE)
            end,
            [2] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.THE_RITES_OF_LIFE)
            end,
            [3] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.THE_RITES_OF_LIFE)
            end,
            [4] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.THE_RITES_OF_LIFE)
            end,
            [5] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.DARKNESS_NAMED)
            end,
            [6] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.DARKNESS_NAMED)
            end,
            [7] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.THREE_PATHS)
            end,
            [8] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.FOR_WHOM_THE_VERSE_IS_SUNG)
            end,
            [9] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.FLAMES_IN_THE_DARKNESS)
            end,
            [10] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.DAWN)
            end,
            [11] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.DAWN)
            end,
            [12] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.DAWN)
            end,
            [13] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.DAWN)
            end,
        },
    },
    [xi.zone.LOWER_JEUNO] =
    {
        missions =
        {
            [1] = function(player)
                return player:hasKeyIem(xi.keyItem.CORUSCANT_ROSARY)
            end,
            [2] = function(player)
                return player:hasKeyIem(xi.keyItem.YAGUDO_TORCH)
            end,
        },
        quests =
        {
            [1] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.ZILART, xi.mission.id.zilart.RETURN_TO_DELKFUTTS_TOWER)
            end,
            [2] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.ZILART, xi.mission.id.zilart.ROMAEVE)
            end,
            [3] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.ZILART, xi.mission.id.zilart.THE_SEALED_SHRINE)
            end,
            [4] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.ZILART, xi.mission.id.zilart.AWAKENING)
            end,
        },
        others =
        {
            [1] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.THE_WONDER_MAGIC_SET)
            end,
            [2] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.THE_WONDER_MAGIC_SET)
            end,
            [3] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.THE_KIND_CARDIAN)
            end,
            [4] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.YOUR_CRYSTAL_BALL)
            end,
            [5] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.COLLECT_TARUT_CARDS)
            end,
            [6] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.A_MINSTREL_IN_DESPAIR)
            end,
            [7] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.CHOCOBOS_WOUNDS)
            end,
            [8] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.CHOCOBOS_WOUNDS)
            end,
            [9] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.CHOCOBOS_WOUNDS)
            end,
            [10] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.SAVE_MY_SON)
            end,
            [11] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.SAVE_MY_SON)
            end,
            [12] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.SAVE_MY_SON)
            end,
            [13] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.PATH_OF_THE_BEASTMASTER)
            end,
            [14] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.A_NEW_DAWN)
            end,
            [15] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.A_NEW_DAWN)
            end,
            [16] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.A_NEW_DAWN)
            end,
            [17] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.A_NEW_DAWN)
            end,
            [18] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.A_NEW_DAWN)
            end,
            [19] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.A_NEW_DAWN)
            end,
            [20] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.SEARCHING_FOR_THE_RIGHT_WORDS)
            end,
            [21] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.SEARCHING_FOR_THE_RIGHT_WORDS)
            end,
            [22] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.BEAT_AROUND_THE_BUSHIN)
            end,
            [23] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.BEAT_AROUND_THE_BUSHIN)
            end,
            [24] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.BEAT_AROUND_THE_BUSHIN)
            end,
            [25] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.BEAT_AROUND_THE_BUSHIN)
            end,
            [26] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.BEAT_AROUND_THE_BUSHIN)
            end,
            [27] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.BEAT_AROUND_THE_BUSHIN)
            end,
        },
        addons =
        {
            [1] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.IN_THE_MOOD_FOR_LOVE)
            end,
            [2] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.IN_THE_MOOD_FOR_LOVE)
            end,
            [3] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.IN_THE_MOOD_FOR_LOVE)
            end,
            [4] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.HOOK_LINE_AND_SINKER)
            end,
            [5] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.HOOK_LINE_AND_SINKER)
            end,
            [6] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [7] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [8] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [9] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.APOCALYPSE_NIGH)
            end,
            [10] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.APOCALYPSE_NIGH)
            end,
            [11] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [12] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [13] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [14] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [15] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [16] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [17] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [18] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [19] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [20] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [21] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [22] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [23] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [24] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [25] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [26] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [27] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [28] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
        },
        extras =
        {
            [1] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.THE_TENSHODO_SHOWDOWN)
            end,
            [2] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.THE_TENSHODO_SHOWDOWN)
            end,
            [3] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.AS_THICK_AS_THIEVES)
            end,
            [4] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.RETURN_TO_THE_DEPTHS)
            end,
            [5] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.RETURN_TO_THE_DEPTHS)
            end,
            [6] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.RETURN_TO_THE_DEPTHS)
            end,
            [7] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [8] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
        },
        misc =
        {
            [1] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.A_VESSEL_WITHOUT_A_CAPTAIN)
            end,
            [2] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.A_VESSEL_WITHOUT_A_CAPTAIN)
            end,
            [3] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.TENDING_AGED_WOUNDS)
            end,
            [4] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.TENDING_AGED_WOUNDS)
            end,
            [5] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.TENDING_AGED_WOUNDS)
            end,
        },
    },
    [xi.zone.RULUDE_GARDENS] =
    {
        missions =
        {
            [1] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.SANDORIA, xi.mission.id.sandoria.APPOINTMENT_TO_JEUNO)
            end,
            [2] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.SANDORIA, xi.mission.id.sandoria.APPOINTMENT_TO_JEUNO)
            end,
            [3] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.BASTOK, xi.mission.id.bastok.JEUNO)
            end,
            [4] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.BASTOK, xi.mission.id.bastok.JEUNO)
            end,
            [5] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WINDURST, xi.mission.id.windurst.A_NEW_JOURNEY)
            end,
            [6] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WINDURST, xi.mission.id.windurst.A_NEW_JOURNEY)
            end,
            [7] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.SANDORIA, xi.mission.id.sandoria.MAGICITE)
            end,
            [8] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.BASTOK, xi.mission.id.bastok.MAGICITE)
            end,
            [9] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.WINDURST, xi.mission.id.windurst.MAGICITE)
            end,
            [10] = function(player)
                return player:hasKeyItem(xi.keyItem.ARCHDUCAL_AUDIENCE_PERMIT)
            end,
            [11] = function(player)
                return player:hasKeyItem(xi.keyItem.CREST_OF_DAVOI)
            end,
            [12] = function(player)
                return player:hasKeyItem(xi.keyItem.QUADAV_CREST)
            end,
            [13] = function(player)
                return player:hasKeyItem(xi.keyItem.YAGUDO_CREST)
            end,
            [14] = function(player)
                return player:hasKeyItem(xi.keyItem.AIRSHIP_PASS)
            end,
        },
        quests =
        {
            [1] = function(player)
                return player:hasTitle(xi.title.STAR_BREAKER)
            end,
            [2] = function(player)
                return player:hasTitle(xi.title.STAR_BREAKER)
            end,
            [3] = function(player)
                return player:hasTitle(xi.title.STAR_BREAKER)
            end,
            [4] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.DUCAL_HOSPITALITY)
            end,
            [5] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.DUCAL_HOSPITALITY)
            end,
            [6] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.BEYOND_THE_SUN)
            end,
            [7] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.CHAMELEON_CAPERS)
            end,
            [8] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.STORMS_OF_FATE)
            end,
            [9] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.STORMS_OF_FATE)
            end,
            [10] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.SHADOWS_OF_THE_DEPARTED)
            end,
            [11] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.SHADOWS_OF_THE_DEPARTED)
            end,
            [12] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.APOCALYPSE_NIGH)
            end,
            [13] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [14] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [15] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [16] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [17] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [18] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [19] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [20] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [21] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [22] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [23] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [24] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [25] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [26] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
        },
        others =
        {
            [1] = function(player)
                return player:hasKeyItem(xi.keyItem.VIAL_OF_SHROUDED_SAND)
            end,
            [2] = function(player)
                return player:hasTitle(xi.title.DYNAMIS_JEUNO_INTERLOPER)
            end,
            [3] = function(player)
                return player:hasKeyItem(xi.keyItem.HYDRA_CORPS_TACTICAL_MAP)
            end,
            [4] = function(player)
                return player:hasItem(xi.items.BRAVURA)
            end,
            [5] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [7] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [8] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [9] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [10] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [11] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [12] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [13] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [14] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [15] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [16] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [17] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [18] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [19] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [20] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [21] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
        },
        addons =
        {
            [1] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.BELOW_THE_ARKS)
            end,
            [2] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.A_VESSEL_WITHOUT_A_CAPTAIN)
            end,
            [3] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.THREE_PATHS)
            end,
            [4] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.FOR_WHOM_THE_VERSE_IS_SUNG)
            end,
            [5] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.FOR_WHOM_THE_VERSE_IS_SUNG)
            end,
            [6] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.A_PLACE_TO_RETURN)
            end,
            [7] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.MORE_QUESTIONS_THAN_ANSWERS)
            end,
            [8] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.MORE_QUESTIONS_THAN_ANSWERS)
            end,
            [9] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.FLAMES_IN_THE_DARKNESS)
            end,
            [10] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.DAWN)
            end,
        },
        extras =
        {
            [1] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.TOAU, xi.mission.id.toau.EASTERLY_WINDS)
            end,
            [2] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.TOAU, xi.mission.id.toau.UNRAVELING_REASON)
            end,
            [3] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.TOAU, xi.mission.id.toau.LIGHT_OF_JUDGMENT)
            end,
            [4] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.TOAU, xi.mission.id.toau.LIGHT_OF_JUDGMENT)
            end,
        },
        misc =
        {
            [1] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
        },
    },
    [xi.zone.SELBINA] =
    {
        missions =
        {
            [1] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.THE_RESCUE)
            end,
            [2] = function(player)
                return charVarCheck(player, "mathildeCS")
            end,
            [3] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.UNDER_THE_SEA)
            end,
            [4] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.PICTURE_PERFECT)
            end,
            [5] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.PICTURE_PERFECT)
            end,
        },
        quests =
        {
            [1] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.THE_TENSHODO_SHOWDOWN)
            end,
            [2] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.THE_TENSHODO_SHOWDOWN)
            end,
            [3] = function(player)
                return player:hasCompletedQuest(xi.questLog.OUTLANDS, xi.quest.id.outlands.I_LL_TAKE_THE_BIG_BOX)
            end,
            [4] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.ITS_RAINING_MANNEQUINS)
            end,
            [5] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.SIGNED_IN_BLOOD)
            end,
            [6] = function(player)
                return player:hasCompletedQuest(xi.questLog.SANDORIA, xi.quest.id.sandoria.SIGNED_IN_BLOOD)
            end,
            [7] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [8] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
            [9] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
        },
        others =
        {
            [1] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.MORE_QUESTIONS_THAN_ANSWERS)
            end,
        },
        addons =
        {
            [1] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
        },
        extras =
        {
            [1] = function(player) -- Empty
                return placeHolderCheck(player)
            end,
        },
        misc =
        {
            [1] = function(player) -- Empty
                return placeHolderCheck(player)
            end,
        },
    },
    [xi.zone.MHAURA] =
    {
        missions =
        {
            [1] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.THE_SAND_CHARM)
            end,
            [2] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.THE_SAND_CHARM)
            end,
            [3] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.THE_SAND_CHARM)
            end,
            [4] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.TRIAL_BY_LIGHTNING)
            end,
            [5] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.ITS_RAINING_MANNEQUINS)
            end,
            [6] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.ITS_RAINING_MANNEQUINS)
            end,
        },
        quests =
        {
            [1] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.FIRE_AND_BRIMSTONE)
            end,
            [2] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.FIRE_AND_BRIMSTONE)
            end,
            [3] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.UNBRIDLED_PASSION)
            end,
            [4] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.UNBRIDLED_PASSION)
            end,
            [5] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.BEHIND_THE_SMILE)
            end,
            [6] = function(player)
                return player:hasTitle(xi.title.TEMENOS_LIBERATOR)
            end,
            [7] = function(player)
                return player:hasTitle(xi.title.APOLLYON_RAVAGER)
            end,
            [8] = function(player) -- RUN AF
                return placeHolderCheck(player)
            end,
            [9] = function(player) -- RUN AF
                return placeHolderCheck(player)
            end,
        },
        others =
        {
            [1] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.DAWN)
            end,
        },
        addons =
        {
            [1] = function(player) -- Not implemented
                return placeHolderCheck(player)
            end,
        },
        extras =
        {
            [1] = function(player) -- Empty
                return placeHolderCheck(player)
            end,
        },
        misc =
        {
            [1] = function(player) -- Empty
                return placeHolderCheck(player)
            end,
        },
    },
    [xi.zone.KAZHAM] =
    {
        missions =
        {
            [1] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.ZILART, xi.mission.id.zilart.KAZHAMS_CHIEFTAINESS)
            end,
        },
        quests =
        {
            [1] = function(player) -- A Question of Taste
                return placeHolderCheck(player)
            end,
            [2] = function(player) -- A Question of Taste
                return placeHolderCheck(player)
            end,
            [3] = function(player) -- A Question of Taste
                return placeHolderCheck(player)
            end,
            [4] = function(player) -- A Question of Taste
                return placeHolderCheck(player)
            end,
            [5] = function(player) -- You Call That a Knife?
                return placeHolderCheck(player)
            end,
            [6] = function(player) -- You Call That a Knife?
                return placeHolderCheck(player)
            end,
            [7] = function(player)
                return player:hasCompletedQuest(xi.questLog.OUTLANDS, xi.quest.id.outlands.MISSIONARY_MAN)
            end,
            [8] = function(player)
                return player:hasCompletedQuest(xi.questLog.OUTLANDS, xi.quest.id.outlands.MISSIONARY_MAN)
            end,
            [9] = function(player)
                return player:hasCompletedQuest(xi.questLog.OUTLANDS, xi.quest.id.outlands.MISSIONARY_MAN)
            end,
            [10] = function(player)
                return player:hasCompletedQuest(xi.questLog.OUTLANDS, xi.quest.id.outlands.GULLIBLES_TRAVELS)
            end,
            [11] = function(player)
                return player:hasCompletedQuest(xi.questLog.OUTLANDS, xi.quest.id.outlands.GULLIBLES_TRAVELS)
            end,
            [12] = function(player)
                return player:hasCompletedQuest(xi.questLog.OUTLANDS, xi.quest.id.outlands.EVEN_MORE_GULLIBLES_TRAVELS)
            end,
            [13] = function(player)
                return player:hasCompletedQuest(xi.questLog.OUTLANDS, xi.quest.id.outlands.EVEN_MORE_GULLIBLES_TRAVELS)
            end,
            [14] = function(player)
                return player:hasCompletedQuest(xi.questLog.OUTLANDS, xi.quest.id.outlands.PERSONAL_HYGIENE)
            end,
            [15] = function(player)
                return player:hasCompletedQuest(xi.questLog.OUTLANDS, xi.quest.id.outlands.PERSONAL_HYGIENE)
            end,
            [16] = function(player)
                return player:hasCompletedQuest(xi.questLog.OUTLANDS, xi.quest.id.outlands.THE_OPO_OPO_AND_I)
            end,
            [17] = function(player)
                return player:hasCompletedQuest(xi.questLog.OUTLANDS, xi.quest.id.outlands.THE_OPO_OPO_AND_I)
            end,
            [18] = function(player)
                return player:hasCompletedQuest(xi.questLog.OUTLANDS, xi.quest.id.outlands.TRIAL_BY_FIRE)
            end,
            [19] = function(player)
                return player:hasCompletedQuest(xi.questLog.OUTLANDS, xi.quest.id.outlands.CLOAK_AND_DAGGER)
            end,
            [20] = function(player)
                return player:hasCompletedQuest(xi.questLog.OUTLANDS, xi.quest.id.outlands.CLOAK_AND_DAGGER)
            end,
            [21] = function(player)
                return player:hasCompletedQuest(xi.questLog.OUTLANDS, xi.quest.id.outlands.CLOAK_AND_DAGGER)
            end,
        },
        others =
        {
            [1] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.TUNING_OUT)
            end,
            [2] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.TUNING_OUT)
            end,
            [3] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.TUNING_OUT)
            end,
            [4] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.RETURN_TO_THE_DEPTHS)
            end,
            [5] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.RETURN_TO_THE_DEPTHS)
            end,
            [6] = function(player) -- Voidwatch
                return placeHolderCheck(player)
            end,
            [7] = function(player) -- Voidwatch
                return placeHolderCheck(player)
            end,
        },
        addons =
        {
            [1] = function(player) -- Empty
                return placeHolderCheck(player)
            end,
        },
        extras =
        {
            [1] = function(player) -- Empty
                return placeHolderCheck(player)
            end,
        },
        misc =
        {
            [1] = function(player) -- Empty
                return placeHolderCheck(player)
            end,
        },
    },
    [xi.zone.RABAO] =
    {
        missions =
        {
            [1] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.ZILART, xi.mission.id.zilart.THE_MITHRA_AND_THE_CRYSTAL)
            end,
        },
        quests =
        {
            [1] = function(player)
                return player:hasCompletedQuest(xi.questLog.OUTLANDS, xi.quest.id.outlands.TRIAL_BY_WIND)
            end,
            [2] = function(player) -- COP: Chasing Dreams
                return placeHolderCheck(player)
            end,
            [3] = function(player) -- COP: Chasing Dreams
                return placeHolderCheck(player)
            end,
            [4] = function(player) -- COP: Chasing Dreams
                return placeHolderCheck(player)
            end,
            [5] = function(player) -- COP: The Search for Goldmane
                return placeHolderCheck(player)
            end,
            [6] = function(player) -- COP: The Search for Goldmane
                return placeHolderCheck(player)
            end,
            [7] = function(player) -- ROE: Fish quests
                return placeHolderCheck(player)
            end,
            [8] = function(player) -- ROE: Fish quests
                return placeHolderCheck(player)
            end,
            [9] = function(player) -- ROE: Fish quests
                return placeHolderCheck(player)
            end,
            [10] = function(player) -- ROE: Fish quests
                return placeHolderCheck(player)
            end,
            [11] = function(player) -- ROE: Fish quests
                return placeHolderCheck(player)
            end,
            [12] = function(player) -- ROE: Fish quests
                return placeHolderCheck(player)
            end,
            [13] = function(player) -- ROE: Fish quests
                return placeHolderCheck(player)
            end,
            [14] = function(player) -- ROE: Fish quests
                return placeHolderCheck(player)
            end,
            [15] = function(player) -- ROE: Fish quests
                return placeHolderCheck(player)
            end,
            [16] = function(player) -- ROE: Fish quests
                return placeHolderCheck(player)
            end,
        },
        others =
        {
            [1] = function(player)
                return player:hasCompletedQuest(xi.questLog.OUTLANDS, xi.quest.id.outlands.I_LL_TAKE_THE_BIG_BOX)
            end,
            [2] = function(player)
                return player:hasCompletedQuest(xi.questLog.OUTLANDS, xi.quest.id.outlands.I_LL_TAKE_THE_BIG_BOX)
            end,
            [3] = function(player)
                return player:hasCompletedQuest(xi.questLog.OUTLANDS, xi.quest.id.outlands.TRUE_WILL)
            end,
            [4] = function(player)
                return player:hasCompletedQuest(xi.questLog.OUTLANDS, xi.quest.id.outlands.TRUE_WILL)
            end,
            [5] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.CARBUNCLE_DEBACLE)
            end,
            [6] = function(player) -- Voidwatch
                return placeHolderCheck(player)
            end,
            [7] = function(player) -- Voidwatch
                return placeHolderCheck(player)
            end,
            [8] = function(player) -- SOA
                return placeHolderCheck(player)
            end,
        },
        addons =
        {
            [1] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.BASTOK, xi.mission.id.bastok.THE_SALT_OF_THE_EARTH)
            end,
            [2] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.BASTOK, xi.mission.id.bastok.THE_SALT_OF_THE_EARTH)
            end,
        },
        extras =
        {
            [1] = function(player) -- Empty
                return placeHolderCheck(player)
            end,
        },
        misc =
        {
            [1] = function(player) -- Empty
                return placeHolderCheck(player)
            end,
        },
    },
    [xi.zone.NORG] =
    {
        missions =
        {
            [1] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.ZILART, xi.mission.id.zilart.THE_NEW_FRONTIER)
            end,
            [2] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.ZILART, xi.mission.id.zilart.WELCOME_TNORG)
            end,
            [3] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.ZILART, xi.mission.id.zilart.ROMAEVE)
            end,
            [4] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.ZILART, xi.mission.id.zilart.THE_HALL_OF_THE_GODS)
            end,
            [5] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.ZILART, xi.mission.id.zilart.THE_SEALED_SHRINE)
            end,
            [6] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.ZILART, xi.mission.id.zilart.AWAKENING)
            end,
        },
        quests =
        {
            [1] = function(player)
                return player:hasCompletedQuest(xi.questLog.OUTLANDS, xi.quest.id.outlands.FORGE_YOUR_DESTINY)
            end,
            [2] = function(player)
                return player:hasCompletedQuest(xi.questLog.OUTLANDS, xi.quest.id.outlands.THE_SACRED_KATANA)
            end,
            [3] = function(player)
                return player:hasCompletedQuest(xi.questLog.OUTLANDS, xi.quest.id.outlands.YOMI_OKURI)
            end,
            [4] = function(player)
                return player:hasCompletedQuest(xi.questLog.OUTLANDS, xi.quest.id.outlands.YOMI_OKURI)
            end,
            [5] = function(player)
                return player:hasCompletedQuest(xi.questLog.OUTLANDS, xi.quest.id.outlands.A_THIEF_IN_NORG)
            end,
            [6] = function(player)
                return player:hasCompletedQuest(xi.questLog.OUTLANDS, xi.quest.id.outlands.A_THIEF_IN_NORG)
            end,
            [7] = function(player)
               return player:hasCompletedQuest(xi.questLog.OUTLANDS, xi.quest.id.outlands.A_THIEF_IN_NORG)
            end,
            [8] = function(player)
                return player:hasCompletedQuest(xi.questLog.OUTLANDS, xi.quest.id.outlands.A_THIEF_IN_NORG)
            end,
            [9] = function(player)
                return player:hasCompletedQuest(xi.questLog.OUTLANDS, xi.quest.id.outlands.TWENTY_IN_PIRATE_YEARS)
            end,
            [10] = function(player)
                return player:hasCompletedQuest(xi.questLog.OUTLANDS, xi.quest.id.outlands.TWENTY_IN_PIRATE_YEARS)
            end,
            [11] = function(player)
                return player:hasCompletedQuest(xi.questLog.OUTLANDS, xi.quest.id.outlands.I_LL_TAKE_THE_BIG_BOX)
            end,
            [12] = function(player)
                return player:hasCompletedQuest(xi.questLog.OUTLANDS, xi.quest.id.outlands.TRUE_WILL)
            end,
            [13] = function(player)
                return player:hasCompletedQuest(xi.questLog.OUTLANDS, xi.quest.id.outlands.TRUE_WILL)
            end,
            [14] = function(player)
                return player:hasCompletedQuest(xi.questLog.OUTLANDS, xi.quest.id.outlands.TRIAL_BY_WATER)
            end,
            [15] = function(player)
                return player:hasCompletedQuest(xi.questLog.OUTLANDS, xi.quest.id.outlands.THE_POTENTIAL_WITHIN)
            end,
            [16] = function(player)
                return player:hasCompletedQuest(xi.questLog.OUTLANDS, xi.quest.id.outlands.THE_POTENTIAL_WITHIN)
            end,
            [17] = function(player)
                return player:hasCompletedQuest(xi.questLog.OUTLANDS, xi.quest.id.outlands.THE_POTENTIAL_WITHIN)
            end,
            [18] = function(player)
                return player:hasCompletedQuest(xi.questLog.OUTLANDS, xi.quest.id.outlands.THE_POTENTIAL_WITHIN)
            end,
            [19] = function(player)
                return player:hasCompletedQuest(xi.questLog.OUTLANDS, xi.quest.id.outlands.BUGI_SODEN)
            end,
            [20] = function(player)
                return player:hasCompletedQuest(xi.questLog.OUTLANDS, xi.quest.id.outlands.BUGI_SODEN)
            end,
            [21] = function(player)
                return player:hasCompletedQuest(xi.questLog.OUTLANDS, xi.quest.id.outlands.BUGI_SODEN)
            end,
            [22] = function(player)
                return player:hasCompletedQuest(xi.questLog.OUTLANDS, xi.quest.id.outlands.BUGI_SODEN)
            end,
            [23] = function(player)
                return player:hasCompletedQuest(xi.questLog.OUTLANDS, xi.quest.id.outlands.MAMA_MIA)
            end,
            [24] = function(player)
                return player:hasCompletedQuest(xi.questLog.OUTLANDS, xi.quest.id.outlands.MAMA_MIA)
            end,
            [25] = function(player)
                return player:hasCompletedQuest(xi.questLog.OUTLANDS, xi.quest.id.outlands.MAMA_MIA)
            end,
            [26] = function(player)
                return player:hasCompletedQuest(xi.questLog.OUTLANDS, xi.quest.id.outlands.MAMA_MIA)
            end,
            [27] = function(player)
                return player:hasCompletedQuest(xi.questLog.OUTLANDS, xi.quest.id.outlands.AN_UNDYING_PLEDGE)
            end,
            [28] = function(player)
                return player:hasCompletedQuest(xi.questLog.OUTLANDS, xi.quest.id.outlands.AN_UNDYING_PLEDGE)
            end,
            [29] = function(player)
                return player:hasCompletedQuest(xi.questLog.OUTLANDS, xi.quest.id.outlands.AN_UNDYING_PLEDGE)
            end,
        },
        others =
        {
            [1] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.BASTOK, xi.mission.id.bastok.THE_PIRATES_COVE)
            end,
            [2] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.BASTOK, xi.mission.id.bastok.THE_PIRATES_COVE)
            end,
        },
        addons =
        {
            [1] = function(player)
                return player:hasCompletedQuest(xi.questLog.BASTOK, xi.quest.id.bastok.AYAME_AND_KAEDE)
            end,
            [2] = function(player)
                return player:hasCompletedQuest(xi.questLog.WINDURST, xi.quest.id.windurst.TUNING_OUT)
            end,
            [3] = function(player) -- COP: Chasing Dreams
                return placeHolderCheck(player)
            end,
            [4] = function(player) -- COP: Chasing Dreams
                return placeHolderCheck(player)
            end,
            [5] = function(player) -- COP: Chasing Dreams
                return placeHolderCheck(player)
            end,
            [6] = function(player)
                return player:hasCompletedQuest(xi.questLog.JEUNO, xi.quest.id.jeuno.APOCALYPSE_NIGH)
            end,
            [7] = function(player) -- Voidwatch
                return placeHolderCheck(player)
            end,
            [8] = function(player) -- Voidwatch
                return placeHolderCheck(player)
            end,
            [9] = function(player) -- Voidwatch
                return placeHolderCheck(player)
            end,
            [10] = function(player) -- Voidwatch
                return placeHolderCheck(player)
            end,
            [11] = function(player) -- Voidwatch
                return placeHolderCheck(player)
            end,
            [12] = function(player) -- Voidwatch
                return placeHolderCheck(player)
            end,
            [13] = function(player) -- Voidwatch
                return placeHolderCheck(player)
            end,
            [14] = function(player) -- Voidwatch
                return placeHolderCheck(player)
            end,
        },
        extras =
        {
            [1] = function(player) -- ROV
                return placeHolderCheck(player)
            end,
        },
        misc =
        {
            [1] = function(player) -- Empty
                return placeHolderCheck(player)
            end,
        },
    },
    [xi.zone.TAVNAZIAN_SAFEHOLD] =
    {
        missions =
        {
            [1] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.AN_INVITATION_WEST)
            end,
            [2] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.THE_LOST_CITY)
            end,
            [3] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.THE_LOST_CITY)
            end,
            [4] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.DISTANT_BELIEFS)
            end,
            [5] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.AN_ETERNAL_MELODY)
            end,
            [6] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.AN_ETERNAL_MELODY)
            end,
            [7] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.SHELTERING_DOUBT)
            end,
            [8] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.SHELTERING_DOUBT)
            end,
            [9] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.SHELTERING_DOUBT)
            end,
            [10] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.THE_SAVAGE)
            end,
            [11] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.THE_SECRETS_OF_WORSHIP)
            end,
            [12] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.SLANDEROUS_UTTERINGS)
            end,
            [13] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.SLANDEROUS_UTTERINGS)
            end,
            [14] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.THREE_PATHS)
            end,
            [15] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.CHAINS_AND_BONDS)
            end,
            [16] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.CHAINS_AND_BONDS)
            end,
            [17] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.CHAINS_AND_BONDS)
            end,
            [18] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.DAWN)
            end,
        },
        quests =
        {
            [1] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.A_HARD_DAYS_KNIGHT)
            end,
            [2] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.A_HARD_DAYS_KNIGHT)
            end,
            [3] = function(player) -- X Marks the Spot
                return placeHolderCheck(player)
            end,
            [4] = function(player) -- X Marks the Spot
                return placeHolderCheck(player)
            end,
            [5] = function(player) -- X Marks the Spot
                return placeHolderCheck(player)
            end,
            [6] = function(player) -- X Marks the Spot
                return placeHolderCheck(player)
            end,
            [7] = function(player) -- X Marks the Spot
                return placeHolderCheck(player)
            end,
            [8] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.A_BITTER_PAST)
            end,
            [9] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.A_BITTER_PAST)
            end,
            [10] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.A_BITTER_PAST)
            end,
            [11] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.A_BITTER_PAST)
            end,
            [12] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.A_BITTER_PAST)
            end,
            [13] = function(player) -- Go! Go! Gobmuffin!
                return placeHolderCheck(player)
            end,
            [14] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.UNFORGIVEN)
            end,
            [15] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.UNFORGIVEN)
            end,
            [16] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.UNFORGIVEN)
            end,
            [17] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.UNFORGIVEN)
            end,
            [18] = function(player) -- The Big One
                return placeHolderCheck(player)
            end,
            [19] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.THE_CALL_OF_THE_SEA)
            end,
            [20] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.THE_CALL_OF_THE_SEA)
            end,
            [21] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.THE_CALL_OF_THE_SEA)
            end,
            [22] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.THE_CALL_OF_THE_SEA)
            end,
            [23] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.THE_CALL_OF_THE_SEA)
            end,
            [24] = function(player) -- Secrets of Ovens Lost
                return placeHolderCheck(player)
            end,
            [25] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.PETALS_FOR_PARELBRIAUX)
            end,
            [26] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.PETALS_FOR_PARELBRIAUX)
            end,
            [27] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.PETALS_FOR_PARELBRIAUX)
            end,
            [28] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.PETALS_FOR_PARELBRIAUX)
            end,
            [29] = function(player) -- Elderly Pursuits
                return placeHolderCheck(player)
            end,
            [30] = function(player) -- Elderly Pursuits
                return placeHolderCheck(player)
            end,
        },
        others =
        {
            [1] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.BEHIND_THE_SMILE)
            end,
            [2] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.BEHIND_THE_SMILE)
            end,
            [3] = function(player) -- Forbbiden Doors
                return placeHolderCheck(player)
            end,
            [4] = function(player) -- Forbbiden Doors
                return placeHolderCheck(player)
            end,
            [5] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.IN_SEARCH_OF_THE_TRUTH)
            end,
            [6] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.IN_SEARCH_OF_THE_TRUTH)
            end,
            [7] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.IN_SEARCH_OF_THE_TRUTH)
            end,
            [8] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.IN_SEARCH_OF_THE_TRUTH)
            end,
            [9] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.IN_SEARCH_OF_THE_TRUTH)
            end,
            [10] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.IN_SEARCH_OF_THE_TRUTH)
            end,
            [11] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.IN_SEARCH_OF_THE_TRUTH)
            end,
            [12] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.IN_SEARCH_OF_THE_TRUTH)
            end,
            [13] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.IN_SEARCH_OF_THE_TRUTH)
            end,
            [14] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.IN_SEARCH_OF_THE_TRUTH)
            end,
            [15] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.IN_SEARCH_OF_THE_TRUTH)
            end,
            [16] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.IN_SEARCH_OF_THE_TRUTH)
            end,
            [17] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.IN_SEARCH_OF_THE_TRUTH)
            end,
            [18] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.UNINVITED_GUESTS)
            end,
            [19] = function(player)
                return player:hasCompletedQuest(xi.questLog.OTHER_AREAS, xi.quest.id.otherAreas.TANGO_WITH_A_TRACKER)
            end,
        },
        addons =
        {
            [1] = function(player) -- COP: The Search for Goldmane
                return placeHolderCheck(player)
            end,
            [2] = function(player)
                return player:hasKeyItem(xi.keyItem.VIAL_OF_SHROUDED_SAND)
            end,
            [3] = function(player)
                return player:hasKeyItem(xi.keyItem.DYNAMIS_BUBURIMU_SLIVER)
            end,
            [4] = function(player)
                return player:hasKeyItem(xi.keyItem.DYNAMIS_VALKURM_SLIVER)
            end,
            [5] = function(player)
                return player:hasKeyItem(xi.keyItem.DYNAMIS_QUFIM_SLIVER)
            end,
            [6] = function(player)
                return player:hasTitle(xi.title.DYNAMIS_TAVNAZIA_INTERLOPER)
            end,
            [7] = function(player) -- Voidwatch
                return placeHolderCheck(player)
            end,
            [8] = function(player) -- Voidwatch
                return placeHolderCheck(player)
            end,
            [9] = function(player) -- Voidwatch
                return placeHolderCheck(player)
            end,
            [10] = function(player) -- Voidwatch
                return placeHolderCheck(player)
            end,
            [11] = function(player) -- Voidwatch
                return placeHolderCheck(player)
            end,
            [12] = function(player) -- Voidwatch
                return placeHolderCheck(player)
            end,
            [13] = function(player) -- Voidwatch
                return placeHolderCheck(player)
            end,
            [14] = function(player) -- Voidwatch
                return placeHolderCheck(player)
            end,
            [15] = function(player) -- Trust
                return placeHolderCheck(player)
            end,
        },
        extras =
        {
            [1] = function(player) -- Trust
                return placeHolderCheck(player)
            end,
        },
        misc =
        {
            [1] = function(player) -- Trust
                return placeHolderCheck(player)
            end,
        },
    },
    [xi.zone.SEALIONS_DEN] =
    {
        missions =
        {
            [1] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.SLANDEROUS_UTTERINGS)
            end,
            [2] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.ONE_TO_BE_FEARED)
            end,
            [3] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.ONE_TO_BE_FEARED)
            end,
            [4] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.ONE_TO_BE_FEARED)
            end,
            [5] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.ONE_TO_BE_FEARED)
            end,
            [6] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.ONE_TO_BE_FEARED)
            end,
            [7] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.ONE_TO_BE_FEARED)
            end,
            [8] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.CHAINS_AND_BONDS)
            end,
            [9] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.FLAMES_IN_THE_DARKNESS)
            end,
            [10] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.CALM_BEFORE_THE_STORM)
            end,
            [11] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.THE_WARRIORS_PATH)
            end,
            [12] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.THE_WARRIORS_PATH)
            end,
            [13] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.GARDEN_OF_ANTIQUITY)
            end,
        },
        quests =
        {
            [1] = function(player)
                return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.THE_LAST_VERSE)
            end,
        },
        others =
        {
            [1] = function(player) -- Empty
                return placeHolderCheck(player)
            end,
        },
        addons =
        {
            [1] = function(player) -- Empty
                return placeHolderCheck(player)
            end,
        },
        extras =
        {
            [1] = function(player) -- Empty
                return placeHolderCheck(player)
            end,
        },
        misc =
        {
            [1] = function(player) -- Empty
                return placeHolderCheck(player)
            end,
        },
    },
}

local cutscene =
{
    [xi.zone.PORT_SAN_DORIA] =
    {
        [33] = { 502 },
        [34] = { 18 },
        [35] = { 17 },
        [36] = { 7 },
        [37] = { 15 },
        [38] = { 19 },
        [39] = { 22 },
        [40] = { 527 },
        [41] = { 530 },
        [42] = { 725 },
        [65] = { 745 },
        [97] = { 724 },
        [98] = { 4 },
    },
    [xi.zone.NORTHERN_SAN_DORIA] =
    {
        [1] = { 693 },
        [2] = { 694 },
        [3] = { 695 },
        [4] = { 7 },
        [5] = { 9 },
        [6] = { 16 },
        [7] = { 1 },
        [8] = { 0 },
        [9] = { 50 },
        [33] = { 581 },
        [34] = { 536 },
        [35] = { 582 },
        [36] = { 546 },
        [65] = { 531 },
        [66] = { 524 },
        [67] = { 589 },
        [68] = { 508 },
        [69] = { 509 },
        [70] = { 61 },
        [71] = { 41 },
        [72] = { 15 },
        [73] = { 562 },
        [74] = { 37 },
        [75] = { 49 },
        [76] = { 65 },
        [77] = { 62 },
        [78] = { 73 },
        [79] = { 70 },
        [80] = { 67 },
        [81] = { 65535 },
        [82] = { 683 },
        [83] = { 688 },
        [84] = { 692 },
        [97] = { 709 },
        [98] = {  },
        [99] = {  },
        [129] = {  },
        [130] = {  },
        [131] = {  },
        [132] = {  },
        [133] = {  },
    },
    [xi.zone.SOUTHERN_SAN_DORIA] =
    {

    },
    [xi.zone.CHATEAU_DORAGUILLE] =
    {

    },
    [xi.zone.PORT_BASTOK] =
    {

    },
    [xi.zone.BASTOK_MINES] =
    {
        [1] = { 1009 },
        [2] = { 1010 },
        [3] = { 180 },
        [4] = { 182 },
        [5] = { 177 },
        [6] = { 176 },
        [33] = { 44 },
        [34] = { 45 },
        [35] = { 90 },
        [36] = { 91 },
        [37] = { 93 },
        [38] = { 94 },
        [39] = { 96 },
        [40] = { 99 },
        [41] = { 151 },
        [42] = { 161 },
        [43] = { 162 },
        [44] = { 164 },
        [45] = { 171 },
        [46] = { 172 },
        [47] = { 1009 },
        [48] = { 190 },
        [49] = { 193 },
        [50] = { 194 },
        [51] = { 238 },
        [52] = { 239 },
        [53] = { 241 },
        [54] = { 587 },
        [55] = { 588 },
        [56] = { 591 },
        [57] = { 593 },
        [65] = { 502 },
        [66] = { 186 },
        [67] = { 203 },
        [68] = { 209 },
        [69] = { 215 },
        [70] = { 245 },
        [71] = { 247 },
        [72] = { 519 },
        [73] = { 524 },
        [97] = { 30024 },
    },
    [xi.zone.BASTOK_MARKETS] = -- ported mostly from existing work within NPC lua. May need to be verified
    {
        [1] = { 1008 },
        [2] = { 1010 },
        [33] = { 243 },
        [34] = { 322 },
        [35] = { 329 },
        [36] = { 332 },
        [37] = { 334 },
        [38] = { 361 },
        [39] = { 441 },
        [40] = { 411 },
        [41] = { 475 },
        [42] = { 477 },
        [43] = { 479 },
        [44] = { 481 },
        [45] = { 483 },
        [46] = { 485 },
        [65] = { 342 },
        [66] = { 402 },
        [67] = { 403 },
        [68] = { 404 },
        [69] = { 405 },
        [70] = { 406 },
        [71] = { 434 },
        [72] = { 437 },
        [73] = { 439 },
        [74] = { 490 },
        [75] = { 492},
        [76] = { 497 },
        [77] = { 18 },
        [78] = { 12 },
        [79] = { 0 },
        [80] = { 0 },
        [81] = { 0 },
        [82] = { 0 },
        [83] = { 0 },
        [129] = { 0 },
    },
    [xi.zone.METALWORKS] =
    {

    },
    [xi.zone.PORT_WINDURST] =
    {

    },
    [xi.zone.WINDURST_WATERS] =
    {

    },
    [xi.zone.WINDURST_WOODS] =
    {

    },
    [xi.zone.WINDURST_WALLS] =
    {

    },
    [xi.zone.HEAVENS_TOWER] =
    {

    },
    [xi.zone.PORT_JEUNO] =
    {

    },
    [xi.zone.LOWER_JEUNO] =
    {

    },
    [xi.zone.UPPER_JEUNO] =
    {

    },
    [xi.zone.RULUDE_GARDENS] =
    {

    },
    [xi.zone.SELBINA] =
    {

    },
    [xi.zone.MHAURA] =
    {

    },
    [xi.zone.KAZHAM] =
    {

    },
    [xi.zone.NORG] =
    {

    },
    [xi.zone.RABAO] =
    {

    },
    [xi.zone.TAVNAZIAN_SAFEHOLD] =
    {
        [1] = { 101 },
        [2] = { 102 },
        [3] = ( 103 ),
        [4] = ( 113 ),
        [5] = ( 104 ),
        [6] = ( 105 ),
        [7] = ( 107 ),
        [8] = ( 108 ),
        [9] = ( 109 ),
        [10] = ( 110 ),
        [11] = ( 111 ),
        [12] = ( 112),
        [13] = ( 117 ),
        [14] = ( 118 ),
        [15] = ( 114 ),
        [16] = ( 115 ),
        [17] = ( 116 ),
        [18] = ( 543 ),
        [33] = { 119 },
        [34] = { 121 },
        [35] = { 139 },
        [36] = { 140 },
        [37] = { 141 },
        [38] = { 142 },
        [39] = { 143 },
        [40] = { 151 },
        [41] = { 152 },
        [42] = { 153 },
        [43] = { 154 },
        [44] = { 155 },
        [45] = { 232 },
        [46] = { 200 },
        [47] = { 202 },
        [48] = { 204 },
        [49] = { 206 },
        [50] = { 210 },
        -- [51] = { 0 }, -- Secrets of Ovens Lost (Not found)
        [52] = { 512 },
        [53] = { 513 },
        [54] = { 514 },
        [55] = { 516 },
        -- [56] = { 143 }, -- Elderly Pursuits
        -- [57] = { 143 }, -- Elderly Pursuits
        [58] = { 143 },
        [59] = { 143 },
        [60] = { 143 },
        [61] = { 143 },
        [62] = { 143 },
    },
    [xi.zone.SEALIONS_DEN] =
    {
        [1] = { 13 },
        [2] = { 15 },
        [3] = { 31 },
        [4] = { 0 },
        [5] = { 1 },
        [6] = { 2 },
        [7] = { 33 },
        [8] = { 14 },
        [9] = { 16 },
        [10] = { 17 },
        [11] = { 32 },
        [12] = { 34 },
        [13] = { 18 },
        [33] = ( 29 ),
    },
}

function xi.melody_minstrels.rewatch(player, npcType)
    local zone = player:getZoneID()
    local gil = player:getGil()
    local options = {}

    for i, type in pairs(csReq[zone]) do
        local option = 1
        for y, check in pairs(type) do
            if check(player) then
                option = bit.bor(option, bit.lshift(1,y))
            end
        end
        options[tostring(i)] = bit.bnot(option)
    end

    if npcType ~= 0 then
        player:startEvent(npcCS.additional[zone], options.missions, options.quests, options.others, options.addons, options.extras, options.misc, 100, gil)
    else
        player:startEvent(npcCS.standard[zone], options.missions, options.quests, options.others, options.addons, options.extras, options.misc, 100, gil)
    end

end

function xi.melody_minstrels.startEvent(player, csid, option, npcType)
    local zone = player:getZoneID()
    if npcType ~= 0 then
        if csid == npcCS.additional[zone] and cutscene[zone][option] ~= nil then
            player:delGil(100)
            player:startEvent(unpack(cutscene[zone][option]))
            return
        end
    else
        if csid == npcCS.standard[zone] and cutscene[zone][option] ~= nil then
            player:delGil(100)
            player:startEvent(unpack(cutscene[zone][option]))
            return
        end
    end
end
