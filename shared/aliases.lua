-- :: REE Emotes
--  : Generates a list of aliases for players to use emotes easier
--

EmoteAliases        = {}
local _EmoteAliases = {
    BINOCULARS              = { "binoculars", "peep" },
    BUM_FREEWAY             = { "homeless", "homeless_freeway", "homeless1" },
    BUM_SLUMPED             = { "bumslump", "homeless_slumped", "homeless2" },
    BUM_STANDING            = { "bumstand", "homeless_stand", "homeless3" },
    BUM_WASH                = { "wash", "bumwash", "homeless_wash", "homeless4" },
    CAR_ATTENDANT           = { "traffic", "traffic_cop", "parking_attendant" },
    CHEERING                = { "cheer", "cheer1", "cheering", "excited" },
    COFFEE                  = { "coffee" },
    COP_IDLE                = { "cop", "cop_idle" },
    CLIPBOARD               = { "clipboard" },
    CONSTRUCTION_DRILL      = { "jackhammer", "const_worker", "const_drill" },
    DRUG_DEALER             = { "dealer", "dealer1", "drug_dealer" },
    DRUG_DEALER_HARD        = { "harddealer", "dealer2", "drug_dealer_hard" },
    FILM_SHOCKING           = { "film", "filmphone", "film_shocking" },
    FISHING                 = { "fish", "fishing" },
    GARDENER_LEAF_BLOWER    = { "leaf_blower", "gardener1" },
    GARDENER_PLANTING       = { "plant", "planting", "gardener2" },
    GOLFING                 = { "golf", "golfing" },
    GUARD_PATROL            = { "guard", "guard_patrol", "guard1" },
    GUARD_STAND             = { "guardstand", "guard_stand", "guard2" },
    GUARD_STAND_ARMY        = { "armyguard", "guard_army", "guard3" },
    HAMMERING               = { "hammer", "hammering", "const_worker2" },
    HANG_OUT_STREET         = { "hang_out", "hangout", "hangout1" },
    HIKER                   = { "hike", "hiker" },
    -- dab, very important (blap blap)
    HUMAN_STATUE            = { "dab", "statue", "human_statue" },
    STAND_IMPATIENT         = { "impatient", "stand_impatient" },
    STAND_IMPATIENT_UPRIGHT = { "impatient2", "stand_impatient_upright" },
    JANITOR                 = { "janitor", "sweep", "sweeping" },
    LEANING                 = { "lean", "leaning" },
    MAID_CLEAN              = { "maid", "clean", "cleaning" },
    MECHANIC                = { "mechanic" },
    MEDIC_KNEEL             = { "medic", "medic1", "medic_kneel" },
    MEDIC_TEND              = { "medic2", "medicdead", "medic_tend" },
    MUSCLE_FLEX             = { "flex", "flexing", "muscle1" },
    MUSCLE_WEIGHTS          = { "weights", "freeweights", "lifting", "lift" },
    MUSICIAN                = { "musician", "guitar", "music" },
    PAPARAZZI               = { "paparazzi", "press", "camera" },
    PICNIC                  = { "picnic", "sit" },
    PARTY                   = { "party", "drink", "drinking" },
    HIGH_CLASS_PROSTITUTE   = { "classy_hoe", "prostitute", "prostitute1", "hoe", "hoe1" },
    LOW_CLASS_PROSTITUTE    = { "trashy_hoe", "prostitute2", "hoe2" },
    NOTEPAD                 = { "notepad", "note" },
    PUSH_UPS                = { "pushups", "pushup" },
    SIT_LEDGE               = { "sit1", "sitledge", "sit_ledge" },
    SIT_EATING              = { "sit2", "siteating", "sit_eating" },
    SIT_STEPS               = { "sit3", "sitsteps", "sit_steps" },
    SIT_WALL                = { "sit4", "sitwall", "sit_wall" },
    SIT_WALL_EATING         = { "sit5", "sitwalleating", "sit_wall_eating" },
    SIT_WALL_TABLET         = { "sit6", "sittablet", "sit_tablet" },
    SECURITY_SEARCH         = { "security", "securityguard", "security_guard", "guard", "guard_search" },
    SIT_UPS                 = { "situps", "situp", "sit_ups" },
    STAND_MOBILE            = { "phone", "idlephone", "idle_phone", "phone_standing" },
    STAND_MOBILE_UPRIGHT    = { "phone2", "idlephone2", "idle_phone2", "idle_phone_standing_upright" },
    SMOKE                   = { "smoke", "smoking", "cigarette" },
    STANDING_JOG            = { "jog", "jogging", "standingjog", "standing_jog" },
    STUPOR                  = { "stupor", "dazed", "sittingup", "sitting_up" },
    SUNBATHE                = { "sunbathe", "sunbathe1" },
    SUNBATHE_BACK           = { "sunbathe2", "sunbathe_back" },
    SUPERHERO               = { "superhero" },
    SWIM                    = { "swim", "swimming", "paddle" },
    TENNIS                  = { "tennis" },
    TOURIST_MAP             = { "map", "tourist", "tourist1", "touristmap", "tourist_map" },
    TOURIST_PHONE           = { "tourist2", "touristphone", "tourist_phone" },
    WARM_HANDS              = { "warmhands", "warmup", "bumwarmhands", "warm_hands", "bum_warm_hands" },
    WATCH_STRIPPER          = { "watchstripper", "cheer2", "watch_stripper" },
    WEED                    = { "weed" },
    WELD                    = { "weld", "welding", "safecrack" },
    WINDOW_BROWSE           = { "windowshop", "windowshopping", "browse", "browsing" },
    YOGA                    = { "yoga", "stretch" },
}

-- iterate through the aliases and save them in a table
for emoteKey, aliases in pairs(_EmoteAliases) do
    for _, alias in ipairs(aliases) do
        EmoteAliases[alias] = emoteKey
    end
end

-- clean up and let this be GC'd
_EmoteAliases = nil
