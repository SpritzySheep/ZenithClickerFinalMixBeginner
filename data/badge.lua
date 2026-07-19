---@type Map<Badges>
local d = {
    [0] = {
        prio = 1e99,
        name = "---",
        desc = "???",
    },
    {
        id = 'champion',
        name = "Clicker Champion",
        desc = "Attain 25k CR",
    },
    {
        id = 'mastery_1',
        name = "Mastery",
        desc = "Reached F10 with all single upright mods",
    },
    {
        id = 'speedrun_1',
        name = "Speedrunner",
        desc = "Speedran with all single upright mods",
    },
    {
        id = 'mastery_2',
        name = "Subjugation",
        desc = "Reached F10 with all single reversed mods",
    },
    {
        id = 'speedrun_2',
        name = "Omnipotence",
        desc = "Speedran with all single reversed mods",
    },
    {
        id = 'subluminal',
        name = "Sub-luminal",
        desc = "Reached F10 in under 76.2s",
    },
    {
        id = 'superluminal',
        name = "Superluminal",
        desc = "Reached F10 in under 42s",
    },
    {
        id = 'fomg',
        name = "Interstellar",
        desc = "Reached 6200m",
    },
    {
        id = 'fepsilon',
        name = "Intergalactic",
        desc = "Reached 12600m",
    },
    {
        id = 'true_expert',
        name = "True Expert",
        desc = "Speedran with rEX & Close Card",
    },
    {
        id = 'true_master',
        name = "True Master",
        desc = "Speedran with rGV & Nightcore",
    },
    {
        id = 'true_strength',
        name = "True Strength",
        desc = "Speedran with rVL & Fast Leak",
    },
    {
        id = 'true_invis',
        name = "True Invisible",
        desc = "Speedran with rIN & Invisible Card",
    },
    {
        id = 'true_couple',
        name = "True Couple",
        desc = "Speedran with rDP & Invisible UI",
    },
    {
        id = 'cardiac_arrest',
        name = "Cardiac Arrest",
        desc = "Die with max HP less than 5",
    },
    {
        id = 'universal_gravitation',
        name = "Universal Gravitation",
        desc = "Reached F10 but finished at negative altitude",
    },
    {
        id = 'rDP_meta',
        name = "Mechanical Heartbreaker",
        desc = "Abused the rDP mod to stay alive over 10 minutes",
    },
    {
        id = 'sc_cap',
        name = "Surge Protector",
        desc = "Reached the B2B cap",
    },
    {
        id = 'exceed_dev_half',
        name = "Apprentice",
        desc = "Have a Dev score on 26% achievements",
    },
    {
        id = 'exceed_dev',
        name = "Successor",
        desc = "Have a Dev score on 62% achievements",
    },
    {
        id = 'mina',
        name = "A Hollowing OOF",
        desc = "KO Mina the Hollower",
    },
    {
        id = 'Lv5000',
        name = "Prestige",
        desc = "Reached Z-Lv5,000",
    },
    {
        id = 'Lv10000',
        name = "Prestige II",
        desc = "Reached Z-Lv10,000",
    },
    {
        id = 'Lv15000',
        name = "Prestige III",
        desc = "Reached Z-Lv15,000",
    },
    {
        id = 'Lv20000',
        name = "Prestige IV",
        desc = "Reached Z-Lv20,000",
    },
    {
        id = 'Lv25000',
        name = "Prestige V",
        desc = "Reached Z-Lv25,000",
    },
    {
        id = 'Lv30000',
        name = "Prestige VI",
        desc = "Reached Z-Lv30,000",
    },
    {id = 'Lv35000',name = "Prestige VII",desc = "Reached Z-Lv35,000",},
    {id = 'Lv40000',name = "Prestige VIII",desc = "Reached Z-Lv40,000",},
    {id = 'Lv45000',name = "Prestige IX",desc = "Reached Z-Lv45,000",},
    {id = 'Lv50000',name = "Prestige X",desc = "Reached Z-Lv50,000",},
    {id = 'Lv55000',name = "Prestige XI",desc = "Reached Z-Lv55,000",},
    {id = 'Lv60000',name = "Prestige XII",desc = "Reached Z-Lv60,000",},
    {id = 'Lv65000',name = "Prestige XIII",desc = "Reached Z-Lv65,000",},
    {id = 'Lv70000',name = "Prestige XIV",desc = "Reached Z-Lv70,000",},
    {id = 'Lv75000',name = "Prestige XV",desc = "Reached Z-Lv75,000",},
    {id = 'Lv80000',name = "Prestige XVI",desc = "Reached Z-Lv80,000",},
    {id = 'Lv85000',name = "Prestige XVII",desc = "Reached Z-Lv85,000",},
    {id = 'Lv90000',name = "Prestige XVIII",desc = "Reached Z-Lv90,000",},
    {id = 'Lv95000',name = "Prestige XIX",desc = "Reached Z-Lv95,000",},
    {
        id = 'achv',
        name = "Overachiever",
        desc = "Got a total of 1,000 AP",
    },
    {id = 'achv300',name = "Superachiever",desc = "Got a total of 1,500 AP",
    },
    {
        id = 'peta',
        name = "PETASPEED!!!!",
        desc = "Entered Petaspeed",
    },
    {
        id = 'exa',
        name = "EXASPEED!!!!!",
        desc = "Entered Exaspeed",
    },
    {
        id = 'zeta',
        name = "ZETASPEED!!!!!!",
        desc = "Entered Zetaspeed",
    },
    {
        id = 'yotta',
        name = "YOTTASPEED!!!!!!!",
        desc = "Entered Yottaspeed",
    },
    {
        id = 'ronna',
        name = "RONNASPEED!!!!!!!!",
        desc = "Entered Ronnaspeed",
    },
    {
        id = 'quetta',
        name = "QUETTASPEED!!!!!!!!!",
        desc = "Entered Quettaspeed",
    },
    {
        id = 'deka',
        name = "DEKASPEED!!!!!!!!!!",
        desc = "Entered Dekaspeed",
    },
    {id = 'termina', name = "TERMINASPEED?!", desc = "Entered Terminaspeed",},
    {id = 'lumina', name = "LUMINASPEED??", desc = "Entered Luminaspeed",},
    {id = 'singula', name = "SINGULASPEED?!?", desc = "Entered Singulaspeed",},
    {id = 'univa', name = "...UNIVASPEED...", desc = "Entered Univaspeed",},
    {id = 'multiva', name = "MULTIVASPEED‽", desc = "Entered Multivaspeed",},
    {
        id = 'ascendant',
        name = "Ascendant",
        desc = "Gathered 40,000 Chakra Escence",
    },
    {
        id = 'ascension',
        name = "Ascension",
        desc = "Gathered 50,000 Chakra Escence",
    },
    {
        id = 'ascension2',
        name = "Ascension Phase 2",
        desc = "Gathered 60,000 Chakra Escence",
    },
    {
        id = 'ascension3',
        name = "Ascension Phase 3",
        desc = "Gathered 70,000 Chakra Escence",
    },
    {
        id = 'ascension4',
        name = "Ascension Phase 4",
        desc = "Gathered 80,000 Chakra Escence",
    },
    {
        id = 'ascension5',
        name = "Ascension Phase 5",
        desc = "Gathered 90,000 Chakra Escence",
    },
    {
        id = 'transcend',
        name = "Transcension",
        desc = "Gathered 100,000 Chakra Escence",
    },
    {
        id = 'transcend2',
        name = "Transcension 30%",
        desc = "Gathered 150,000 Chakra Escence",
    },
    {id = 'transcend4',name = "Transcension 40%",desc = "Gathered 200,000 Chakra Escence",},
    {id = 'transcend5',name = "Transcension 50%",desc = "Gathered 250,000 Chakra Escence",},
    {id = 'transcend6',name = "Transcension 60%",desc = "Gathered 300,000 Chakra Escence",},
    {id = 'transcend7',name = "Transcension 70%",desc = "Gathered 350,000 Chakra Escence",},
    {id = 'transcend8',name = "Transcension 80%",desc = "Gathered 400,000 Chakra Escence",},
    {id = 'transcend9',name = "Transcension 90%",desc = "Gathered 450,000 Chakra Escence",},
    {id = 'finity',name = "Finity",desc = "Gathered 500,000 Chakra Escence",},
    {id = 'finity_02',name = "Finity_02",desc = "Gathered 550,000 Chakra Escence",},
    {id = 'finity_03',name = "Finity_03",desc = "Gathered 600,000 Chakra Escence",},
    {id = 'finity_04',name = "Finity_04",desc = "Gathered 650,000 Chakra Escence",},
    {id = 'finity_05',name = "Finity_05",desc = "Gathered 700,000 Chakra Escence",},
    {id = 'finity_06',name = "Finity_06",desc = "Gathered 750,000 Chakra Escence",},
    {id = 'finity_07',name = "Finity_07",desc = "Gathered 800,000 Chakra Escence",},
    {id = 'finity_08',name = "Finity_08",desc = "Gathered 850,000 Chakra Escence",},
    {id = 'finity_09',name = "Finity_09",desc = "Gathered 900,000 Chakra Escence",},
}

for i = 1, #d do
    local bd = d[i]
    bd.prio = i
    d[bd.id] = bd
end

return d
