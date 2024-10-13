macro dinstance
    db \1                           ; species
    dw \2                           ; experience
    db \3                           ; wildness
    db \4                           ; level
    dw \5                           ; max HP
    dw \6                           ; max MP
    dw \7                           ; ATK
    dw \8                           ; DEF
    dw \9                           ; AGI
    dw \<10>                        ; INT
    db \<11>, \<12>, \<13>, \<14>   ; personality
    db \<15>, \<16>, \<17>          ; skills
    db \<18>                        ; sex
endm

gMonsterInfo::
    dinstance $00,                    0, 0,  0,    0,   0,   0,   0,   0,   0, $00, $00, $00, $00, SKILL_NONE,      SKILL_NONE,      SKILL_NONE,      $FF
    ; Slib
    dinstance MONSTER_SLIME,          0, 0,  1,   30,   0,  10,   6,   5,   1, $64, $C8, $64, $C8, SKILL_NONE,      SKILL_NONE,      SKILL_NONE,      $FF
    ; Beginning Gate encounters
    dinstance MONSTER_SLIME,          3, 2,  1,    8,   0,   8,   5,   7,   1, $C8, $32, $64, $C8, SKILL_NONE,      SKILL_NONE,      SKILL_NONE,      $FF
    dinstance MONSTER_ANTEATER,       9, 1,  1,   12,   0,  19,   4,   4,   3, $96, $00, $32, $C8, SKILL_NONE,      SKILL_NONE,      SKILL_NONE,      $FF
    dinstance MONSTER_DRACKY,         4, 1,  1,    8,  20,  12,   4,  12,  14, $C8, $00, $00, $C8, SKILL_ANTIDOTE,  SKILL_NONE,      SKILL_NONE,      $FF
    ; miscellaneous encounters
    dinstance MONSTER_STUBSUCK,       9, 2,  2,   20,   6,  23,   8,  12,  10, $64, $32, $C8, $C8, SKILL_SLEEP,     SKILL_NONE,      SKILL_NONE,      $FF
    dinstance MONSTER_GOHOPPER,      10, 2,  2,   24,   2,  18,   6,  10,   8, $64, $32, $00, $C8, SKILL_CHARGEUP,  SKILL_NONE,      SKILL_NONE,      $FF
    dinstance MONSTER_GREMLIN,       10, 2,  2,   26,   9,  14,   9,   9,  28, $32, $96, $C8, $C8, SKILL_FIREBAL,   SKILL_HEAL,      SKILL_NONE,      $FF
    dinstance MONSTER_SPOOKY,        18, 3,  3,   37,   3,  25,   9,  31,  13, $C8, $64, $C8, $C8, SKILL_LUSHLICKS, SKILL_NONE,      SKILL_NONE,      $FF
    dinstance MONSTER_GOOPI,         16, 3,  5,   41,   3,  28,   8,   8,   6, $96, $32, $96, $C8, SKILL_LEGSWEEP,  SKILL_NONE,      SKILL_NONE,      $FF
    dinstance MONSTER_ARMYANT,       12, 2,  3,   24,   3,  29,   9,  11,  13, $FA, $32, $00, $C8, SKILL_NAPATTACK, SKILL_NONE,      SKILL_NONE,      $FF
    ; Beginning Gate boss
    ; (bosses come in pairs; the version you fight and the version the game gives the player)
    dinstance MONSTER_HEALER,         0, 0,  6,   40,   7,  20,  12,  12,  28, $64, $FA, $64, $C8, SKILL_HEAL,      SKILL_NONE,      SKILL_NONE,      $FF
    dinstance MONSTER_HEALER,         0, 0,  6,   30,  18,  16,  10,  32,  28, $64, $FA, $C8, $C8, SKILL_HEAL,      SKILL_NONE,      SKILL_NONE,      $FF
    ; miscellaneous encounters
    dinstance MONSTER_MINIDRAK,      32, 3,  4,   45,   5,  32,  10,  18,   6, $96, $64, $96, $96, SKILL_SANDSTORM, SKILL_NONE,      SKILL_NONE,      $FF
    dinstance MONSTER_PICKY,         25, 2,  4,   32,   6,  30,  12,  26,  12, $C8, $64, $96, $96, SKILL_SAP,       SKILL_NONE,      SKILL_NONE,      $FF
    dinstance MONSTER_PILLOWRAT,     27, 3,  4,   29,  12,  26,  12,  30,  13, $64, $32, $64, $96, SKILL_SIDESTEP,  SKILL_NONE,      SKILL_NONE,      $FF
    dinstance MONSTER_HORK,          45, 3,  5,   51,   6,  35,  10,  10,  10, $96, $32, $32, $96, SKILL_POISONGAS, SKILL_LUSHLICKS, SKILL_NONE,      $FF
    dinstance MONSTER_DRAGONKID,     55, 3,  6,   32,   7,  32,  20,  35,  11, $96, $64, $64, $96, SKILL_SLEEPAIR,  SKILL_DODGE,     SKILL_NONE,      $FF
    dinstance MONSTER_EVILSEED,      50, 2,  7,   43,   5,  29,  25,  15,  28, $C8, $00, $FA, $96, SKILL_CLEANCUT,  SKILL_PARALYZE,  SKILL_NONE,      $FF
    dinstance MONSTER_CATAPILA,      64, 3,  8,   38,  16,  44,  29,  12,  10, $C8, $32, $64, $96, SKILL_UPPER,     SKILL_NONE,      SKILL_NONE,      $FF
    dinstance MONSTER_FAIRYRAT,      55, 2,  6,   48,  18,  32,  14,  40,  30, $64, $32, $C8, $96, SKILL_SLOW,      SKILL_SMASHLIME, SKILL_NONE,      $FF
    dinstance MONSTER_BIGROOST,      67, 2,  8,   48,  18,  28,  16,  42,   9, $C8, $96, $96, $96, SKILL_SANDSTORM, SKILL_DODGE,     SKILL_NONE,      $FF
    dinstance MONSTER_DEMONITE,      65, 2,  7,   41,   3,  34,  14,  40,  19, $64, $64, $FA, $96, SKILL_BLAZEMORE, SKILL_NONE,      SKILL_NONE,      $FF
    dinstance MONSTER_BONESLAVE,     67, 3,  7,   53,  20,  53,  15,  24,  45, $32, $00, $00, $96, SKILL_BOLTSLASH, SKILL_BIRDBLOW,  SKILL_NONE,      $FF
    dinstance MONSTER_SABREMAN,      64, 2,  7,   45,  20,  60,  24,  26,  42, $FA, $00, $64, $96, SKILL_ROBMAGIC,  SKILL_DEVILCUT,  SKILL_NONE,      $FF
    dinstance MONSTER_SPOTSLIME,     72, 2,  8,   48,  11,  39,  14,  50,  11, $64, $64, $64, $96, SKILL_CALLHELP,  SKILL_LUSHLICKS, SKILL_NONE,      $FF
    dinstance MONSTER_CRESTPENT,     73, 2,  8,   62,   8,  32,  33,  15,   9, $C8, $64, $32, $96, SKILL_STOPSPELL, SKILL_POISONHIT, SKILL_NONE,      $FF
    dinstance MONSTER_BEANMAN,       90, 2,  8,   61,  11,  40,  34,  30,  10, $FA, $00, $C8, $96, SKILL_ROBMAGIC,  SKILL_TWINHITS,  SKILL_NONE,      $FF
    dinstance MONSTER_1EYECLOWN,     81, 2,  9,   54,  14,  42,  20,  38,  30, $C8, $00, $FA, $96, SKILL_BLAZEMORE, SKILL_NONE,      SKILL_NONE,      $FF
    dinstance MONSTER_COILBIRD,      78, 3,  9,   66,  30,  34,  22,  52,  17, $64, $C8, $64, $96, SKILL_NUMBOFF,   SKILL_DECHAOS,   SKILL_NONE,      $FF
    dinstance MONSTER_METALY,      3365, 6, 10,    6, 120,  22, 300, 130,  32, $64, $64, $64, $96, SKILL_BLAZE,     $DB,             SKILL_NONE,      $FF
    ; Villager Gate boss
    dinstance MONSTER_DRAGON,         0, 0,  6,   90,  60,  40,  25,  15,  10, $FA, $32, $00, $96, SKILL_FIRESLASH, SKILL_FIREAIR,   SKILL_NONE,      $FF
;   dinstance MONSTER_DRAGON,         0, 0,  6,   60,  20,  40,  25,  20,  30, $FA, $32, $00, $FA, SKILL_FIRESLASH, SKILL_FIREAIR,   SKILL_NONE,      $FF   ; player copy is at the bottom
    ; Talisman Gate boss
    dinstance MONSTER_GOLEM,          0, 0,  7,  100,  20,  45,  20,  20,  70, $96, $96, $96, $96, SKILL_CHARGEUP,  SKILL_PSYCHEUP,  SKILL_STRONGD,   $FF
;   dinstance MONSTER_GOLEM,          0, 0,  7,   80,  20,  45,  35,  15,  70, $96, $96, $96, $C8, SKILL_CHARGEUP,  SKILL_PSYCHEUP,  SKILL_STRONGD,   $FF   ; player copy is at the bottom
    ; miscellaneous encounters
    dinstance MONSTER_ALMIRAJ,      130, 3, 10,   57,  46,  48,  25,  50,  15, $96, $32, $64, $64, SKILL_SLEEP,     SKILL_BESERKER,  SKILL_CHARGEUP,  $FF
    dinstance MONSTER_BULLBIRD,     144, 3, 12,   72,  17,  64,  21,  57,  10, $C8, $32, $C8, $64, SKILL_RAMMING,   SKILL_CHARGEUP,  SKILL_BRANCHING, $FF
    dinstance MONSTER_FLORAMAN,     121, 3, 12,   68,  80,  30,  26,  39,  65, $64, $96, $FA, $64, SKILL_FIREBANE,  SKILL_ANTIDOTE,  SKILL_CURSEOFF,  $FF
    dinstance MONSTER_GIANTWORM,    126, 3, 12,   62,  20,  59,  24,  45,  40, $FA, $00, $C8, $64, SKILL_BEASTCUT,  SKILL_ODDDANCE,  SKILL_NONE,      $FF
    dinstance MONSTER_SKULRIDER,    175, 3, 11,   80,  20,  63,  45,  42,  19, $96, $00, $64, $64, SKILL_FIRESLASH, SKILL_RAINSLASH, SKILL_LEGSWEEP,  $FF
    dinstance MONSTER_GIANTSLUG,    132, 2, 12,   60,  18,  51,  25,  43,  21, $64, $C8, $C8, $64, SKILL_LUSHLICKS, SKILL_DODGE,     SKILL_NONE,      $FF
    dinstance MONSTER_MUDDOLL,      144, 3, 12,   79,  44,  56,  28,  22,  44, $96, $64, $C8, $64, SKILL_ODDDANCE,  SKILL_SIDESTEP,  SKILL_NONE,      $FF
    dinstance MONSTER_TREESLIME,    151, 3, 12,   86,  22,  44,  28,  69,  46, $64, $32, $C8, $64, SKILL_SAP,       SKILL_PARALYZE,  SKILL_SLEEPAIR,  $FF
    dinstance MONSTER_POISONGON,    150, 3, 12,   65,  43,  59,  50,  26,  23, $96, $64, $64, $64, SKILL_POISONHIT, SKILL_POISONGAS, SKILL_NONE,      $FF
    dinstance MONSTER_CATFLY,       146, 2, 13,   67,  46,  56,  26,  67,  49, $96, $32, $96, $64, SKILL_STOPSPELL, SKILL_SLOW,      SKILL_NONE,      $FF
    dinstance MONSTER_WINGTREE,     160, 3, 13,   69,  60,  67,  30,  52,  40, $C8, $64, $C8, $64, SKILL_FAREWELL,  SKILL_ZOMBIECUT, SKILL_NONE,      $FF
    dinstance MONSTER_EYEDER,       156, 3, 16,   54,  15,  70,  90,  85,  50, $32, $96, $C8, $64, SKILL_FIREBAL,   SKILL_HEAL,      SKILL_NONE,      $FF
    dinstance MONSTER_PUTREPUP,     145, 3, 14,   84,  52,  76,  35,  30,  26, $C8, $00, $C8, $64, SKILL_SAP,       SKILL_SLOW,      SKILL_NONE,      $FF
    dinstance MONSTER_DRAKSLIME,    153, 3, 14,   75,  26,  58,  32,  96,  52, $96, $64, $C8, $64, SKILL_SUCKAIR,   SKILL_BLAZEAIR,  SKILL_NONE,      $FF
    dinstance MONSTER_FAIRYDRAK,    168, 3, 14,   66,  51,  53,  33,  51,  27, $96, $64, $96, $64, SKILL_SURROUND,  SKILL_SLEEPAIR,  SKILL_NONE,      $FF
    dinstance MONSTER_SKULLROO,     170, 3, 15,   95,  24,  79,  31,  57,  55, $32, $32, $32, $64, SKILL_CHARGEUP,  SKILL_PANIDANCE, SKILL_NONE,      $FF
    dinstance MONSTER_BUTTERFLY,    176, 2, 15,   68,  57,  59,  36,  78,  28, $C8, $00, $96, $64, SKILL_SURROUND,  SKILL_CURSE,     SKILL_NONE,      $FF
    dinstance MONSTER_MADRAVEN,     190, 3, 17,   73,  55,  67,  49,  80,  85, $C8, $32, $96, $64, SKILL_HIGHJUMP,  SKILL_TAILWIND,  SKILL_NONE,      $FF
    ; Memories Gate boss
    dinstance MONSTER_MADCAT,         0, 0, 12,  200,  30,  63,  35,  63,  35, $FA, $00, $C8, $64, SKILL_VACUSLASH, SKILL_SQUALLHIT, SKILL_LEGSWEEP,  $FF
    dinstance MONSTER_MADCAT,         0, 0, 12,   80,  30,  63,  50,  63,  35, $FA, $FA, $C8, $64, SKILL_VACUSLASH, SKILL_SQUALLHIT, SKILL_LEGSWEEP,  $FF
    ; Bewilder Gate boss
    dinstance MONSTER_FACETREE,       0, 0, 12,  400, 100,  60,  30,  38,  55, $C8, $32, $C8, $64, SKILL_STOPSPELL, SKILL_CURSE,     SKILL_ODDDANCE,  $FF
    dinstance MONSTER_FACETREE,       0, 0, 12,  100, 100,  45,  50,  38,  55, $64, $96, $C8, $64, SKILL_STOPSPELL, SKILL_CURSE,     SKILL_ODDDANCE,  $FF
    ; Bazaar Gate boss
    dinstance MONSTER_MADKNIGHT,      0, 0, 12,  300,  60,  77,  60,  40,  50, $FA, $00, $C8, $64, SKILL_MASSACRE,  SKILL_BEASTCUT,  SKILL_NONE,      $FF
    dinstance MONSTER_MADKNIGHT,      0, 0, 12,   85,  60,  77,  75,  40,  50, $FA, $00, $C8, $32, SKILL_MASSACRE,  SKILL_BEASTCUT,  SKILL_NONE,      $FF
    ; miscellaneous encounters
    dinstance MONSTER_MUDRON,       284, 3, 16,   78,  40,  58,  46,  34,  70, $32, $C8, $FA, $32, SKILL_BEAT,      SKILL_HEAL,      SKILL_NONE,      $FF
    dinstance MONSTER_FACER,        282, 3, 16,   64, 113,  49,  34,  95, 110, $96, $32, $64, $32, SKILL_INFERMORE, SKILL_LIFESONG,  SKILL_NONE,      $FF
    dinstance MONSTER_SNAILY,       290, 2, 16,   67,  30,  65, 115, 110,  60, $FA, $FA, $32, $32, SKILL_ICEBOLT,   SKILL_CALLHELP,  SKILL_NONE,      $FF
    dinstance MONSTER_SACCER,       246, 3, 17,   95,  61,  88, 129,  35,  62, $96, $32, $96, $32, SKILL_UPPER,     SKILL_PSYCHEUP,  SKILL_NONE,      $FF
    dinstance MONSTER_MADPECKER,    322, 3, 22,   68,  32, 126,  70, 122,  61, $FA, $00, $96, $32, SKILL_INFERMORE, SKILL_SAP,       SKILL_NONE,      $FF
    dinstance MONSTER_GULPPLE,      288, 3, 17,   96,  82,  75, 100,  66,  74, $C8, $64, $96, $32, SKILL_INFERMORE, SKILL_NAPATTACK, SKILL_NONE,      $FF
    dinstance MONSTER_EYEBALL,      320, 3, 18,   98,  67,  76,  72,  69,  68, $C8, $32, $FA, $32, SKILL_MAGICBACK, SKILL_WARCRY,    SKILL_NONE,      $FF
    dinstance MONSTER_MUMMY,        342, 3, 18,  130,  68,  77,  55,  42,  38, $C8, $32, $96, $32, SKILL_EVILSLASH, SKILL_CALLHELP,  SKILL_PARALYZE,  $FF
    dinstance MONSTER_BABBLE,       312, 3, 18,   82,  35,  80,  44, 120,  60, $96, $64, $96, $32, SKILL_SURROUND,  SKILL_POISONHIT, SKILL_NONE,      $FF
    dinstance MONSTER_PTERANOD,     406, 3, 19,  140,  40, 103,  70, 123,  80, $C8, $64, $96, $32, SKILL_FIREBAL,   SKILL_WINDBEAST, SKILL_TAILWIND,  $FF
    dinstance MONSTER_TONGUELLA,    356, 3, 19,  108,  62,  90,  61,  45,  40, $FA, $32, $C8, $32, SKILL_NAPATTACK, SKILL_LUSHLICKS, SKILL_NONE,      $FF
    dinstance MONSTER_FLORAJAY,     259, 3, 19,   75,  86,  65,  42, 142, 120, $C8, $96, $96, $32, SKILL_SPEEDUP,   SKILL_BEASTCUT,  SKILL_LIFESONG,  $FF
    dinstance MONSTER_MADPLANT,     374, 3, 20,  116, 140,  72,  50, 135,  91, $FA, $64, $FA, $32, SKILL_SAP,       SKILL_SLOW,      SKILL_NUMBOFF,   $FF
    dinstance MONSTER_ARMORPEDE,    450, 4, 24,  125,  37, 119, 127,  50,  68, $FA, $32, $C8, $32, SKILL_UPPER,     SKILL_TWINHITS,  SKILL_TWINSLASH, $FF
    dinstance MONSTER_MEDUSAEYE,    305, 4, 18,   82,  68,  66,  96,  88,  64, $64, $32, $64, $32, SKILL_SURROUND,  SKILL_SAP,       SKILL_BRANCHING, $FF
    dinstance MONSTER_MADCANDLE,    522, 3, 21,   95,  38, 100, 135,  91,  67, $C8, $64, $96, $32, SKILL_BLAZEMORE, SKILL_PSYCHEUP,  SKILL_NONE,      $FF
    dinstance MONSTER_WINGSLIME,    358, 4, 21,   76,  68,  66,  44, 150,  68, $64, $32, $64, $32, SKILL_SQUALLHIT, SKILL_WINDBEAST, SKILL_TAILWIND,  $FF
    dinstance MONSTER_MADGOPHER,    410, 3, 21,  106,  68,  97,  45,  54,  48, $FA, $96, $C8, $32, SKILL_CHARGEUP,  SKILL_BIRDBLOW,  SKILL_ZOMBIECUT, $FF
    ; Peace Gate boss
    dinstance MONSTER_FANGSLIME,      0, 0, 20,  400,  40,  87,  50,  80,  65, $C8, $64, $96, $00, SKILL_CHARGEUP,  SKILL_CALLHELP,  SKILL_WARCRY,    $FF
    dinstance MONSTER_FANGSLIME,      0, 0, 20,   70,  40,  85,  52,  90,  65, $C8, $C8, $C8, $32, SKILL_CHARGEUP,  SKILL_CALLHELP,  SKILL_WARCRY,    $FF
    ; Bravery Gate boss
    ; (interestingly, all gate bosses have a player copy even when they don't join you)
    dinstance MONSTER_BIGEYE,      1500, 7, 20,  500,  40,  80,  40,  62,  80, $96, $96, $96, $32, SKILL_SNOWSTORM, SKILL_HEAL,      SKILL_ICEAIR,    $FF
    dinstance MONSTER_BIGEYE,         0, 0, 20,   80,  57,  80,  48,  62,  80, $96, $C8, $64, $32, SKILL_SNOWSTORM, SKILL_HEAL,      SKILL_ICEAIR,    $FF
    ; Well Gate boss
    dinstance MONSTER_GIGANTES,    1700, 6, 14,  600,  10, 130,  30,  68,  15, $FA, $FA, $FA, $32, SKILL_EVILSLASH, SKILL_CHARGEUP,  SKILL_ZOMBIECUT, $FF
    dinstance MONSTER_GIGANTES,       0, 0, 14,  150,  10, 130,  46,  48,  15, $FA, $FA, $FA, $32, SKILL_EVILSLASH, SKILL_CHARGEUP,  SKILL_ZOMBIECUT, $FF
    ; miscellaneous encounters
    dinstance MONSTER_SLABBIT,      475, 3, 22,  130,  40,  91,  60, 162, 105, $96, $64, $96, $00, SKILL_SIDESTEP,  SKILL_BIGTRIP,   SKILL_NONE,      $FF
    dinstance MONSTER_GASGON,       510, 4, 22,  141, 111, 113,  59,  30,  73, $C8, $FA, $64, $00, SKILL_FAREWELL,  SKILL_BESERKER,  SKILL_NONE,      $FF
    dinstance MONSTER_WINDBEAST,    480, 3, 22,  110, 132,  78,  81, 130, 105, $C8, $96, $C8, $00, SKILL_INFERMORE, SKILL_ICEBOLT,   SKILL_VACUSLASH, $FF
    dinstance MONSTER_STUBBIRD,     588, 4, 23,   91,  84, 170, 140,  90,  82, $FA, $32, $C8, $00, SKILL_TWINHITS,  SKILL_RAINSLASH, SKILL_DRAKSLASH, $FF
    dinstance MONSTER_ONIONO,       500, 3, 23,  100, 110,  95,  50, 126, 143, $96, $64, $C8, $00, SKILL_ROBMAGIC,  SKILL_CHARGEUP,  SKILL_SLEEPAIR,  $FF
    dinstance MONSTER_GOPHECADA,    490, 3, 23,  172,  55,  95, 112,  54,  43, $00, $00, $00, $00, SKILL_BEAT,      SKILL_MAGICBACK, SKILL_CALLHELP,  $FF
    dinstance MONSTER_PIXY,         518, 3, 24,   90,  46, 102,  68,  80,  62, $64, $64, $96, $00, SKILL_SPEEDUP,   SKILL_TWINHITS,  SKILL_ANTIDOTE,  $FF
    dinstance MONSTER_DEADNITE,     630, 4, 24,  121,  87, 140,  99, 105,  92, $FA, $C8, $C8, $00, SKILL_HEAL,      SKILL_DECHAOS,   SKILL_CURSEOFF,  $FF
    dinstance MONSTER_SPIKYBOY,     560, 3, 24,   93,  46, 100,  93,  50,  63, $96, $32, $96, $00, SKILL_SACRIFICE, SKILL_HIGHJUMP,  SKILL_SMASHLIME, $FF
    dinstance MONSTER_SLIMENITE,    585, 4, 25,  144,  47, 136, 102, 152,  96, $C8, $96, $96, $00, SKILL_INCREASE,  SKILL_HEAL,      SKILL_BEASTCUT,  $FF
    dinstance MONSTER_KINGCOBRA,    660, 3, 25,  126,  46,  95,  82, 130,  47, $FA, $00, $64, $00, SKILL_POISONHIT, SKILL_CURSE,     SKILL_NONE,      $FF
    dinstance MONSTER_MOMMONJA,     600, 4, 25,  125,  66,  85,  80, 135, 170, $96, $96, $C8, $00, SKILL_SNOWSTORM, SKILL_LUREDANCE, SKILL_MOUTHSHUT, $FF
    dinstance MONSTER_MISTYWING,    573, 3, 26,  131,  94, 105, 105, 132, 100, $96, $64, $96, $00, SKILL_SURROUND,  SKILL_BARRIER,   SKILL_EERIELITE, $FF
    dinstance MONSTER_STAGBUG,      640, 3, 26,  106,  49, 141, 155,  96,  49, $C8, $32, $C8, $00, SKILL_SLEEP,     SKILL_BLAZEAIR,  SKILL_LEGSWEEP,  $FF
    dinstance MONSTER_DARKEYE,      720, 4, 20,   97, 133,  77,  95, 105, 102, $96, $00, $96, $00, SKILL_METALCUT,  SKILL_PALSYAIR,  SKILL_RADIANT,   $FF
    dinstance MONSTER_NITEWHIP,     666, 3, 27,  101,  74,  58, 135, 140, 111, $C8, $64, $96, $00, SKILL_WINDBEAST, SKILL_LIGHTNING, SKILL_BLAZEAIR,  $FF
    dinstance MONSTER_ROGUENITE,    780, 3, 27,  160,  38, 166, 200,  75,  79, $FA, $FA, $96, $00, SKILL_HEAL,      SKILL_EVILSLASH, SKILL_METALCUT,  $FF
    dinstance MONSTER_BOXSLIME,     740, 4, 27,  102,  49, 112,  82, 145,  76, $64, $32, $96, $00, SKILL_BLAZEMORE, SKILL_UPPER,     SKILL_RAMMING,   $FF
    ; Strength Gate boss
    dinstance MONSTER_STONEMAN,    6400, 7, 20,  800,  36, 130,  90,  45,  90, $FA, $64, $32, $00, SKILL_COVER,     SKILL_SUCKALL,   SKILL_NONE,      $FF
    dinstance MONSTER_STONEMAN,       0, 0, 20,  170,  36, 130, 110,  45,  90, $FA, $32, $32, $00, SKILL_COVER,     SKILL_SUCKALL,   SKILL_NONE,      $FF
    ; Anger Gate boss
    dinstance MONSTER_BATTLEREX,      0, 0, 20, 1000,  50, 170,  80,  80,  70, $FA, $64, $96, $00, SKILL_METALCUT,  SKILL_BLAZEAIR,  SKILL_NONE,      $FF
    dinstance MONSTER_BATTLEREX,      0, 0, 20,  165,  90, 140,  80, 100,  70, $FA, $FA, $96, $00, SKILL_METALCUT,  SKILL_BLAZEAIR,  SKILL_NONE,      $FF
    ; Monster Farm Gate boss
    dinstance MONSTER_COPYCAT,        0, 0, 20,  800,  48,  95,  70,  60,  60, $32, $32, $FA, $00, SKILL_TRANSFORM, SKILL_ROBDANCE,  SKILL_IMITATE,   $FF
    dinstance MONSTER_COPYCAT,        0, 0, 20,   80,  48, 100,  85,  60,  60, $C8, $32, $FA, $00, SKILL_TRANSFORM, SKILL_ROBDANCE,  SKILL_IMITATE,   $FF
    ; miscellaneous encounters
    dinstance MONSTER_ORC,          710, 3, 28,  160,  40, 130,  88,  86, 140, $C8, $00, $64, $00, SKILL_SAP,       SKILL_BIRDBLOW,  SKILL_NONE,      $FF
    dinstance MONSTER_REAPER,       750, 4, 28,  110, 135, 156,  40, 130, 170, $C8, $32, $FA, $00, SKILL_DEVILCUT,  SKILL_CURSE,     SKILL_EERIELITE, $FF
    dinstance MONSTER_GISMO,        700, 4, 28,  152,  52,  81, 120, 142, 142, $96, $96, $96, $00, SKILL_SUCKAIR,   SKILL_BLAZEAIR,  SKILL_ICEAIR,    $FF
    dinstance MONSTER_ROCKSLIME,    830, 4, 29,  186,   9, 140, 138,  89,  55, $FA, $C8, $96, $00, SKILL_HIGHJUMP,  SKILL_ROCKTHROW, SKILL_STRONGD,   $FF
    dinstance MONSTER_CHAMELGON,    776, 4, 29,  160, 149,  90,  88, 138,  85, $C8, $32, $C8, $00, SKILL_PANICALL,  SKILL_PARALYZE,  SKILL_NONE,      $FF
    dinstance MONSTER_GOATEGON,     910, 4, 29,  220, 120, 172,  92, 131, 132, $C8, $32, $C8, $00, SKILL_FIREBANE,  SKILL_SLOWALL,   SKILL_SLEEPAIR,  $FF
    dinstance MONSTER_DUCKKITE,     882, 3, 28,  117, 115, 143, 138, 165, 140, $96, $32, $64, $00, SKILL_SLEEP,     SKILL_PANICALL,  SKILL_CURSE,     $FF
    dinstance MONSTER_CACTIBALL,    977, 3, 28,  192, 165, 140,  65, 135, 130, $FA, $96, $FA, $00, SKILL_HIGHJUMP,  SKILL_PARALYZE,  SKILL_ODDDANCE,  $FF
    dinstance MONSTER_TAILEATER,    960, 4, 30,  160,  58, 116,  90, 121,  88, $96, $32, $96, $00, SKILL_ICESLASH,  SKILL_POISONGAS, SKILL_RADIANT,   $FF
    dinstance MONSTER_AGDEVIL,     1005, 4, 31,  160,  90, 148, 125,  90, 142, $C8, $32, $96, $00, SKILL_FIREBANE,  SKILL_SLEEPAIR,  SKILL_NONE,      $FF
    dinstance MONSTER_WINDMERGE,   1100, 4, 31,  116, 142,  98, 176, 122, 165, $96, $64, $C8, $00, SKILL_INFERMOST, SKILL_BARRIER,   SKILL_CURSEOFF,  $FF
    dinstance MONSTER_WEEDBUG,      957, 4, 31,  143,  90,  65, 140,  90, 141, $64, $96, $C8, $00, SKILL_ROBMAGIC,  SKILL_BARRIER,   SKILL_MAGICWALL, $FF
    dinstance MONSTER_SPOTKING,    1200, 5, 32,  300,  62, 206,  99, 115, 170, $C8, $96, $96, $00, SKILL_CLEANCUT,  SKILL_NAPATTACK, SKILL_MOUTHSHUT, $FF
    dinstance MONSTER_LIZARDFLY,    990, 4, 28,  120,  93, 188,  99,  93,  90, $C8, $64, $96, $00, SKILL_FIREBANE,  SKILL_WINDBEAST, SKILL_BLAZEAIR,  $FF
    dinstance MONSTER_HAMMERMAN,   1035, 4, 32,  136,  60, 156, 100, 118,  62, $FA, $00, $32, $00, SKILL_KAMIKAZE,  SKILL_EVILSLASH, SKILL_CHARGEUP,  $FF
    dinstance MONSTER_MADGOOSE,     983, 4, 28,  180, 197, 167, 190, 180,  96, $96, $64, $C8, $00, SKILL_PANICALL,  SKILL_ODDDANCE,  SKILL_LUREDANCE, $FF
    dinstance MONSTER_TREEBOY,     1095, 4, 33,  213, 185, 104, 100, 156, 185, $C8, $C8, $C8, $00, SKILL_SNOWSTORM, SKILL_HEALMORE,  SKILL_CURSEOFF,  $FF
    dinstance MONSTER_DROLL,       1152, 4, 33,  132,  40, 142, 100,  68, 126, $96, $00, $64, $00, SKILL_SLOWALL,   SKILL_BRANCHING, SKILL_NONE,      $FF
    ; Joy Gate boss
    dinstance MONSTER_FUNKYBIRD,      0, 0, 30, 1200, 160, 100, 140,  98, 160, $96, $32, $96, $00, SKILL_PANIDANCE, SKILL_HUSTLE,    SKILL_LIFEDANCE, $FF
    dinstance MONSTER_FUNKYBIRD,      0, 0, 30,  120, 160, 100, 140,  98, 160, $96, $32, $FA, $00, SKILL_PANIDANCE, SKILL_HUSTLE,    SKILL_LIFEDANCE, $FF
    ; Wisdom Gate boss
    dinstance MONSTER_SKYDRAGON,   7800, 7, 30, 1200, 150, 170, 120,  80,  80, $C8, $32, $C8, $00, SKILL_SUCKAIR,   SKILL_SCORCHING, SKILL_NONE,      $FF
    dinstance MONSTER_SKYDRAGON,      0, 0, 30,  125, 150, 170, 155,  80,  80, $96, $32, $C8, $00, SKILL_SUCKAIR,   SKILL_SCORCHING, SKILL_NONE,      $FF
    ; Arena Left Gate boss
    dinstance MONSTER_DIGSTER,        0, 0, 45, 1000,  85, 190, 150,  60, 140, $96, $00, $96, $00, SKILL_STRONGD,   SKILL_SUCKALL,   SKILL_NONE,      $FF
    dinstance MONSTER_DIGSTER,        0, 0, 45,  230,  85, 190, 160,  60, 140, $96, $C8, $96, $00, SKILL_STRONGD,   SKILL_SUCKALL,   SKILL_NONE,      $FF
    ; miscellaneous encounters
    dinstance MONSTER_GIANTMOTH,   1187, 4, 28,  155, 165, 155, 168, 186, 162, $C8, $64, $C8, $00, SKILL_WINDBEAST, SKILL_PARALYZE,  SKILL_RADIANT,   $FF
    dinstance MONSTER_ARCDEMON,    1720, 5, 34,  230,  98, 230, 180,  72, 250, $C8, $32, $96, $00, SKILL_BOOM,      SKILL_BOLTSLASH, SKILL_BIRDBLOW,  $FF
    dinstance MONSTER_MADSPIRIT,   1368, 5, 34,  160, 162, 203, 168, 100,  66, $C8, $64, $FA, $00, SKILL_SLEEPAIR,  SKILL_RADIANT,   SKILL_THICKFOG,  $FF
    dinstance MONSTER_CURSELAMP,   1213, 4, 40,  200, 204, 182, 180, 102, 200, $C8, $32, $C8, $00, SKILL_INCREASE,  SKILL_SPEEDUP,   SKILL_TWINHITS,  $FF
    dinstance MONSTER_TORTRAGON,   1305, 4, 33,  162, 104, 212, 250,  72, 104, $96, $64, $64, $00, SKILL_BOUNCE,    SKILL_LIGHTNING, SKILL_NONE,      $FF
    dinstance MONSTER_WILDAPE,     1250, 4, 33,  160,  68, 195,  75, 158, 100, $FA, $00, $96, $00, SKILL_TWINSLASH, SKILL_YELLHELP,  SKILL_BIGTRIP,   $FF
    dinstance MONSTER_LANDOWL,     1528, 5, 33,  240,  71, 260, 110, 110,  70, $C8, $00, $96, $00, SKILL_INFERMOST, SKILL_BOLTSLASH, SKILL_SIDESTEP,  $FF
    dinstance MONSTER_AMBERWEED,   1138, 4, 36,  180, 192, 115, 140, 180,  70, $C8, $64, $FA, $00, SKILL_BARRIER,   SKILL_TWINHITS,  SKILL_MAGICWALL, $FF
    dinstance MONSTER_ARMYCRAB,    1299, 5, 36,  130, 108, 160, 230,  55,  72, $C8, $64, $C8, $00, SKILL_INCREASE,  SKILL_METALCUT,  SKILL_YELLHELP,  $FF
    dinstance MONSTER_EVILBEAST,   1203, 5, 30,  150,  71, 202, 162,  56, 186, $C8, $32, $C8, $00, SKILL_FIREBANE,  SKILL_ICEAIR,    SKILL_NONE,      $FF
    dinstance MONSTER_SHADOW,      1256, 5, 37,  217, 134, 210, 210, 118, 185, $FA, $32, $FA, $00, SKILL_ICEAIR,    SKILL_KO_DANCE,  SKILL_THICKFOG,  $FF
    dinstance MONSTER_EVILWAND,    1343, 4, 37,  172, 130, 167, 230, 190, 100, $96, $32, $96, $00, SKILL_DECHAOS,   SKILL_ICEAIR,    SKILL_NONE,      $FF
    dinstance MONSTER_SLIMEBORG,   1444, 5, 38,  250,  73, 205, 192, 200, 100, $FA, $C8, $C8, $00, SKILL_RAINSLASH, SKILL_LIGHTNING, SKILL_BLADED,    $FF
    dinstance MONSTER_LIZARDMAN,   1347, 4, 38,  210,  73, 182, 110, 105, 100, $FA, $64, $32, $00, SKILL_EVILSLASH, SKILL_BEASTCUT,  SKILL_NONE,      $FF
    dinstance MONSTER_GRIZZLY,     1560, 5, 38,  230,  18, 285,  82, 200,  80, $FA, $00, $96, $00, SKILL_TWINSLASH, SKILL_SQUALLHIT, SKILL_BIGTRIP,   $FF
    dinstance MONSTER_WYVERN,      1580, 4, 39,  193, 105, 165, 130, 160, 205, $C8, $64, $96, $00, SKILL_SLEEPALL,  SKILL_HEALMORE,  SKILL_ICEAIR,    $FF
    dinstance MONSTER_FIREWEED,    1440, 4, 36,  180, 200,  83, 128, 155, 147, $FA, $96, $C8, $00, SKILL_BLAZEMORE, SKILL_DECHAOS,   SKILL_PALSYAIR,  $FF
    dinstance MONSTER_MADHORNET,   1380, 6, 38,  233, 105, 167, 112, 210, 120, $C8, $00, $C8, $00, SKILL_POISONHIT, SKILL_PARALYZE,  SKILL_STORMWIND, $FF
    ; Happiness Gate boss
    dinstance MONSTER_JAMIRUS,    13000, 7, 35, 1600, 175, 260, 160, 150, 145, $FA, $FA, $FA, $00, SKILL_BLAZEMOST, SKILL_QUADHITS,  SKILL_STORMWIND, $FF
    dinstance MONSTER_JAMIRUS,        0, 0, 35,  200, 175, 260, 200, 150, 145, $FA, $FA, $FA, $00, SKILL_BLAZEMOST, SKILL_QUADHITS,  SKILL_STORMWIND, $FF
    ; Temptation Gate boss
    dinstance MONSTER_SERVANT,    15076, 5, 35, 1000, 250, 160, 160, 200, 170, $FA, $96, $FA, $00, SKILL_BLAZEMOST, SKILL_BLIZZARD,  SKILL_FOCUS,     $FF
    dinstance MONSTER_SERVANT,        0, 0, 35,  160, 250, 160, 180, 200, 170, $FA, $FA, $FA, $00, SKILL_BLAZEMOST, SKILL_BLIZZARD,  SKILL_FOCUS,     $FF
    dinstance MONSTER_CENTASAUR,      0, 7, 30,  220, 115, 205, 140, 320, 200, $FA, $64, $C8, $00, SKILL_STOPSPELL, SKILL_FIRESLASH, SKILL_RAINSLASH, $FF
    dinstance MONSTER_EVILARMOR,      0, 7, 28,  175,  98, 170, 220, 132, 146, $FA, $32, $96, $00, SKILL_FIRESLASH, SKILL_BOLTSLASH, SKILL_DRAGONCUT, $FF
    ; Medal Man Gate boss
    dinstance MONSTER_KINGSLIME,  17000, 5, 38, 2000,  75, 200, 130, 190, 190, $FA, $96, $C8, $00, SKILL_BARRIER,   SKILL_HEALMORE,  SKILL_NONE,      $FF
    dinstance MONSTER_KINGSLIME,      0, 0, 38,  230,  75, 200, 160, 190, 190, $96, $FA, $C8, $00, SKILL_BARRIER,   SKILL_HEALMORE,  SKILL_REVIVE,    $FF
    dinstance MONSTER_TOADSTOOL,    300, 5, 10,   45,  17,  25,  23,  40,  36, $00, $00, $00, $00, SKILL_NAPATTACK, SKILL_SLEEPAIR,  SKILL_MOUTHSHUT, $FF
    dinstance MONSTER_LIPSY,        250, 5, 10,   23,  17,  23,  22,  20,  72, $00, $00, $00, $00, SKILL_NAPATTACK, SKILL_AHHH,      SKILL_LUSHLICKS, $FF
    ; miscellaneous encounters
    dinstance MONSTER_LIONEX,      1850, 5, 40,  268, 130, 202, 246, 210, 160, $96, $96, $C8, $00, SKILL_INFERMOST, SKILL_HEALUS,    SKILL_VACUSLASH, $FF
    dinstance MONSTER_ROTRAVEN,    1680, 4, 33,  155, 145, 167, 132, 244, 210, $96, $32, $96, $00, SKILL_KAMIKAZE,  SKILL_BOLTSLASH, SKILL_LIGHTNING, $FF
    dinstance MONSTER_JEWELBAG,    2000, 5, 38,  138, 126, 218, 246, 180, 240, $64, $00, $32, $00, SKILL_FIREBANE,  SKILL_STOPSPELL, SKILL_PANICALL,  $FF
    dinstance MONSTER_SWORDGON,    1915, 4, 41,  246, 165, 190, 213, 128, 115, $FA, $C8, $FA, $00, SKILL_CLEANCUT,  SKILL_RAINSLASH, SKILL_BLADED,    $FF
    dinstance MONSTER_SUPERTEN,    1872, 5, 41,  276,  80, 148,  90, 218, 154, $FA, $64, $C8, $00, SKILL_KO_DANCE,  SKILL_IMITATE,   SKILL_HUSTLE,    $FF
    dinstance MONSTER_MADCONDOR,   2075, 5, 41,  190, 130, 256, 224, 160, 160, $C8, $64, $00, $00, SKILL_FIREBANE,  SKILL_HEALUS,    SKILL_NONE,      $FF
    dinstance MONSTER_MANEATER,    1996, 6, 42,  192, 225, 176,  90, 115, 110, $FA, $00, $C8, $00, SKILL_DRAGONCUT, SKILL_PSYCHEUP,  SKILL_SLEEPAIR,  $FF
    dinstance MONSTER_GRENDAL,     2130, 5, 42,  304,  82, 260, 310, 226, 226, $FA, $C8, $C8, $00, SKILL_FIRESLASH, SKILL_DRAGONCUT, SKILL_GUARDIAN,  $FF
    dinstance MONSTER_DARKCRAB,    1999, 4, 28,  254, 135, 260, 222,  85, 140, $C8, $64, $00, $00, SKILL_MAGICWALL, SKILL_IRONIZE,   SKILL_NONE,      $FF
    dinstance MONSTER_MADMIRROR,   2184, 5, 38,  284,  92, 145, 204, 232, 170, $96, $96, $96, $00, SKILL_BOUNCE,    SKILL_TRANSFORM, SKILL_NONE,      $FF
    dinstance MONSTER_WINGSNAKE,   2030, 4, 43,  284, 138, 230, 177, 170, 140, $FA, $00, $96, $00, SKILL_HIGHJUMP,  SKILL_SQUALLHIT, SKILL_POISONAIR, $FF
    dinstance MONSTER_YETI,        1820, 5, 38,  287, 140, 264, 230, 100, 140, $FA, $96, $C8, $00, SKILL_SNOWSTORM, SKILL_ICESLASH,  SKILL_WARCRY,    $FF
    dinstance MONSTER_DANCEVEGI,   1770, 4, 44,  176, 122, 124, 240, 316, 150, $C8, $64, $C8, $00, SKILL_KO_DANCE,  SKILL_SIDESTEP,  SKILL_LUREDANCE, $FF
    dinstance MONSTER_OGRE,        2320, 4, 33,  288, 140, 235, 235, 104, 230, $FA, $00, $64, $00, SKILL_MASSACRE,  SKILL_METALCUT,  SKILL_RAINSLASH, $FF
    dinstance MONSTER_SKULLGON,    2516, 5, 43,  420,  87, 258,  80, 135, 230, $FA, $64, $96, $00, SKILL_TWINSLASH, SKILL_ICESLASH,  SKILL_ICEAIR,    $FF
    dinstance MONSTER_VOODOLL,     2160, 4, 33,  204, 180, 220, 256, 150, 170, $C8, $32, $FA, $00, SKILL_SURROUND,  SKILL_PANICALL,  SKILL_DEFENCE,   $FF
    dinstance MONSTER_RAYBURN,     2604, 6, 33,  206, 110, 235, 115, 265, 110, $FA, $64, $96, $00, SKILL_VACUSLASH, SKILL_DEVILCUT,  SKILL_POISONHIT, $FF
    dinstance MONSTER_IRONTURT,    2248, 5, 43,  300, 120, 258, 200, 120, 180, $64, $FA, $FA, $00, SKILL_BOUNCE,    SKILL_GUARDIAN,  SKILL_STRONGD,   $FF
    ; Labyrinth Gate boss
    dinstance MONSTER_DARKHORN,   21076, 5, 40, 2000, 130, 225, 120,  80, 210, $FA, $00, $C8, $00, SKILL_SLEEPALL,  SKILL_STOPSPELL, SKILL_PSYCHEUP,  $FF
    dinstance MONSTER_DARKHORN,       0, 0, 40,  170, 130, 245, 150,  80, 250, $FA, $00, $FA, $00, SKILL_SLEEPALL,  SKILL_STOPSPELL, SKILL_PSYCHEUP,  $FF
    ; Judgment Gate boss
    dinstance MONSTER_AKUBAR,     23000, 7, 40, 2000, 400, 230, 240, 250, 255, $C8, $64, $C8, $00, SKILL_EXPLODET,  SKILL_FOCUS,     SKILL_ICESTORM,  $FF
    dinstance MONSTER_AKUBAR,         0, 0, 40,  300, 400, 200, 300, 250, 255, $FA, $64, $C8, $00, SKILL_EXPLODET,  SKILL_FOCUS,     SKILL_ICESTORM,  $FF
    ; Library Gate boss
    dinstance MONSTER_OROCHI,     28000, 7, 40, 2000, 110, 300, 210, 130, 130, $FA, $00, $FA, $00, SKILL_FIRESLASH, SKILL_QUADHITS,  SKILL_SCORCHING, $FF
    dinstance MONSTER_OROCHI,         0, 0, 40,  310, 110, 300, 260, 130, 130, $FA, $00, $FA, $00, SKILL_FIRESLASH, SKILL_QUADHITS,  SKILL_SCORCHING, $FF
    ; miscellaneous encounters
    dinstance MONSTER_METABBLE,   65000, 6, 38,    8, 490,  95, 770, 511, 255, $FA, $FA, $FA, $00, SKILL_FIREBOLT,  SKILL_EXPLODET,  $DB,             $FF
    dinstance MONSTER_GULPBEAST,   2480, 5, 38,  360,  90, 300, 185, 150,  90, $FA, $00, $96, $00, SKILL_BESERKER,  SKILL_MASSACRE,  SKILL_WARCRY,    $FF
    dinstance MONSTER_BALZAK,      2560, 5, 38,  350, 165, 250, 320, 280, 180, $FA, $64, $C8, $00, SKILL_EXPLODET,  SKILL_ZAP,       SKILL_NONE,      $FF
    dinstance MONSTER_SPIKEROUS,   2700, 5, 28,  250,  23, 270, 340,  90, 113, $FA, $96, $96, $00, SKILL_BESERKER,  SKILL_KAMIKAZE,  SKILL_ROCKTHROW, $FF
    dinstance MONSTER_TRUMPETER,   2800, 5, 47,  270, 150, 330, 210, 190, 130, $C8, $64, $96, $00, SKILL_BESERKER,  SKILL_SANDSTORM, SKILL_WARCRY,    $FF
    dinstance MONSTER_SKELETOR,    2770, 5, 47,  180, 175, 310, 260, 145, 180, $FA, $32, $FA, $00, SKILL_DEFENCE,   SKILL_BIRDBLOW,  SKILL_QUADHITS,  $FF
    dinstance MONSTER_METALDRAK,   3360, 6, 43,  330, 105, 280, 260, 250, 130, $96, $32, $64, $00, SKILL_MASSACRE,  SKILL_ROCKTHROW, SKILL_SANDSTORM, $FF
    dinstance MONSTER_MADDRAGON,   3150, 5, 33,  220,  24, 335, 130,  90,  30, $FA, $00, $96, $00, SKILL_MASSACRE,  SKILL_EVILSLASH, SKILL_LUREDANCE, $FF
    dinstance MONSTER_SNAPPER,     2880, 5, 48,  235, 185, 250, 140, 140, 230, $C8, $64, $96, $00, SKILL_STOPSPELL, SKILL_YELLHELP,  SKILL_RAINSLASH, $FF
    dinstance MONSTER_GOATHORN,    3520, 6, 33,  270, 190, 260, 150, 190, 240, $FA, $64, $FA, $00, SKILL_EXPLODET,  SKILL_INFERMOST, SKILL_BLIZZARD,  $FF
    dinstance MONSTER_DEADNOBLE,   2990, 5, 48,  360, 240, 340, 280, 280, 215, $FA, $64, $C8, $00, SKILL_DEFEAT,    SKILL_HEALUSALL, SKILL_NONE,      $FF
    dinstance MONSTER_ROBOSTER,    3540, 5, 38,  300,  45, 340, 230, 360, 210, $FA, $32, $C8, $00, SKILL_QUADHITS,  SKILL_SQUALLHIT, SKILL_RAINSLASH, $FF
    dinstance MONSTER_BOMBCRAG,    2500, 4, 48,  310, 190, 175, 250,  25, 140, $C8, $64, $96, $00, SKILL_SACRIFICE, SKILL_FAREWELL,  SKILL_MEDITATE,  $FF
    dinstance MONSTER_ANDREAL,     3480, 5, 48,  360, 280, 230, 320, 200, 250, $FA, $00, $C8, $00, SKILL_INFERMOST, SKILL_SURROUND,  SKILL_POISONAIR, $FF
    dinstance MONSTER_UNICORN,     3120, 5, 48,  180, 330, 180, 150, 290, 255, $FA, $C8, $FA, $00, SKILL_HEALALL,   SKILL_REVIVE,    SKILL_ANTIDOTE,  $FF
    dinstance MONSTER_GREATDRAK,   3580, 5, 51,  370, 130, 260, 210, 170, 210, $FA, $C8, $FA, $00, SKILL_ICESLASH,  SKILL_ICESTORM,  SKILL_SUCKALL,   $FF
    dinstance MONSTER_ZAPBIRD,     3320, 5, 48,  280, 120, 210, 200, 240, 255, $FA, $96, $96, $00, SKILL_BOLTSLASH, SKILL_LIGHTNING, SKILL_NONE,      $FF
    dinstance MONSTER_WHIPBIRD,    3076, 6, 51,  500, 200, 175, 250, 240, 230, $C8, $64, $96, $00, SKILL_IRONIZE,   SKILL_THICKFOG,  SKILL_NONE,      $FF
    ; Reflection Gate boss
    dinstance MONSTER_DURRAN,     31000, 7, 45, 3000, 330, 420, 380, 370,  10, $C8, $00, $64, $00, SKILL_DRAGONCUT, SKILL_BIRDBLOW,  SKILL_VACUUM,    $FF
    dinstance MONSTER_DURRAN,         0, 0, 45,  220, 330, 380, 250, 190, 255, $C8, $00, $C8, $00, SKILL_DRAGONCUT, SKILL_BIRDBLOW,  SKILL_VACUUM,    $FF
    ; Ambition Gate boss
    dinstance MONSTER_DRACOLORD1, 26000, 7, 48, 4000, 550, 340, 320, 230, 255, $FA, $C8, $C8, $00, SKILL_FIREBOLT,  SKILL_MEDITATE,  SKILL_BEDRAGON,  $FF
    dinstance MONSTER_DRACOLORD1,     0, 0, 48,  250, 550, 340, 260, 230, 255, $64, $C8, $FA, $00, SKILL_FIREBOLT,  SKILL_MEDITATE,  SKILL_BEDRAGON,  $FF
    ; Demolition Gate boss
    dinstance MONSTER_HARGON,     38000, 7, 50, 4000, 550, 260, 400, 230, 255, $FA, $32, $FA, $00, SKILL_FIREBOLT,  SKILL_EXPLODET,  SKILL_BAZOOCALL, $FF
    dinstance MONSTER_HARGON,         0, 0, 50,  190, 550, 260, 340, 230, 255, $96, $32, $FA, $00, SKILL_FIREBOLT,  SKILL_EXPLODET,  SKILL_BAZOOCALL, $FF
    dinstance MONSTER_SIDOH,      38000, 7, 50, 6000, 999, 530, 340, 230,  10, $C8, $00, $C8, $00, SKILL_WHITEFIRE, SKILL_WHITEAIR,  SKILL_HELLBLAST, $FF
    dinstance MONSTER_SIDOH,          0, 0, 50,  370, 550, 370, 340, 230, 255, $C8, $00, $C8, $00, SKILL_WHITEFIRE, SKILL_BIGBANG,   SKILL_DEMAGIC,   $FF
    ; Mastermind Gate boss
    dinstance MONSTER_BARAMOS,    43000, 7, 50, 4000, 999, 410, 550, 230,  10, $FA, $00, $96, $00, SKILL_EXPLODET,  SKILL_ROCKTHROW, SKILL_HELLBLAST, $FF
    dinstance MONSTER_BARAMOS,        0, 0, 50,  250, 550, 260, 260, 230, 255, $FA, $00, $64, $00, SKILL_PANICALL,  SKILL_HELLBLAST, SKILL_BIGBANG,   $FF
    ; Control Gate boss
    dinstance MONSTER_ZOMA,       45076, 7, 55, 4500, 999, 440, 400, 260, 255, $FA, $00, $C8, $00, SKILL_WHITEAIR,  SKILL_BIGBANG,   SKILL_DEMAGIC,   $FF
    dinstance MONSTER_ZOMA,           0, 0, 55,  400, 600, 420, 350, 260, 255, $FA, $00, $C8, $00, SKILL_FOCUS,     SKILL_WHITEAIR,  SKILL_DEMAGIC,   $FF
    ; Extinction Gate boss
    dinstance MONSTER_PIZZARO,    39076, 7, 55, 6000, 600, 510, 450, 260,  20, $FA, $32, $C8, $00, SKILL_QUADHITS,  SKILL_WHITEFIRE, SKILL_HELLBLAST, $FF
    dinstance MONSTER_PIZZARO,        0, 0, 55,  360, 600, 420, 350, 260, 255, $64, $FA, $C8, $00, SKILL_QUADHITS,  SKILL_WHITEAIR,  SKILL_ULTRADOWN, $FF
    ; Sleep Gate boss
    dinstance MONSTER_ESTERK,     42076, 7, 60, 3800, 700, 560, 520, 450, 255, $FA, $00, $FA, $00, SKILL_RAINSLASH, SKILL_DEMAGIC,   SKILL_GIGASLASH, $FF
    dinstance MONSTER_ESTERK,         0, 0, 60,  600, 700, 460, 450, 300, 255, $FA, $00, $FA, $00, SKILL_FOCUS,     SKILL_WHITEFIRE, SKILL_DEMAGIC,   $FF
    ; Bazaar #2 Gate boss
    dinstance MONSTER_MIRUDRAAS1, 48076, 7, 60, 5000, 999, 520, 480, 300,  10, $FA, $00, $C8, $00, SKILL_BLAZEMOST, SKILL_EXPLODET,  SKILL_THORDAIN,  $FF
    dinstance MONSTER_MIRUDRAAS1,     0, 0, 60,  380, 700, 460, 380, 300, 255, $FA, $00, $C8, $00, SKILL_BLAZEMOST, SKILL_EXPLODET,  SKILL_BLIZZARD,  $FF
    ; Arena Right Gate boss
    dinstance MONSTER_MUDOU,      45076, 7, 60, 5000, 999, 530, 450, 300,  10, $FA, $64, $96, $00, SKILL_WHITEFIRE, SKILL_WHITEAIR,  SKILL_POISONAIR, $FF
    dinstance MONSTER_MUDOU,          0, 0, 60,  380, 700, 460, 450, 300, 255, $32, $64, $96, $00, SKILL_WHITEFIRE, SKILL_WHITEAIR,  SKILL_SLEEPAIR,  $FF
    ; Old Man Gate boss
    dinstance MONSTER_DEATHMORE1, 50000, 7, 58, 9000, 700, 460, 520, 450, 255, $FA, $00, $C8, $00, SKILL_HELLBLAST, SKILL_BIGBANG,   SKILL_SAMSICALL, $FF
    dinstance MONSTER_DEATHMORE1,     0, 0, 58,  380, 700, 460, 380, 300, 255, $FA, $00, $FA, $00, SKILL_EXPLODET,  SKILL_HELLBLAST, SKILL_POISONAIR, $FF
    ; unused gate boss
    dinstance MONSTER_DARKDRIUM,  65000, 0, 70, 9000, 850, 780, 520, 390,  10, $FA, $96, $FA, $00, SKILL_BIATTACK,  SKILL_WHITEFIRE, SKILL_WHITEAIR,  $FF
    dinstance MONSTER_DARKDRIUM,      0, 0, 70,  999, 850, 999, 520, 390, 255, $FA, $FA, $FA, $00, SKILL_BIATTACK,  SKILL_WHITEFIRE, SKILL_WHITEAIR,  $FF
    ; reward for defeating all gate bosses
    dinstance MONSTER_WATABOU,        0, 0, 20,  150, 460, 160, 205, 370, 255, $00, $FA, $FA, $00, SKILL_CHANCE,    SKILL_WHISTLE,   SKILL_IMITATE,   $FF
    ; G Class, first round
    dinstance MONSTER_DRACKY,         0, 7,  1,    8,  20,  12,   4,  12,  14, $C8, $00, $00, $96, SKILL_NONE,      SKILL_NONE,      SKILL_NONE,      $FF
    dinstance MONSTER_ANTEATER,       0, 7,  1,   12,   0,  17,   4,   4,   3, $96, $00, $32, $C8, SKILL_NONE,      SKILL_NONE,      SKILL_NONE,      $FF
    dinstance MONSTER_DRACKY,         0, 7,  1,    8,  20,  11,   3,  10,  14, $C8, $00, $00, $96, SKILL_NONE,      SKILL_NONE,      SKILL_NONE,      $FF
    ; G Class, second round
    dinstance MONSTER_SLIME,          0, 7,  1,    8,   0,   8,   5,   7,   1, $C8, $32, $64, $C8, SKILL_NONE,      SKILL_NONE,      SKILL_NONE,      $FF
    dinstance MONSTER_STUBSUCK,       0, 7,  2,   16,   6,  19,   7,  10,  10, $64, $32, $C8, $64, SKILL_SLEEP,     SKILL_NONE,      SKILL_NONE,      $FF
    dinstance MONSTER_SLIME,          0, 7,  1,    7,   0,   8,   5,   6,   1, $C8, $32, $64, $C8, SKILL_NONE,      SKILL_NONE,      SKILL_NONE,      $FF
    ; G Class, final round (principal of the school)
    dinstance MONSTER_SPOOKY,         0, 7,  7,   16,   8,  13,  12,  17,  16, $C8, $00, $C8, $C8, SKILL_LUSHLICKS, SKILL_NONE,      SKILL_NONE,      $FF
    dinstance MONSTER_HORK,           0, 7,  5,   20,   6,  20,   6,  10,  10, $64, $00, $00, $32, SKILL_POISONGAS, SKILL_LUSHLICKS, SKILL_NONE,      $FF
    dinstance MONSTER_SPOOKY,         0, 7,  7,   14,   8,  15,   9,  11,  13, $C8, $00, $C8, $C8, SKILL_LUSHLICKS, SKILL_NONE,      SKILL_NONE,      $FF
    ; F Class, first round
    dinstance MONSTER_SPOTSLIME,      0, 7,  8,   26,  11,  30,  17,  30,  11, $C8, $00, $64, $96, SKILL_CALLHELP,  SKILL_NONE,      SKILL_NONE,      $FF
    dinstance MONSTER_SPOTSLIME,      0, 7,  9,   20,  12,  26,  15,  30,  32, $32, $00, $96, $00, SKILL_LUSHLICKS, SKILL_NONE,      SKILL_NONE,      $FF
    dinstance MONSTER_SPOTSLIME,      0, 7,  8,   24,  15,  28,  14,  32,  11, $C8, $00, $C8, $96, SKILL_IMITATE,   SKILL_NONE,      SKILL_NONE,      $FF
    ; F Class, second round
    dinstance MONSTER_MUDDOLL,        0, 7, 12,   38,  20,  22,  18,  24,  44, $64, $00, $FA, $32, SKILL_ODDDANCE,  SKILL_NONE,      SKILL_NONE,      $FF
    dinstance MONSTER_ALMIRAJ,        0, 7, 10,   42,  26,  26,  20,  40,  22, $96, $00, $64, $64, SKILL_SLEEP,     SKILL_RAMMING,   SKILL_CHARGEUP,  $FF
    dinstance MONSTER_MUDDOLL,        0, 7, 12,   40,  44,  20,  22,  22,  44, $32, $00, $FA, $32, SKILL_SIDESTEP,  SKILL_NONE,      SKILL_NONE,      $FF
    ; F Class, final round (professor from the well)
    dinstance MONSTER_PUTREPUP,       0, 7, 12,   75,  10,  28,  24,  30,  20, $C8, $00, $96, $96, SKILL_SAP,       SKILL_SLOW,      SKILL_NONE,      $FF
    dinstance MONSTER_MADRAVEN,       0, 7, 12,   50,  12,  30,  24,  60,  80, $C8, $00, $64, $96, SKILL_HIGHJUMP,  SKILL_TAILWIND,  SKILL_NONE,      $FF
    dinstance MONSTER_SKULLROO,       0, 7, 12,   58,   8,  38,  18,  50,  50, $96, $00, $64, $32, SKILL_CHARGEUP,  SKILL_PANIDANCE, SKILL_NONE,      $FF
    ; E Class, first round
    dinstance MONSTER_CRESTPENT,      0, 7,  8,   60,   8,  20,  30,  15,   9, $C8, $00, $64, $64, SKILL_STOPSPELL, SKILL_POISONHIT, SKILL_BEDRAGON,  $FF
    dinstance MONSTER_TREESLIME,      0, 7, 12,   70,   8,  30,  26,  49,  46, $64, $00, $FA, $C8, SKILL_SAP,       SKILL_PARALYZE,  SKILL_SLEEPAIR,  $FF
    dinstance MONSTER_POISONGON,      0, 7, 12,   50,  14,  35,  30,  26,  23, $96, $00, $32, $00, SKILL_POISONHIT, SKILL_POISONGAS, SKILL_NONE,      $FF
    ; E Class, second round
    dinstance MONSTER_DRAKSLIME,      0, 7, 14,   40,  16,  30,  26,  96,  52, $64, $00, $C8, $96, SKILL_SUCKAIR,   SKILL_FIREAIR,   SKILL_NONE,      $FF
    dinstance MONSTER_DRAGON,         0, 7, 15,   65,  20,  45,  40,  30,  26, $FA, $00, $00, $FA, SKILL_FIRESLASH, SKILL_FIREAIR,   SKILL_NONE,      $FF
    dinstance MONSTER_FAIRYDRAK,      0, 7, 14,   40,  21,  25,  30,  51,  27, $96, $00, $64, $32, SKILL_SURROUND,  SKILL_SLEEPAIR,  SKILL_NONE,      $FF
    ; E Class, final round (Teto)
    dinstance MONSTER_SNAILY,         0, 7, 16,   45,  20,  30,  60, 110,  60, $96, $64, $00, $96, SKILL_ICEBOLT,   SKILL_NONE,      SKILL_NONE,      $FF
    dinstance MONSTER_ARMORPEDE,      0, 7, 20,   80,  27,  40,  72,  40,  68, $FA, $00, $64, $32, SKILL_UPPER,     SKILL_TWINHITS,  SKILL_TWINSLASH, $FF
    dinstance MONSTER_SNAILY,         0, 7, 16,   40,  20,  32,  55, 110,  60, $96, $32, $00, $96, SKILL_CALLHELP,  SKILL_NONE,      SKILL_NONE,      $FF
    ; D Class, first round
    dinstance MONSTER_SACCER,         0, 7, 17,   80,  31,  48,  82,   9,  62, $96, $00, $C8, $64, SKILL_UPPER,     SKILL_PSYCHEUP,  SKILL_NONE,      $FF
    dinstance MONSTER_FLORAJAY,       0, 7, 19,   50,  56,  55,  42, 142, 120, $64, $32, $64, $FA, SKILL_SPEEDUP,   SKILL_BEASTCUT,  SKILL_LIFESONG,  $FF
    dinstance MONSTER_MADPLANT,       0, 7, 20,  100, 100,  52,  50, 135,  91, $C8, $00, $FA, $64, SKILL_SAP,       SKILL_SLOW,      SKILL_NUMBOFF,   $FF
    ; D Class, second round
    dinstance MONSTER_MEDUSAEYE,      0, 7, 20,   70,  48,  40,  96,  48,  44, $64, $00, $64, $FA, SKILL_SURROUND,  SKILL_SAP,       SKILL_BRANCHING, $FF
    dinstance MONSTER_MADGOPHER,      0, 7, 21,  100,  38,  61,  45,  54,  48, $FA, $00, $00, $C8, SKILL_CHARGEUP,  SKILL_BIRDBLOW,  SKILL_ZOMBIECUT, $FF
    dinstance MONSTER_MEDUSAEYE,      0, 7, 20,   70,  68,  44,  90,  48,  44, $64, $00, $64, $FA, SKILL_SURROUND,  SKILL_SAP,       SKILL_BRANCHING, $FF
    ; D Class, final round (Mick)
    dinstance MONSTER_MADCAT,         0, 7, 20,  100,  28,  65,  60,  80,  45, $C8, $32, $C8, $FA, SKILL_VACUSLASH, SKILL_SQUALLHIT, SKILL_LEGSWEEP,  $FF
    dinstance MONSTER_ROGUENITE,      0, 7, 27,  110,  38,  80, 100,  50,  79, $FA, $FA, $96, $C8, SKILL_HEAL,      SKILL_EVILSLASH, SKILL_METALCUT,  $FF
    dinstance MONSTER_MADCAT,         0, 7, 20,  100,  28,  72,  50,  80,  45, $FA, $32, $C8, $FA, SKILL_VACUSLASH, SKILL_SQUALLHIT, SKILL_LEGSWEEP,  $FF
    ; C Class, first round
    dinstance MONSTER_SPIKYBOY,       0, 7, 24,   80,  26,  70,  83,  50,  63, $96, $64, $64, $FA, SKILL_SACRIFICE, SKILL_HIGHJUMP,  SKILL_SMASHLIME, $FF
    dinstance MONSTER_STUBBIRD,       0, 7, 23,  100,  44, 100, 120,  90,  82, $FA, $32, $32, $64, SKILL_TWINHITS,  SKILL_RAINSLASH, SKILL_DRAKSLASH, $FF
    dinstance MONSTER_SPIKYBOY,       0, 7, 24,   80,  46,  75,  83,  50,  63, $96, $64, $64, $FA, SKILL_SACRIFICE, SKILL_HIGHJUMP,  SKILL_SMASHLIME, $FF
    ; C Class, second round
    dinstance MONSTER_HEALER,         0, 7, 22,   80,  50,  16,  80,  37, 250, $C8, $FA, $64, $C8, SKILL_HEAL,      SKILL_NONE,      SKILL_NONE,      $FF
    dinstance MONSTER_ROGUENITE,      0, 7, 27,  180,  48, 150, 120,  50,  79, $FA, $32, $96, $C8, SKILL_HEAL,      SKILL_EVILSLASH, SKILL_METALCUT,  $FF
    dinstance MONSTER_HEALER,         0, 7, 22,   90,  50,  16,  80,  37, 250, $C8, $FA, $64, $C8, SKILL_HEAL,      SKILL_NONE,      SKILL_NONE,      $FF
    ; C Class, final round (Teto)
    dinstance MONSTER_BOXSLIME,       0, 7, 27,  240,  39, 122, 100, 145,  76, $64, $32, $C8, $96, SKILL_UPPER,     SKILL_RAMMING,   SKILL_NONE,      $FF
    dinstance MONSTER_ROCKSLIME,      0, 7, 29,  170,  20, 155, 160,  89,  55, $C8, $64, $96, $FA, SKILL_HIGHJUMP,  SKILL_STRONGD,   SKILL_NONE,      $FF
    dinstance MONSTER_BOXSLIME,       0, 7, 27,  240,  29, 122, 100, 145,  76, $C8, $96, $96, $96, SKILL_BLAZEMORE, SKILL_RAMMING,   SKILL_NONE,      $FF
    ; B Class, first round
    dinstance MONSTER_HAMMERMAN,      0, 7, 32,  150,  30, 110,  90, 118,  62, $FA, $00, $32, $FA, SKILL_KAMIKAZE,  SKILL_EVILSLASH, SKILL_CHARGEUP,  $FF
    dinstance MONSTER_HAMMERMAN,      0, 7, 32,  130,  35, 120,  85, 118,  62, $FA, $00, $32, $FA, SKILL_KAMIKAZE,  SKILL_CHARGEUP,  SKILL_NONE,      $FF
    dinstance MONSTER_HAMMERMAN,      0, 7, 32,  120,  30, 115,  80, 118,  62, $FA, $00, $32, $FA, SKILL_KAMIKAZE,  SKILL_EVILSLASH, SKILL_CHARGEUP,  $FF
    ; B Class, second round
    dinstance MONSTER_AGDEVIL,        0, 7, 31,  200,  60,  98, 115,  90, 142, $C8, $32, $96, $96, SKILL_FIREBANE,  SKILL_SLEEPAIR,  SKILL_NONE,      $FF
    dinstance MONSTER_WINDMERGE,      0, 7, 31,  150,  80,  68, 126, 122, 165, $C8, $64, $C8, $64, SKILL_INFERMOST, SKILL_BARRIER,   SKILL_CURSEOFF,  $FF
    dinstance MONSTER_TREEBOY,        0, 7, 33,  200,  85,  64,  80, 156, 185, $C8, $C8, $C8, $32, SKILL_ICEBOLT,   SKILL_HEAL,      SKILL_CURSEOFF,  $FF
    ; B Class, final round (man from the restaurant)
    dinstance MONSTER_ARMYCRAB,       0, 7, 36,  170,  78, 100, 150, 105,  72, $FA, $32, $FA, $00, SKILL_INCREASE,  SKILL_METALCUT,  SKILL_NONE,      $FF
    dinstance MONSTER_MADDRAGON,      0, 7, 33,  220,  20, 200,  70, 150,  20, $FA, $00, $96, $96, SKILL_MASSACRE,  SKILL_EVILSLASH, SKILL_LUREDANCE, $FF
    dinstance MONSTER_ARMYCRAB,       0, 7, 36,  130,  78, 110, 140, 105,  72, $C8, $32, $FA, $00, SKILL_INCREASE,  SKILL_METALCUT,  SKILL_CALLHELP,  $FF
    ; A Class, first round
    dinstance MONSTER_FIREWEED,       0, 7, 39,  160,  80,  73, 108, 110, 147, $FA, $00, $96, $64, SKILL_BLAZEMORE, SKILL_DECHAOS,   SKILL_PALSYAIR,  $FF
    dinstance MONSTER_EVILBEAST,      0, 7, 37,  150,  60, 172, 132, 106, 186, $FA, $32, $FA, $96, SKILL_FIREBANE,  SKILL_ICEAIR,    SKILL_NONE,      $FF
    dinstance MONSTER_WYVERN,         0, 7, 39,  160,  75, 135, 100, 160, 205, $96, $96, $96, $FA, SKILL_SLEEPALL,  SKILL_HEALMORE,  SKILL_ICEAIR,    $FF
    ; A Class, second round
    dinstance MONSTER_GRIZZLY,        0, 7, 38,  250,  20, 260,  72, 200,  80, $FA, $00, $00, $C8, SKILL_SQUALLHIT, SKILL_BIGTRIP,   SKILL_NONE,      $FF
    dinstance MONSTER_LIONEX,         0, 7, 40,  260, 100, 122, 200, 210, 160, $96, $96, $96, $32, SKILL_INFERMOST, SKILL_HEALUS,    SKILL_VACUSLASH, $FF
    dinstance MONSTER_GRIZZLY,        0, 7, 38,  240,  20, 250,  72, 200,  80, $FA, $00, $00, $C8, SKILL_TWINSLASH, SKILL_SQUALLHIT, SKILL_BIGTRIP,   $FF
    ; A Class, final round (May)
    dinstance MONSTER_TOADSTOOL,      0, 7, 40,  250, 120, 150, 160, 150, 120, $00, $00, $00, $00, SKILL_NAPATTACK, SKILL_SLEEPAIR,  SKILL_MOUTHSHUT, $FF
    dinstance MONSTER_LIPSY,          0, 7, 38,  350, 110, 170, 100, 180, 150, $32, $00, $32, $00, SKILL_NAPATTACK, SKILL_AHHH,      SKILL_LUSHLICKS, $FF
    dinstance MONSTER_TOADSTOOL,      0, 7, 40,  250, 100, 140, 150, 120, 120, $00, $00, $00, $00, SKILL_NAPATTACK, SKILL_SLEEPAIR,  SKILL_MOUTHSHUT, $FF
    ; S Class, first round
    dinstance MONSTER_DANCEVEGI,      0, 7, 44,  160,  80,  84, 200, 120, 150, $C8, $00, $C8, $64, SKILL_KO_DANCE,  SKILL_SIDESTEP,  SKILL_LUREDANCE, $FF
    dinstance MONSTER_VOODOLL,        0, 7, 33,  190, 120, 168, 216, 150, 170, $FA, $00, $C8, $FA, SKILL_SURROUND,  SKILL_PANICALL,  SKILL_DEFENCE,   $FF
    dinstance MONSTER_DANCEVEGI,      0, 7, 44,  170,  85,  86, 190, 316, 150, $C8, $00, $96, $64, SKILL_KO_DANCE,  SKILL_SIDESTEP,  SKILL_LUREDANCE, $FF
    ; S Class, second round
    dinstance MONSTER_SLIME,          0, 7, 38,  250, 120, 200, 130, 260, 140, $64, $00, $64, $C8, SKILL_FIREBOLT,  SKILL_RADIANT,   SKILL_NONE,      $FF
    dinstance MONSTER_DRACKY,         0, 7, 38,  180, 150, 170, 130, 160, 200, $C8, $00, $C8, $96, SKILL_SLEEPALL,  SKILL_ROBMAGIC,  SKILL_RADIANT,   $FF
    dinstance MONSTER_ARMYANT,        0, 7, 33,  210, 100, 250, 200, 150,  90, $FA, $00, $00, $C8, SKILL_KAMIKAZE,  SKILL_YELLHELP,  SKILL_NAPATTACK, $FF
    ; S Class, final round (Medal Man)
    dinstance MONSTER_METABBLE,       0, 7, 38,   10, 490, 110, 670, 511, 255, $FA, $FA, $FA, $00, SKILL_FIREBOLT,  SKILL_EXPLODET,  SKILL_NONE,      $FF
    dinstance MONSTER_ROBOSTER,       0, 7, 38,  310, 145, 230, 180, 360, 210, $FA, $32, $32, $32, SKILL_QUADHITS,  SKILL_SQUALLHIT, SKILL_RAINSLASH, $FF
    dinstance MONSTER_METALDRAK,      0, 7, 43,  400, 105, 250, 200, 250, 130, $C8, $32, $96, $64, SKILL_MASSACRE,  SKILL_SANDSTORM, SKILL_NONE,      $FF
    ; Starry Night Tournament, first round
    dinstance MONSTER_CENTASAUR,      0, 7, 43,  320,  85, 205, 240, 320, 200, $FA, $32, $C8, $FA, SKILL_STOPSPELL, SKILL_FIRESLASH, SKILL_RAINSLASH, $FF
    dinstance MONSTER_OROCHI,         0, 7, 50,  300, 200, 160, 320, 250, 180, $FA, $00, $FA, $C8, SKILL_FIRESLASH, SKILL_QUADHITS,  SKILL_SCORCHING, $FF
    dinstance MONSTER_SWORDGON,       0, 7, 48,  250, 100, 180, 210, 100, 130, $C8, $C8, $C8, $FA, SKILL_CLEANCUT,  SKILL_RAINSLASH, SKILL_BLADED,    $FF
    ; Starry Night Tournament, second round
    dinstance MONSTER_ANDREAL,        0, 7, 48,  340, 180, 185, 260, 200, 250, $C8, $00, $C8, $C8, SKILL_INFERMOST, SKILL_SURROUND,  SKILL_POISONAIR, $FF
    dinstance MONSTER_UNICORN,        0, 7, 48,  220, 230, 170, 150, 290, 255, $FA, $FA, $FA, $FA, SKILL_HEALALL,   SKILL_REVIVE,    SKILL_ANTIDOTE,  $FF
    dinstance MONSTER_MADDRAGON,      0, 7, 33,  220,  20, 305, 120, 200,  30, $FA, $00, $C8, $96, SKILL_MASSACRE,  SKILL_EVILSLASH, SKILL_LUREDANCE, $FF
    ; Starry Night Tournament, final round (Milayou)
    dinstance MONSTER_METALKING,      0, 7, 50,    8, 700, 150, 700, 511, 255, $FA, $FA, $FA, $C8, SKILL_ZAP,       SKILL_NONE,      SKILL_NONE,      $FF
    dinstance MONSTER_COATOL,         0, 7, 50,  300, 180, 220, 240, 320, 200, $FA, $64, $96, $64, SKILL_EXPLODET,  SKILL_EVILSLASH, SKILL_BOLTSLASH, $FF
    dinstance MONSTER_RAINHAWK,       0, 7, 50,  380,  50, 200, 220, 320, 255, $C8, $96, $32, $FA, SKILL_MEGAMAGIC, SKILL_SURGE,     SKILL_NONE,      $FF
    ; monsters owned by GreatTree inhabitants (either gifts or breeding stock)
    dinstance MONSTER_LIZARDMAN,      0, 0, 20,   80,  40, 130,  70,  70,  70, $64, $64, $64, $64, SKILL_HEAL,      SKILL_VIVIFY,    SKILL_STRONGD,   $FF
    dinstance MONSTER_CATFLY,         0, 0, 20,   50,  40,  80,  50, 100,  70, $C8, $00, $32, $C8, SKILL_ROBMAGIC,  SKILL_UPPER,     SKILL_TWINHITS,  $FF
    dinstance MONSTER_DEADNITE,       0, 0, 20,   80,  80,  70,  90,  60,  90, $FA, $32, $96, $96, SKILL_DRAGONCUT, SKILL_DEVILCUT,  SKILL_SMASHLIME, $FF
    dinstance MONSTER_ICEMAN,         0, 0, 20,   80,  40,  80, 150,  50,  40, $00, $00, $00, $00, SKILL_COVER,     SKILL_TAILWIND,  SKILL_NONE,      $FF
    dinstance MONSTER_RAYBURN,        0, 0, 30,  150,  80, 160, 100, 220,  90, $FA, $96, $64, $C8, SKILL_BLAZE,     SKILL_FIREBAL,   SKILL_BANG,      $FF
    dinstance MONSTER_EYEDER,         0, 0, 30,  100,  60, 130, 120, 140, 100, $32, $96, $C8, $64, SKILL_ROBDANCE,  SKILL_SIDESTEP,  SKILL_LUREDANCE, $FF
    dinstance MONSTER_FANGSLIME,      0, 0, 30,   90,  60, 170, 130, 170,  90, $C8, $C8, $C8, $C8, SKILL_SUCKAIR,   SKILL_BIATTACK,  SKILL_BLADED,    $FF
    dinstance MONSTER_DROLL,          0, 0, 30,   80, 120, 100, 100,  80, 120, $96, $00, $64, $64, SKILL_BIRDBLOW,  SKILL_SMASHLIME, SKILL_DRAKSLASH, $FF   ; unused?
    dinstance MONSTER_YETI,           0, 0, 38,  220, 140, 230, 210, 100, 140, $96, $FA, $C8, $00, SKILL_STOPSPELL, SKILL_DANCESHUT, SKILL_MOUTHSHUT, $FF
    dinstance MONSTER_STONEMAN,       0, 0, 40,  300, 120, 200, 240,  90, 170, $FA, $32, $32, $C8, SKILL_HEALUS,    SKILL_FAREWELL,  SKILL_AHHH,      $FF
    dinstance MONSTER_METALY,         0, 0, 20,   10, 200,  30, 300, 200,  50, $00, $64, $64, $00, SKILL_COVER,     SKILL_LIFEDANCE, SKILL_NONE,      $FF
    dinstance MONSTER_SKELETOR,       0, 0, 40,  160, 170, 310, 260, 140, 180, $FA, $32, $FA, $96, SKILL_CLEANCUT,  SKILL_MULTICUT,  SKILL_GIGASLASH, $FF
    ; fake treasure chest contents
    dinstance MONSTER_MIMIC,         10, 4,  1,   12,   2,  10,   6,   5,   8, $C8, $64, $64, $32, SKILL_NONE,      SKILL_NONE,      SKILL_NONE,      $FF
    dinstance MONSTER_MIMIC,         30, 4,  5,   20,   9,  20,  12,  10,  30, $C8, $64, $64, $32, SKILL_BLAZE,     SKILL_NONE,      SKILL_NONE,      $FF
    dinstance MONSTER_MIMIC,         90, 4, 10,   45,  20,  40,  20,  20,  80, $C8, $64, $64, $32, SKILL_BLAZE,     SKILL_BEAT,      SKILL_NONE,      $FF
    dinstance MONSTER_MIMIC,        300, 4, 20,   80,  40,  60,  40,  40, 130, $C8, $64, $64, $32, SKILL_BLAZEMORE, SKILL_BEAT,      SKILL_NONE,      $FF
    dinstance MONSTER_MIMIC,        600, 4, 30,  125,  60,  80,  60,  60, 170, $C8, $64, $64, $32, SKILL_BLAZEMORE, SKILL_BEAT,      SKILL_NONE,      $FF
    dinstance MONSTER_MIMIC,       1200, 4, 38,  165,  80, 100,  80,  80, 210, $C8, $64, $64, $32, SKILL_BLAZEMOST, SKILL_DEFEAT,    SKILL_NONE,      $FF
    dinstance MONSTER_MIMIC,       3076, 4, 38,  295, 160, 120, 110,  90, 225, $C8, $64, $64, $32, SKILL_BLAZEMOST, SKILL_DEFEAT,    SKILL_NONE,      $FF
    dinstance MONSTER_MIMIC,       6076, 4, 38,  330, 220, 200, 150, 110, 225, $C8, $64, $64, $32, SKILL_BLAZEMOST, SKILL_DEFEAT,    SKILL_NONE,      $FF
    ; ???
    dinstance MONSTER_SLIME,          0, 0,  1,    4,   2,   3,   4,   8,   5, $00, $FA, $64, $96, SKILL_NONE,      SKILL_NONE,      SKILL_NONE,      $FF
    dinstance MONSTER_DRAGONKID,      0, 0,  1,    8,   4,  10,   7,   6,   8, $FA, $32, $00, $FA, SKILL_NONE,      SKILL_NONE,      SKILL_NONE,      $FF
    dinstance MONSTER_ANTEATER,       0, 0,  1,    6,   3,   6,   4,   7,   5, $64, $96, $FA, $32, SKILL_NONE,      SKILL_NONE,      SKILL_NONE,      $FF
    dinstance MONSTER_1EYECLOWN,      0, 0,  1,    7,   8,   5,   3,   6,  10, $32, $64, $FA, $96, SKILL_NONE,      SKILL_NONE,      SKILL_NONE,      $FF
    dinstance MONSTER_BLIZZARDY,      0, 0,  1,   15,  10,  12,   8,  18,  10, $96, $C8, $64, $C8, SKILL_NONE,      SKILL_NONE,      SKILL_NONE,      $FF
    dinstance MONSTER_PHOENIX,        0, 0,  1,   15,  10,  12,   8,  18,  10, $96, $C8, $64, $C8, SKILL_NONE,      SKILL_NONE,      SKILL_NONE,      $FF
    dinstance MONSTER_LAVAMAN,        0, 0,  1,   18,   8,  12,  18,   4,   6, $FA, $64, $32, $96, SKILL_NONE,      SKILL_NONE,      SKILL_NONE,      $FF
    dinstance MONSTER_ICEMAN,         0, 0,  1,   18,   8,  12,  18,   4,   6, $FA, $64, $32, $96, SKILL_NONE,      SKILL_NONE,      SKILL_NONE,      $FF
    dinstance MONSTER_NITEWHIP,       0, 0,  1,   20,  20,  20,  15,  25,  15, $C8, $64, $C8, $C8, SKILL_NONE,      SKILL_NONE,      SKILL_NONE,      $FF
    dinstance MONSTER_ARMORPEDE,      0, 0,  1,   30,  20,  20,  30,  15,  15, $C8, $96, $64, $C8, SKILL_NONE,      SKILL_NONE,      SKILL_NONE,      $FF
    dinstance MONSTER_MANEATER,       0, 0,  1,   30,  30,  25,  20,  20,  20, $C8, $32, $96, $64, SKILL_NONE,      SKILL_NONE,      SKILL_NONE,      $FF
    ; Medal Man gift eggs
    dinstance MONSTER_ZAPBIRD,        0, 0,  1,   30,  25,  30,  25,  30,  20, $96, $C8, $C8, $96, SKILL_NONE,      SKILL_NONE,      SKILL_NONE,      $FF
    dinstance MONSTER_TRUMPETER,      0, 0,  1,   35,  25,  35,  30,  25,  25, $FA, $96, $64, $64, SKILL_NONE,      SKILL_NONE,      SKILL_NONE,      $FF
    dinstance MONSTER_CHOPCLOWN,      0, 0,  1,   35,  20,  35,  20,  35,  20, $C8, $64, $C8, $C8, SKILL_NONE,      SKILL_NONE,      SKILL_NONE,      $FF   ; unused
    dinstance MONSTER_SPIKEROUS,      0, 0,  1,   40,  30,  40,  60,  20,  30, $FA, $C8, $96, $96, SKILL_NONE,      SKILL_NONE,      SKILL_NONE,      $FF
    dinstance MONSTER_METABBLE,       0, 0,  1,   10,  50,  20, 200, 200,  30, $00, $96, $64, $00, SKILL_NONE,      SKILL_NONE,      SKILL_NONE,      $FF
    ; FaceTree minions
    dinstance MONSTER_STUBSUCK,     300, 4, 20,   80, 120,  40,  30,  30, 100, $64, $32, $C8, $64, SKILL_SLEEPALL,  SKILL_ZOMBIECUT, SKILL_NONE,      $FF
    ; Durran minions
    dinstance MONSTER_SERVANT,        0, 6, 55,  300, 350, 380, 220, 306, 255, $FA, $32, $64, $FA, SKILL_BLAZEMOST, SKILL_BLIZZARD,  SKILL_NONE,      $FF
    dinstance $D7,                    0, 7, 60, 2000, 200, 390, 220, 400, 255, $FA, $32, $64, $C8, SKILL_EVILSLASH, SKILL_BOLTSLASH, SKILL_RAINSLASH, $FF   ; TERRY?
    ; summons
    dinstance $D8,                    0, 7, 30,  200, 100, 180, 150,  80, 150, $FA, $FA, $FA, $FA, SKILL_HEALMORE,  SKILL_LIGHTNING, SKILL_COVER,     $FF   ; Tatsu
    dinstance $D9,                    0, 7, 40,  300, 200, 210, 160, 120, 100, $FA, $FA, $FA, $FA, SKILL_TWINHITS,  SKILL_SCORCHING, SKILL_SICKLICK,  $FF   ; Diago
    dinstance $DA,                    0, 7, 50,  450, 200, 250, 190, 150, 200, $FA, $FA, $FA, $FA, SKILL_EVILSLASH, SKILL_SQUALLHIT, SKILL_RAINSLASH, $FF   ; Samsi
    dinstance $DB,                    0, 7, 60,  700, 400, 350, 300, 100, 250, $FA, $FA, $FA, $FA, SKILL_ICESTORM,  SKILL_HELLBLAST, SKILL_DEMAGIC,   $FF   ; Bazoo
    dinstance $DC,                    0, 7, 50,  999, 300, 300, 200, 200, 200, $FA, $00, $00, $FA, SKILL_WHITEFIRE, SKILL_WHITEAIR,  SKILL_DEMAGIC,   $FF   ; ???
    ; BattleRex minions
    dinstance MONSTER_DRAGONKID,   1000, 4, 23,   70,  60, 100,  60,  90,  90, $96, $32, $96, $FA, SKILL_BLAZEAIR,  SKILL_SLEEPAIR,  SKILL_DODGE,     $FF
    ; egg from the farm
    dinstance MONSTER_SKYDRAGON,      0, 0,  1,   20,  27,  28,  20,  15,  16, $96, $32, $C8, $FA, SKILL_NONE,      SKILL_NONE,      SKILL_NONE,      $FF
    ; Slio
    dinstance MONSTER_SLIME,          0, 0,  1,   60,  50,  64,  54, 120,  65, $00, $00, $64, $C8, SKILL_NONE,      SKILL_NONE,      SKILL_NONE,      $FF
    ; foreign masters, level 1-18
    dinstance MONSTER_HAMMERMAN,     70, 5,  5,   25,  12,  28,  14,  22,  45, $C8, $32, $64, $C8, SKILL_BOLTSLASH, SKILL_VACUSLASH, SKILL_ICESLASH,  $FF
    dinstance MONSTER_GOATEGON,      80, 5,  6,   26,  10,  32,  22,  26,  25, $FA, $00, $96, $C8, SKILL_TWINSLASH, SKILL_RAMMING,   SKILL_BESERKER,  $FF
    dinstance MONSTER_STAGBUG,       83, 5,  5,   27,  12,  26,  28,  15,  28, $FA, $64, $32, $96, SKILL_VACUSLASH, SKILL_ICESLASH,  SKILL_METALCUT,  $FF
    dinstance MONSTER_SPOTKING,      86, 5,  6,   32,  20,  25,  20,  32,  43, $C8, $64, $64, $FA, SKILL_BIATTACK,  SKILL_CALLHELP,  SKILL_RAINSLASH, $FF
    dinstance MONSTER_LIZARDFLY,     90, 5,  6,   36,  16,  28,  16,  10,  30, $C8, $00, $C8, $32, SKILL_FIREAIR,   SKILL_FRIGIDAIR, SKILL_NONE,      $FF
    dinstance MONSTER_DUCKKITE,      88, 5,  5,   22,  24,  25,  21,  31,  34, $C8, $32, $00, $64, SKILL_BEASTCUT,  SKILL_BIRDBLOW,  SKILL_SMASHLIME, $FF
    dinstance MONSTER_DARKEYE,       81, 5,  6,   22,  42,  21,  14,  36,  41, $64, $32, $96, $96, SKILL_TWINHITS,  SKILL_MAGICBACK, SKILL_SIDESTEP,  $FF
    dinstance MONSTER_CACTIBALL,    100, 5,  6,   32,  37,  25,  24,  17,  38, $64, $64, $C8, $64, SKILL_LUREDANCE, SKILL_LUSHLICKS, SKILL_BLADED,    $FF
    dinstance MONSTER_SNAPPER,       50, 5,  5,   30,  23,  20,  10,  12,  34, $96, $32, $FA, $C8, SKILL_BEAT,      SKILL_SLOW,      SKILL_SANDSTORM, $FF
    dinstance MONSTER_REAPER,        76, 5,  6,   31,  17,  29,  13,  22,  39, $64, $00, $96, $64, SKILL_STOPSPELL, SKILL_DANCESHUT, SKILL_MOUTHSHUT, $FF
    dinstance MONSTER_MISTYWING,     68, 5,  6,   35,  34,  16,  24,  32,  30, $32, $00, $FA, $96, SKILL_SLEEP,     SKILL_WARCRY,    SKILL_TAILWIND,  $FF
    dinstance MONSTER_GASGON,        75, 5,  5,   26,   6,  34,  25,  14,  32, $96, $96, $96, $64, SKILL_HEAL,      SKILL_DODGE,     SKILL_NONE,      $FF
    dinstance MONSTER_SLIMENITE,     63, 5,  5,   29,  24,  30,  18,  34,  33, $96, $64, $32, $FA, SKILL_UPPER,     SKILL_SPEED,     SKILL_HEAL,      $FF
    dinstance MONSTER_TAILEATER,     76, 5,  6,   23,  20,  21,  20,  24,  28, $C8, $96, $96, $32, SKILL_MAGICBACK, SKILL_HEAL,      SKILL_NONE,      $FF
    dinstance MONSTER_TREEBOY,       76, 5,  5,   37,  45,  16,  21,  19,  37, $64, $96, $C8, $C8, SKILL_ICEBOLT,   SKILL_HEAL,      SKILL_VIVIFY,    $FF
    dinstance MONSTER_AGDEVIL,       86, 5,  5,   30,  36,  32,  23,  23,  45, $C8, $96, $C8, $C8, SKILL_BESERKER,  SKILL_COVER,     SKILL_STRONGD,   $FF
    ; foreign masters, level 19-38
    dinstance MONSTER_WYVERN,       183, 5, 12,   46,  32,  52,  28,  48,  84, $C8, $32, $64, $00, SKILL_BIATTACK,  SKILL_SQUALLHIT, SKILL_WINDBEAST, $FF
    dinstance MONSTER_AMBERWEED,    186, 5, 13,   36,  64,  50,  36,  39,  42, $FA, $00, $00, $96, SKILL_FIREBAL,   SKILL_DEVILCUT,  SKILL_BLAZEAIR,  $FF
    dinstance MONSTER_ARCDEMON,     200, 5, 12,   48,  46,  53,  42,  18,  88, $C8, $64, $C8, $96, SKILL_FIRESLASH, SKILL_VACUSLASH, SKILL_ICESLASH,  $FF
    dinstance MONSTER_ICEMAN,       216, 3, 12,   38,  41,  47,  40,  21,  51, $C8, $00, $00, $C8, SKILL_MASSACRE,  SKILL_SQUALLHIT, SKILL_BRANCHING, $FF
    dinstance MONSTER_SLIMEBORG,    203, 5, 12,   52,  24,  43,  31,  49,  61, $FA, $64, $64, $96, SKILL_CLEANCUT,  SKILL_PSYCHEUP,  SKILL_WARCRY,    $FF
    dinstance MONSTER_ARMYCRAB,     190, 5, 12,   46,  31,  50,  36,  28,  50, $64, $00, $96, $32, SKILL_CURSE,     SKILL_ODDDANCE,  SKILL_DRAKSLASH, $FF
    dinstance MONSTER_SHADOW,       166, 5, 13,   59,  40,  54,  50,  26,  46, $96, $32, $C8, $96, SKILL_SLEEP,     SKILL_ROBMAGIC,  SKILL_SPEEDUP,   $FF
    dinstance MONSTER_LIZARDMAN,    176, 5, 13,   55,  34,  52,  34,  32,  48, $C8, $64, $C8, $00, SKILL_PANICALL,  SKILL_LUREDANCE, SKILL_LEGSWEEP,  $FF
    dinstance MONSTER_MADHORNET,    210, 6, 13,   60,  37,  54,  31,  54,  55, $96, $32, $C8, $FA, SKILL_CURSE,     SKILL_SANDSTORM, SKILL_TAILWIND,  $FF
    dinstance MONSTER_FIREWEED,     153, 5, 12,   49,  42,  40,  29,  30,  46, $64, $00, $FA, $96, SKILL_PANIDANCE, SKILL_LUSHLICKS, SKILL_WARCRY,    $FF
    dinstance MONSTER_WINDMERGE,    196, 5, 12,   44,  45,  38,  40,  40,  51, $96, $64, $32, $C8, SKILL_HEAL,      SKILL_COVER,     SKILL_TAILWIND,  $FF
    dinstance MONSTER_ORC,          180, 5, 13,   51,  29,  36,  25,  44,  57, $C8, $C8, $C8, $32, SKILL_HEAL,      SKILL_VIVIFY,    SKILL_LUREDANCE, $FF
    dinstance MONSTER_DROLL,        150, 5, 12,   39,  50,  40,  28,  31,  55, $00, $C8, $C8, $FA, SKILL_HEAL,      SKILL_THICKFOG,  SKILL_COVER,     $FF
    dinstance MONSTER_PHOENIX,      193, 5, 12,   50,  47,  53,  27,  41,  47, $C8, $C8, $C8, $FA, SKILL_HEAL,      SKILL_BLAZEAIR,  SKILL_TAILWIND,  $FF
    dinstance MONSTER_GIANTMOTH,    170, 5, 12,   41,  46,  40,  36,  29,  57, $C8, $96, $C8, $64, SKILL_HEAL,      SKILL_POISONHIT, SKILL_ODDDANCE,  $FF
    dinstance MONSTER_GRIZZLY,      183, 6, 13,   57,  43,  62,  23,  48,  24, $FA, $FA, $FA, $FA, SKILL_HEAL,      SKILL_MASSACRE,  SKILL_RADIANT,   $FF
    ; foreign masters, level 39-58
    dinstance MONSTER_WILDAPE,      500, 5, 20,   65,  46,  78,  38,  51,  47, $FA, $00, $00, $64, SKILL_CHARGEUP,  SKILL_METALCUT,  SKILL_CLEANCUT,  $FF
    dinstance MONSTER_BLIZZARDY,    513, 5, 20,   72,  53,  71,  46,  46,  57, $C8, $64, $64, $96, SKILL_INFERMORE, SKILL_TWINSLASH, SKILL_HIGHJUMP,  $FF
    dinstance MONSTER_EVILWAND,     526, 5, 21,   66,  55,  59,  45,  53,  45, $FA, $00, $C8, $64, SKILL_BLAZEMORE, SKILL_BOOM,      SKILL_CHARGEUP,  $FF
    dinstance MONSTER_LAVAMAN,      546, 5, 21,   80,  43,  88,  49,  40,  51, $C8, $32, $32, $96, SKILL_BLAZEMORE, SKILL_FIRESLASH, SKILL_METALCUT,  $FF
    dinstance MONSTER_CURSELAMP,    553, 5, 20,   60,  70,  62,  50,  42,  59, $FA, $64, $64, $00, SKILL_SNOWSTORM, SKILL_SACRIFICE, SKILL_DRAGONCUT, $FF
    dinstance MONSTER_MADSPIRIT,    546, 5, 20,   63,  68,  85,  55,  64,  60, $96, $00, $C8, $64, SKILL_PANICALL,  SKILL_DEFENCE,   SKILL_BOUNCE,    $FF
    dinstance MONSTER_GISMO,        563, 5, 21,   57,  47,  69,  52,  72,  46, $96, $32, $96, $64, SKILL_SLEEPALL,  SKILL_SLOWALL,   SKILL_POISONAIR, $FF
    dinstance MONSTER_DEADNITE,     516, 5, 20,   80,  65,  72,  67,  52,  77, $64, $00, $64, $64, SKILL_SPEEDUP,   SKILL_WARCRY,    SKILL_DANCESHUT, $FF
    dinstance MONSTER_ROGUENITE,    533, 5, 21,   75,  61, 103, 120,  40,  61, $C8, $64, $C8, $C8, SKILL_TAKEMAGIC, SKILL_CURSE,     SKILL_SICKLICK,  $FF
    dinstance MONSTER_KINGCOBRA,    563, 5, 21,  100,  39,  80,  72, 110,  41, $96, $32, $96, $00, SKILL_BEAT,      SKILL_TWINHITS,  SKILL_EERIELITE, $FF
    dinstance MONSTER_PHOENIX,      533, 5, 20,   81,  46,  77,  51,  66,  40, $C8, $96, $00, $96, SKILL_HEAL,      SKILL_MAGICWALL, SKILL_VACUSLASH, $FF
    dinstance MONSTER_DRAGON,       563, 5, 21,  105,  36,  83,  63,  48,  64, $C8, $C8, $C8, $C8, SKILL_HEAL,      SKILL_CALLHELP,  SKILL_COVER,     $FF
    dinstance MONSTER_METALY,      4000, 6, 20,   10, 200,  45, 300, 250,  66, $FA, $C8, $C8, $FA, SKILL_HEAL,      SKILL_MASSACRE,  SKILL_GUARDIAN,  $FF
    dinstance MONSTER_LANDOWL,      516, 5, 21,   95,  57, 110,  57,  53,  48, $C8, $C8, $C8, $FA, SKILL_INFERMORE, SKILL_HEAL,      SKILL_SURGE,     $FF
    dinstance MONSTER_EVILBEAST,    546, 5, 20,   84,  53, 110,  71,  64, 100, $FA, $FA, $FA, $00, SKILL_BOLT,      SKILL_HEAL,      SKILL_BIGTRIP,   $FF
    dinstance MONSTER_LIPSY,        333, 5, 20,   52,  43,  46,  46,  36,  57, $FA, $FA, $FA, $FA, SKILL_HEALUS,    SKILL_FAREWELL,  SKILL_KAMIKAZE,  $FF
    ; foreign masters, level 59-78
    dinstance MONSTER_LIONEX,      1000, 5, 26,  110,  70, 100, 106, 122, 117, $FA, $96, $C8, $C8, SKILL_FIREBANE,  SKILL_SUCKAIR,   SKILL_SCORCHING, $FF
    dinstance MONSTER_RAYBURN,     1006, 5, 26,   93,  55, 104,  62, 136,  65, $C8, $00, $00, $FA, SKILL_LIGHTNING, SKILL_ICESTORM,  SKILL_PARALYZE,  $FF
    dinstance MONSTER_MANEATER,    1033, 5, 27,   88, 114,  93,  45,  42,  57, $C8, $64, $96, $C8, SKILL_ZAP,       SKILL_ROCKTHROW, SKILL_LUSHLICKS, $FF
    dinstance MONSTER_ROTRAVEN,    1020, 5, 26,   67,  84, 114,  70, 120, 102, $96, $32, $64, $00, SKILL_BEAT,      SKILL_VACUSLASH, SKILL_BIATTACK,  $FF
    dinstance MONSTER_OGRE,        1043, 5, 27,  134,  72, 120, 107,  52, 115, $32, $00, $00, $00, SKILL_TWINSLASH, SKILL_BEASTCUT,  SKILL_VACUUM,    $FF
    dinstance MONSTER_IRONTURT,    1020, 5, 26,  140,  60, 130, 100,  61,  91, $64, $64, $64, $64, SKILL_SACRIFICE, SKILL_BARRIER,   SKILL_TATSUCALL, $FF
    dinstance MONSTER_COPYCAT,     1066, 5, 26,   55,  45,  82,  61,  64,  57, $96, $96, $96, $32, SKILL_MAGICWALL, SKILL_IMITATE,   SKILL_THICKFOG,  $FF
    dinstance MONSTER_DARKCRAB,    1006, 5, 25,  130,  64, 136, 111,  54,  70, $32, $00, $96, $FA, SKILL_STOPSPELL, SKILL_ROBDANCE,  SKILL_SICKLICK,  $FF
    dinstance MONSTER_WINGSNAKE,   1060, 5, 26,  132,  77, 120,  89,  85,  78, $64, $32, $64, $64, SKILL_DEFENCE,   SKILL_PANIDANCE, SKILL_BRANCHING, $FF
    dinstance MONSTER_DANCEVEGI,   1066, 5, 25,   83,  61,  59, 120, 156,  85, $FA, $FA, $FA, $FA, SKILL_TWINHITS,  SKILL_LUREDANCE, SKILL_MOUTHSHUT, $FF
    dinstance MONSTER_GRENDAL,      996, 5, 26,   99,  41, 135, 155, 112, 113, $96, $96, $96, $64, SKILL_HEALMORE,  SKILL_PSYCHEUP,  SKILL_LIFESONG,  $FF
    dinstance MONSTER_JEWELBAG,    1050, 5, 25,   68,  76, 123, 126,  40, 130, $C8, $C8, $C8, $32, SKILL_HEALUS,    SKILL_SIDESTEP,  SKILL_DIAGOCALL, $FF
    dinstance MONSTER_PHOENIX,     1040, 5, 26,  110,  65, 125,  70, 100,  75, $64, $64, $64, $FA, SKILL_CALLHELP,  SKILL_POISONAIR, SKILL_HUSTLE,    $FF
    dinstance MONSTER_GOATEGON,    1023, 5, 25,  133, 107, 155,  82,  98, 128, $C8, $96, $C8, $96, SKILL_HEALALL,   SKILL_VIVIFY,    SKILL_SQUALLHIT, $FF
    dinstance MONSTER_FACETREE,    1040, 5, 26,  125, 119,  67,  74,  51,  86, $32, $00, $32, $00, SKILL_MAGICWALL, SKILL_GUARDIAN,  SKILL_DRAKSLASH, $FF
    dinstance MONSTER_SWORDGON,    1093, 5, 25,  126,  95,  95, 128,  46,  67, $FA, $C8, $C8, $FA, SKILL_ZAP,       SKILL_INCREASE,  SKILL_HEALMORE,  $FF
    ; foreign masters, level 79-98
    dinstance MONSTER_SUPERTEN,    1666, 5, 33,  156,  60,  77,  60, 136,  78, $64, $00, $64, $C8, SKILL_FIREBOLT,  SKILL_FIRESLASH, SKILL_QUADHITS,  $FF
    dinstance MONSTER_MADMIRROR,   1666, 5, 33,  164,  62,  71,  64, 170, 120, $96, $32, $32, $FA, SKILL_BOOM,      SKILL_BIRDBLOW,  SKILL_RAINSLASH, $FF
    dinstance MONSTER_YETI,        1706, 5, 34,  198, 110, 170, 170,  80,  94, $FA, $96, $64, $64, SKILL_INFERMOST, SKILL_HIGHJUMP,  SKILL_VACUUM,    $FF
    dinstance MONSTER_SKULLGON,    1720, 5, 33,  164,  63, 132, 174,  85, 169, $C8, $64, $32, $FA, SKILL_BLAZEMOST, SKILL_TWINSLASH, SKILL_SQUALLHIT, $FF
    dinstance MONSTER_CENTASAUR,   1756, 5, 33,  200, 126, 225, 270, 320, 220, $FA, $32, $32, $96, SKILL_SACRIFICE, SKILL_VACUUM,    SKILL_POISONHIT, $FF
    dinstance MONSTER_EVILARMOR,   1716, 5, 34,  185, 102, 229, 420, 135, 148, $C8, $32, $FA, $64, SKILL_SLEEPALL,  SKILL_BARRIER,   SKILL_RAINSLASH, $FF
    dinstance MONSTER_VOODOLL,     1760, 5, 33,  154, 148, 168, 164, 120, 133, $64, $32, $96, $C8, SKILL_BOUNCE,    SKILL_POISONAIR, SKILL_WARCRY,    $FF
    dinstance MONSTER_GOLEM,       1723, 5, 33,  210,  59, 108, 182,  52, 192, $64, $64, $64, $FA, SKILL_PANIDANCE, SKILL_ROBDANCE,  SKILL_HUSTLE,    $FF
    dinstance MONSTER_LAVAMAN,     1713, 5, 33,  180,  63, 158, 179,  87, 101, $C8, $32, $C8, $96, SKILL_CURSE,     SKILL_EERIELITE, SKILL_SAMSICALL, $FF
    dinstance MONSTER_BLIZZARDY,   1746, 5, 33,  182, 103, 121, 116, 152, 107, $C8, $64, $C8, $96, SKILL_SANDSTORM, SKILL_SICKLICK,  SKILL_STORMWIND, $FF
    dinstance MONSTER_MADCAT,      1726, 5, 34,  166,  64, 159, 124, 163, 107, $96, $96, $96, $FA, SKILL_HEALMORE,  SKILL_ICESLASH,  SKILL_LUREDANCE, $FF
    dinstance MONSTER_STONEMAN,    1740, 5, 34,  220,  96, 147, 220,  71, 125, $C8, $96, $C8, $C8, SKILL_FIREBOLT,  SKILL_HEALUS,    SKILL_SUCKALL,   $FF
    dinstance MONSTER_BIGEYE,      1703, 5, 33,  155, 134, 162, 122, 137, 100, $FA, $FA, $FA, $FA, SKILL_HEALUS,    SKILL_FAREWELL,  SKILL_HIGHJUMP,  $FF
    dinstance MONSTER_METALY,      6076, 6, 30,   15, 300,  65, 400, 350,  86, $FA, $C8, $FA, $64, SKILL_HEAL,      SKILL_KAMIKAZE,  SKILL_SUCKALL,   $FF
    dinstance MONSTER_GASGON,      1746, 5, 34,  164,  58,  67, 117,  80,  97, $96, $32, $64, $00, SKILL_HEALMORE,  SKILL_YELLHELP,  SKILL_SUCKALL,   $FF
    dinstance MONSTER_GIGANTES,    1730, 5, 33,  210,  20, 226,  84, 128,  18, $64, $64, $64, $64, SKILL_IMITATE,   SKILL_GUARDIAN,  SKILL_SMASHLIME, $FF
    ; foreign masters, level 99-118
    dinstance MONSTER_SKELETOR,    3433, 5, 39,  145, 160, 272, 224, 128, 166, $C8, $32, $32, $96, SKILL_BIRDBLOW,  SKILL_FOCUS,     SKILL_DRAKSLASH, $FF
    dinstance MONSTER_SNAPPER,     3520, 5, 40,  186, 161, 234, 124, 127, 118, $FA, $00, $64, $C8, SKILL_SUCKAIR,   SKILL_WHITEFIRE, SKILL_BRANCHING, $FF
    dinstance MONSTER_LAVAMAN,     3546, 5, 38,  190, 113, 198, 159, 140, 101, $C8, $32, $32, $96, SKILL_THORDAIN,  SKILL_TWINSLASH, SKILL_SQUALLHIT, $FF
    dinstance MONSTER_PHOENIX,     3533, 5, 40,  181, 116, 177, 121, 155,  81, $C8, $32, $00, $96, SKILL_DEVILCUT,  SKILL_NAPATTACK, SKILL_BAZOOCALL, $FF
    dinstance MONSTER_KINGSLIME,   3483, 5, 38,  250,  94, 218, 181, 206, 200, $FA, $96, $00, $C8, SKILL_BLIZZARD,  SKILL_EVILSLASH, SKILL_DRAGONCUT, $FF
    dinstance MONSTER_MADPECKER,   3516, 5, 38,  139,  88, 197, 115, 186, 127, $C8, $00, $C8, $64, SKILL_SLEEPALL,  SKILL_TWINHITS,  SKILL_BEASTCUT,  $FF
    dinstance MONSTER_BOMBCRAG,    3496, 5, 40,  260, 174, 156, 233,  20, 134, $96, $32, $96, $00, SKILL_TRANSFORM, SKILL_PALSYAIR,  SKILL_BIGTRIP,   $FF
    dinstance MONSTER_FANGSLIME,   3553, 5, 33,  184,  78, 166, 151, 311, 141, $64, $00, $C8, $FA, SKILL_INCREASE,  SKILL_EERIELITE, SKILL_WARCRY,    $FF
    dinstance MONSTER_ZAPBIRD,     3583, 5, 39,  224,  87, 187, 167, 210, 222, $64, $64, $64, $32, SKILL_ULTRADOWN, SKILL_DANCESHUT, SKILL_MOUTHSHUT, $FF
    dinstance MONSTER_SPIKEROUS,   3466, 5, 28,  204,  18, 177, 300,  81, 104, $C8, $C8, $C8, $64, SKILL_BOUNCE,    SKILL_POISONHIT, SKILL_THICKFOG,  $FF
    dinstance MONSTER_CENTASAUR,   3540, 5, 40,  251, 124, 290, 352, 338, 211, $C8, $C8, $C8, $C8, SKILL_VIVIFY,    SKILL_FIRESLASH, SKILL_AHHH,      $FF
    dinstance MONSTER_BOMBCRAG,    3483, 5, 39,  210, 157, 138, 239,  18, 132, $64, $64, $64, $96, SKILL_VACUSLASH, SKILL_SURGE,     SKILL_MOUTHSHUT, $FF
    dinstance MONSTER_SKYDRAGON,   3516, 5, 33,  165, 164, 198, 175, 123, 112, $FA, $FA, $FA, $FA, SKILL_SACRIFICE, SKILL_SPEEDUP,   SKILL_REVIVE,    $FF
    dinstance MONSTER_BATTLEREX,   3473, 5, 39,  187, 122, 286, 187, 200, 141, $C8, $96, $96, $00, SKILL_WHITEAIR,  SKILL_CURSE,     SKILL_HUSTLE,    $FF
    dinstance MONSTER_FUNKYBIRD,   3540, 5, 39,  178, 197, 151, 227, 143, 198, $32, $32, $32, $00, SKILL_INCREASE,  SKILL_HEALUS,    SKILL_LIGHTNING, $FF
    dinstance MONSTER_STONEMAN,    3496, 5, 40,  222, 126, 199, 257, 107, 184, $64, $64, $64, $64, SKILL_STOPSPELL, SKILL_BAZOOCALL, SKILL_GUARDIAN,  $FF
    ; foreign masters, level 119-138
    dinstance MONSTER_GULPBEAST,   7140, 6, 38,  340,  90, 300, 185, 150,  90, $FA, $00, $64, $32, SKILL_BLIZZARD,  SKILL_HIGHJUMP,  SKILL_ZOMBIECUT, $FF
    dinstance MONSTER_GREATDRAK,   7260, 6, 45,  350, 130, 240, 210, 170, 210, $FA, $00, $32, $C8, SKILL_INFERMOST, SKILL_CHARGEUP,  SKILL_SMASHLIME, $FF
    dinstance MONSTER_TRUMPETER,   7480, 6, 45,  190, 150, 330, 210, 190, 130, $C8, $32, $64, $C8, SKILL_BLAZEMOST, SKILL_BOLTSLASH, SKILL_DEVILCUT,  $FF
    dinstance MONSTER_METALDRAK,   7836, 6, 43,  310, 105, 240, 220, 250, 130, $96, $32, $32, $64, SKILL_EXPLODET,  SKILL_EVILSLASH, SKILL_ICESLASH,  $FF
    dinstance MONSTER_ZAPBIRD,     7933, 6, 45,  260, 120, 210, 200, 240, 255, $FA, $32, $96, $64, SKILL_MASSACRE,  SKILL_VACUSLASH, SKILL_VACUUM,    $FF
    dinstance MONSTER_WHIPBIRD,    7273, 6, 45,  480, 200, 150, 250, 240, 230, $C8, $C8, $96, $FA, SKILL_FAREWELL,  SKILL_QUADHITS,  SKILL_SANDSTORM, $FF
    dinstance MONSTER_METABBLE,   30376, 6, 38,   23, 490, 190, 670, 511, 255, $64, $32, $96, $00, SKILL_BOUNCE,    SKILL_RAMMING,   SKILL_YELLHELP,  $FF
    dinstance MONSTER_BALZAK,      7783, 6, 33,  330, 165, 210, 320, 280, 180, $FA, $64, $C8, $FA, SKILL_SLEEPALL,  SKILL_PARALYZE,  SKILL_LUREDANCE, $FF
    dinstance MONSTER_MADDRAGON,   7176, 6, 33,  200,  24, 335, 130, 190,  30, $FA, $00, $C8, $96, SKILL_SUCKAIR,   SKILL_WHITEAIR,  SKILL_MOUTHSHUT, $FF
    dinstance MONSTER_GOATHORN,    7200, 6, 33,  150, 190, 220, 150, 190, 240, $C8, $96, $FA, $00, SKILL_DEFENCE,   SKILL_CURSE,     SKILL_SICKLICK,  $FF
    dinstance MONSTER_DEADNOBLE,   7540, 6, 46,  340, 240, 340, 280, 280, 215, $C8, $FA, $C8, $C8, SKILL_HEALALL,   SKILL_FIRESLASH, SKILL_DODGE,     $FF
    dinstance MONSTER_ROBOSTER,    7033, 6, 38,  280, 245, 340, 230, 360, 210, $FA, $FA, $FA, $32, SKILL_HEALUS,    SKILL_MULTICUT,  SKILL_STORMWIND, $FF
    dinstance MONSTER_ANDREAL,     7116, 6, 45,  340, 280, 200, 320, 200, 250, $FA, $FA, $C8, $C8, SKILL_REVIVE,    SKILL_SURGE,     SKILL_SUCKALL,   $FF
    dinstance MONSTER_UNICORN,     9506, 6, 45,  200, 330, 200, 150, 290, 255, $C8, $FA, $FA, $FA, SKILL_SQUALLHIT, SKILL_LUREDANCE, SKILL_GUARDIAN,  $FF
    dinstance MONSTER_DIGSTER,     7033, 6, 46,  267, 115, 197, 257, 110, 185, $96, $96, $96, $32, SKILL_HUSTLE,    SKILL_LIFEDANCE, SKILL_BRANCHING, $FF
    dinstance MONSTER_COPYCAT,     7513, 6, 38,  210, 210, 120, 167, 138, 200, $FA, $FA, $FA, $FA, SKILL_TRANSFORM, SKILL_KAMIKAZE,  SKILL_WHITEAIR,  $FF
    ; foreign masters, level 139+
    dinstance MONSTER_GREATDRAK,  13400, 6, 50,  370, 150, 250, 220, 190, 230, $FA, $FA, $FA, $FA, SKILL_TWINHITS,  SKILL_MULTICUT,  SKILL_SICKLICK,  $FF
    dinstance MONSTER_ROBOSTER,   13500, 6, 38,  300, 260, 350, 240, 380, 250, $FA, $FA, $FA, $FA, SKILL_HEALMORE,  SKILL_FOCUS,     SKILL_SQUALLHIT, $FF
    dinstance MONSTER_BALZAK,     13666, 6, 33,  380, 190, 240, 340, 300, 210, $FA, $FA, $FA, $FA, SKILL_THORDAIN,  SKILL_HEALUS,    SKILL_THICKFOG,  $FF
    dinstance MONSTER_WHIPBIRD,   13616, 6, 50,  500, 200, 180, 260, 250, 255, $FA, $FA, $FA, $FA, SKILL_EVILSLASH, SKILL_BAZOOCALL, SKILL_HUSTLE,    $FF
    dinstance MONSTER_METALDRAK,  13373, 6, 43,  330, 120, 260, 240, 250, 160, $FA, $FA, $FA, $FA, SKILL_CHANCE,    SKILL_PANIDANCE, SKILL_BIGTRIP,   $FF
    dinstance MONSTER_GATEGUARD,  13516, 6, 48,  340, 300, 330, 210, 150, 210, $FA, $FA, $FA, $FA, SKILL_WHITEAIR,  SKILL_IMITATE,   SKILL_GUARDIAN,  $FF
    dinstance MONSTER_CHOPCLOWN,  13600, 6, 48,  310, 300, 300, 200, 260, 255, $FA, $FA, $FA, $FA, SKILL_SACRIFICE, SKILL_FOCUS,     SKILL_MEDITATE,  $FF
    dinstance MONSTER_METALKING,  30376, 6, 50,   25, 700, 290, 700, 511, 255, $FA, $FA, $FA, $FA, SKILL_NAPATTACK, SKILL_GUARDIAN,  SKILL_LIFEDANCE, $FF
    dinstance MONSTER_OROCHI,     13440, 6, 50,  360, 150, 360, 350, 200, 180, $FA, $FA, $FA, $FA, SKILL_DEFEAT,    SKILL_LUREDANCE, SKILL_HUSTLE,    $FF
    dinstance MONSTER_TRUMPETER,  13600, 6, 48,  220, 170, 250, 220, 210, 150, $FA, $FA, $FA, $FA, SKILL_EXPLODET,  SKILL_WARCRY,    SKILL_DANCESHUT, $FF
    dinstance MONSTER_SNAPPER,    13650, 6, 50,  250, 210, 250, 160, 160, 200, $FA, $FA, $FA, $FA, SKILL_HIGHJUMP,  SKILL_MULTICUT,  SKILL_SICKLICK,  $FF
    dinstance MONSTER_HORNBEET,   13556, 6, 48,  380, 190, 240, 250, 300, 200, $FA, $FA, $FA, $FA, SKILL_POISONHIT, SKILL_SANDSTORM, SKILL_MEDITATE,  $FF
    dinstance MONSTER_DEADNOBLE,  13526, 6, 48,  340, 350, 350, 190, 290, 230, $FA, $FA, $FA, $FA, SKILL_MEGAMAGIC, SKILL_SIDESTEP,  SKILL_STRONGD,   $FF
    dinstance MONSTER_SERVANT,    13573, 6, 50,  240, 340, 210, 320, 290, 250, $FA, $FA, $FA, $FA, SKILL_WHITEFIRE, SKILL_CURSE,     SKILL_STORMWIND, $FF
    dinstance MONSTER_STONEMAN,   13416, 6, 48,  360, 160, 240, 360, 100, 200, $FA, $FA, $FA, $FA, SKILL_SUCKAIR,   SKILL_WHITEAIR,  SKILL_EERIELITE, $FF
    dinstance MONSTER_BOMBCRAG,   13630, 6, 48,  290, 200, 180, 260,  20, 150, $FA, $FA, $FA, $FA, SKILL_RAINSLASH, SKILL_IMITATE,   SKILL_BEDRAGON,  $FF
    ; ???
    dinstance MONSTER_SLIME,      65000, 1,  1,    2,   0,   2,   2,   2,   2, $64, $64, $64, $64, SKILL_NONE,      SKILL_NONE,      SKILL_NONE,      $FF
    ; Master Monster Tamer
    dinstance MONSTER_GOLDSLIME,      0, 7, 70,  900, 600, 400, 999, 411, 255, $00, $FA, $00, $FA, SKILL_HEALUS,    SKILL_REVIVE,    SKILL_SURGE,     $FF
    dinstance MONSTER_DIVINEGON,      0, 7, 70, 6500, 999, 700, 400, 280, 255, $FA, $00, $FA, $FA, SKILL_EVILSLASH, SKILL_FOCUS,     SKILL_HELLBLAST, $FF
    dinstance MONSTER_ROSEVINE,       0, 7, 70, 1800, 999, 600, 500, 400, 255, $00, $00, $FA, $FA, SKILL_IMITATE,   SKILL_DEMAGIC,   SKILL_STORMWIND, $FF
    ; Villager Gate boss
;   dinstance MONSTER_DRAGON,         0, 0,  6,   90,  60,  40,  25,  15,  10, $FA, $32, $00, $96, SKILL_FIRESLASH, SKILL_FIREAIR,   SKILL_NONE,      $FF   ; in-battle copy is at the top
    dinstance MONSTER_DRAGON,         0, 0,  6,   60,  20,  40,  25,  20,  30, $FA, $32, $00, $FA, SKILL_FIRESLASH, SKILL_FIREAIR,   SKILL_NONE,      $FF
    ; Talisman Gate boss
;   dinstance MONSTER_GOLEM,          0, 0,  7,  100,  20,  45,  20,  20,  70, $96, $96, $96, $96, SKILL_CHARGEUP,  SKILL_PSYCHEUP,  SKILL_STRONGD,   $FF   ; in-battle copy is at the top
    dinstance MONSTER_GOLEM,          0, 0,  7,   80,  20,  45,  35,  15,  70, $96, $96, $96, $C8, SKILL_CHARGEUP,  SKILL_PSYCHEUP,  SKILL_STRONGD,   $FF
    ; ???
    dinstance MONSTER_DRACKY,         4, 1,  1,   14,  20,  12,   4,  12,  14, $C8, $00, $00, $C8, SKILL_ANTIDOTE,  SKILL_NONE,      SKILL_NONE,      $FF