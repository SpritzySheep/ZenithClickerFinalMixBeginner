love.window.setIcon(love.image.newImageData('assets/icon.png'))

require 'Zenitha'

ZENITHA.setMainLoopSpeed(240)
ZENITHA.setRenderRate(50)
ZENITHA.setAppInfo("Zenith Clicker", SYSTEM .. " " .. (require 'version'.appVer))
ZENITHA.setClickDist(62)
ZENITHA._cursor.speed = 1600

STRING.install()

SCR.setSize(1600, 1000)

FILE.createDirectory({
    'customAssets/achievements',
    'customAssets/badges',
    'customAssets/card',
    'customAssets/music',
    'customAssets/panel',
    'customAssets/particle',
    'customAssets/rank',
    'customAssets/revive',
    'customAssets/stat',
    'customAssets/tower',
})


---@return love.Texture
local function assets(path) return FILE.exist('customAssets/' .. path) and 'customAssets/' .. path or 'assets/' .. path end
local function q(oy, n, size)
    return GC.newQuad(
        n * size, oy,
        size, size,
        2178*2, 1663
    )
end
local function q2(ox, oy, w, h)
    return GC.newQuad(
        ox, oy,
        w, h,
        2178*2, 1663
    )
end
local function aq(x, y) return GC.newQuad((x - 1) % 16 * 256, (y - 1) % 16 * 256, 256, 256, 4096, 4096) end
TEXTURE = {
    star0 = assets 'crystal-dark.png',
    star1 = assets 'crystal.png',
    star2 = assets 'crystal-fire.png',
    panel = {
        glass_a = assets 'panel/glass-a.png',
        glass_b = assets 'panel/glass-b.png',
        throb_a = assets 'panel/throb-a.png',
        throb_b = assets 'panel/throb-b.png',
    },
    modIcon = assets 'mod_icon_easy.png',
    modQuad_ig = {
        VL = q(0, 0, 225),
        NH = q(0, 1, 225),
        MS = q(0, 2, 225),
        IN = q(0, 3, 225),
        GV = q(0, 4, 225),
        EX = q(0, 5, 225),
        DP = q(0, 6, 225),
        DH = q(0, 7, 225),
        AS = q(0, 8, 225),
        rVL = q(225, 0, 242),
        rNH = q(225, 1, 242),
        rMS = q(225, 2, 242),
        rIN = q(225, 3, 242),
        rGV = q(225, 4, 242),
        rEX = q(225, 5, 242),
        rDP = q(225, 6, 242),
        rDH = q(225, 7, 242),
        rAS = q(225, 8, 242),
                -- Trevor Smithy
        eVL = q(0, 9, 225),
        eNH = q(0, 10, 225),
        eMS = q(0, 11, 225),
        eIN = q(0, 12, 225),
        eGV = q(0, 13, 225),
        eEX = q(0, 14, 225),
        eDP = q(0, 15, 225),
        eDH = q(0, 16, 225),
        eAS = q(0, 17, 225),
        ueEX = q2(3303, 233, 225, 225),
        --
    },
    modQuad_uneasy_ig = {
        eVL = q2(2178, 233, 225, 225),
        eNH = q2(2178+225, 233, 225, 225),
        eMS = q2(2178+225*2, 233, 225, 225),
        eIN = q2(2178+225*3, 233, 225, 225),
        eGV = q2(2178+225*4, 233, 225, 225),
        eEX = q2(3303, 233, 225, 225),
        eDP = q2(2178+225*6, 233, 225, 225),
        eDH = q2(2178+225*7, 233, 225, 225),
        eAS = q2(2178+225*8, 233, 225, 225),
    },
    modQuad_res = {
        VL = q(467, 0, 183),
        NH = q(467, 1, 183),
        MS = q(467, 2, 183),
        IN = q(467, 3, 183),
        GV = q(467, 4, 183),
        EX = q(467, 5, 183),
        DP = q(467, 6, 183),
        DH = q(467, 7, 183),
        AS = q(467, 8, 183),
        rVL = q(650, 0, 183),
        rNH = q(650, 1, 183),
        rMS = q(650, 2, 183),
        rIN = q(650, 3, 183),
        rGV = q(650, 4, 183),
        rEX = q(650, 5, 183),
        rDP = q(650, 6, 183),
        rDH = q(650, 7, 183),
        rAS = q(650, 8, 183),
        -- Trevor Smithy
        eVL = q(467, 9, 183),
        eNH = q(467, 10, 183),
        eMS = q(467, 11, 183),
        eIN = q(467, 12, 183),
        eGV = q(467, 13, 183),
        eEX = q(467, 14, 183),
        eDP = q(467, 15, 183),
        eDH = q(467, 16, 183),
        eAS = q(467, 17, 183),
        ueEX = q(650, 14, 183),
    },
    modQuad_ultra_res = {
        rVL = q(833, 0, 183),
        rNH = q(833, 1, 183),
        rMS = q(833, 2, 183),
        rIN = q(833, 3, 183),
        rGV = q(833, 4, 183),
        rEX = q(833, 5, 183),
        rDP = q(833, 6, 183),
        rDH = q(833, 7, 183),
        rAS = q(833, 8, 183),
    },
    modQuad_ultra = {
        rNH = q2(0000, 1016, 315, 315),
        rMS = q2(0315, 1016, 315, 315),
        rGV = q2(0630, 1016, 315, 315),
        rVL = q2(0945, 1016, 315, 315),
        rDH = q2(0000, 1331, 315, 315),
        rIN = q2(0315, 1331, 315, 315),
        rAS = q2(0630, 1331, 315, 315),
        rEX = q2(0945, 1331, 315, 332),
        rDP = q2(1260, 1016, 419, 378),
    },
    EX = { lock = '_lockover ', front = assets 'card/expert.png', back = assets 'card/expert-back.png' },
    NH = { lock = '_lockover ', front = assets 'card/nohold.png', back = assets 'card/nohold-back.png' },
    MS = { lock = '_lockover ', front = assets 'card/messy.png', back = assets 'card/messy-back.png' },
    GV = { lock = '_lockover ', front = assets 'card/gravity.png', back = assets 'card/gravity-back.png' },
    VL = { lock = '_lockover ', front = assets 'card/volatile.png', back = assets 'card/volatile-back.png' },
    DH = { lock = '_lockover ', front = assets 'card/doublehole.png', back = assets 'card/doublehole-back.png' },
    IN = { lock = '_lockover ', front = assets 'card/invisible.png', back = assets 'card/invisible-back.png' },
    AS = { lock = '_lockover ', front = assets 'card/allspin.png', back = assets 'card/allspin-back.png' },
    DP = { lock = '_lockover ', front = assets 'card/duo.png', back = assets 'card/duo-back.png' },
    ch_achievements = assets 'channel/achievements.jpg',
    ch_records = assets 'channel/me.jpg',
    ch_splits = assets 'channel/players.jpg',
    ch_leaderboard = assets 'channel/leaderboard.jpg',
    lockfull = assets 'card/lockfull.png',
    lockover = assets 'card/lockover.png',
    towerBG = { assets 'tower/f1.jpg', assets 'tower/f2.jpg', assets 'tower/f3.jpg', assets 'tower/f4.jpg', assets 'tower/f5.jpg', assets 'tower/f6.jpg', assets 'tower/f7.jpg', assets 'tower/f8.jpg', assets 'tower/f9.jpg', assets 'tower/f10.png' },
    moon = assets 'tower/moon.png',
    mars = assets 'tower/mars.png',
    jupiter = assets 'tower/jupiter.png',
    saturn = assets 'tower/saturn.png',
    uranus = assets 'tower/uranus.png',
    neptune = assets 'tower/neptune.png',
    pluto = assets 'tower/pluto.png',
    keiper = assets 'tower/keiper.png',
    oort = assets 'tower/oort.png',
    oort2 = assets 'tower/oort2.png',
    nothing = assets 'tower/f11.png',
    stars = assets 'tower/stars.png',
    warning = assets 'finalwarning.png',

    revive = {
        norm = assets 'revive/norm.png',
        rev_left = assets 'revive/rev_left.png',
        rev_right = assets 'revive/rev_right.png',
    },
    spark = {
        assets 'particle/spark1.png',
        assets 'particle/spark2.png',
        assets 'particle/spark3.png',
    },

    stat = {
        avatar = assets 'stat/avatar.png',
        clicker = assets 'stat/clicker.png',
        clicker_star = assets 'stat/clicker_star.png',
        rank = {
            [0] = assets 'rank/z.png',
            assets 'stat/avatar.png',
            assets 'rank/z.png',
            assets 'rank/d.png',
            assets 'rank/d+.png',
            assets 'rank/c-.png',
            assets 'rank/c.png',
            assets 'rank/c+.png',
            assets 'rank/b-.png',
            assets 'rank/b.png',
            assets 'rank/b+.png',
            assets 'rank/a-.png',
            assets 'rank/a.png',
            assets 'rank/a+.png',
            assets 'rank/s-.png',
            assets 'rank/s.png',
            assets 'rank/s+.png',
            assets 'rank/ss.png',
            assets 'rank/u.png',
            assets 'rank/x.png',
            assets 'rank/x+.png',
            assets 'rank/xx.png',
            assets 'rank/y-.png',
            assets 'rank/y.png',
            assets 'rank/y+.png',
            assets 'rank/z-.png',
            assets 'rank/z2.png',
            assets 'rank/z+.png',
            assets 'rank/k-.png',
            assets 'rank/k.png',
            assets 'rank/k+.png',
            assets 'rank/v-.png',
            assets 'rank/v.png',
            assets 'rank/v+.png',
            assets 'rank/o-.png',
            assets 'rank/o.png',
            assets 'rank/o+.png',
            assets 'rank/oo.png',
            assets 'rank/m-.png',
            assets 'rank/m.png',
            assets 'rank/m+.png',
            assets 'rank/mm.png',
            assets 'rank/mmm.png',
            assets 'rank/g-.png',
            assets 'rank/g.png',
            assets 'rank/g+.png',
            assets 'rank/gg.png',
            assets 'rank/t-.png',
            assets 'rank/t.png',
            assets 'rank/t+.png',
            assets 'rank/l-.png',
            assets 'rank/l.png',
            assets 'rank/l+.png',
            assets 'rank/i-.png',
            assets 'rank/i.png',
            assets 'rank/i+.png',
            assets 'rank/ii.png', assets 'rank/ii.png', assets 'rank/ii.png', assets 'rank/ii.png', assets 'rank/ii.png',
            assets 'rank/j-.png', assets 'rank/j-.png', assets 'rank/j-.png', assets 'rank/j-.png', assets 'rank/j-.png',
            assets 'rank/j.png', assets 'rank/j.png', assets 'rank/j.png', assets 'rank/j.png', assets 'rank/j.png',
            assets 'rank/j+.png', assets 'rank/j+.png', assets 'rank/j+.png', assets 'rank/j+.png', assets 'rank/j+.png',
        },
        upperRank = {
            [0] = assets 'rank/ii.png',
            assets 'rank/j-.png', assets 'rank/j.png', assets 'rank/j+.png',
            assets 'rank/n-.png', assets 'rank/n.png', assets 'rank/n+.png',
            assets 'rank/h-.png', assets 'rank/h.png', assets 'rank/h+.png',
            assets 'rank/w-.png', assets 'rank/w.png', assets 'rank/w+.png', assets 'rank/ww.png', assets 'rank/www.png',
            assets 'rank/q-.png', assets 'rank/q.png', assets 'rank/q+.png', assets 'rank/q++.png', assets 'rank/qq.png',
            assets 'rank/and-.png', assets 'rank/and.png', assets 'rank/and+.png', assets 'rank/and+2.png', assets 'rank/and2.png',
            assets 'rank/$-.png', assets 'rank/$.png', assets 'rank/$+.png', assets 'rank/$+2.png', assets 'rank/$$.png',
            assets 'rank/pound-.png', assets 'rank/pound.png', assets 'rank/pound+.png', assets 'rank/pound+2.png', assets 'rank/pound2.png',
            assets 'rank/dia_01.png', assets 'rank/dia_02.png', assets 'rank/dia_03.png', assets 'rank/dia_04.png',
            assets 'rank/alpha_01.png', assets 'rank/alpha_02.png', assets 'rank/alpha_03.png', assets 'rank/alpha_04.png', assets 'rank/alpha_05.png',
            assets 'rank/alpha_06.png', assets 'rank/alpha_07.png', assets 'rank/alpha_08.png', assets 'rank/alpha_09.png', assets 'rank/alpha_10.png',
            assets 'rank/beta_01.png', assets 'rank/beta_02.png', assets 'rank/beta_03.png', assets 'rank/beta_04.png', assets 'rank/beta_05.png',
            assets 'rank/beta_06.png', assets 'rank/beta_07.png', assets 'rank/beta_08.png', assets 'rank/beta_09.png', assets 'rank/beta_10.png',
            assets 'rank/gamma_01.png', assets 'rank/gamma_02.png', assets 'rank/gamma_03.png', assets 'rank/gamma_04.png', assets 'rank/gamma_05.png',
            assets 'rank/gamma_06.png', assets 'rank/gamma_07.png', assets 'rank/gamma_08.png', assets 'rank/gamma_09.png', assets 'rank/gamma_10.png',
        },
        badges = (function()
            local list = love.filesystem.getDirectoryItems('assets/badges')
            local l = {}
            for _, v in next, list do
                l[v:match('^(.*)%.png$')] = assets('badges/' .. v)
            end
            return l
        end)()
    },
    achievement = {
        icons = assets 'achievements/achv_icons.png',
        iconQuad = {
            _undef = aq(8, 8),

            contender = aq(2, 2),
            clicker = aq(1, 1),
            elegance = aq(4, 1),
            garbage_offensive = aq(3, 1),
            tower_climber = aq(8, 2),
            tower_regular = aq(8, 2),
            what_ever_it_takes = aq(1, 3),
            speed_player = aq(5, 2),
            plonk = aq(6, 2),
            zenith_explorer = aq(2, 3),
            zenith_explorer_plus = aq(2, 3),
            clicker_speedrun = aq(5, 1),
            naga_eyes = aq(8, 8),
            supercharged = aq(5, 6),
            supercharged_plus = aq(5, 6),
            multitasker = aq(7, 2),
            effective = aq(7, 2),
            zenith_speedrun = aq(2, 6),
            zenith_speedrun_plus = aq(2, 6),
            zenith_challenger = aq(11, 2),
            divine_challenger = aq(12, 2),
            zenith_speedrunner = aq(14, 2),
            divine_speedrunner = aq(13, 2),
            the_spike_of_all_time = aq(4, 2),
            the_spike_of_all_time_minus = aq(4, 2),
            clock_out = aq(13, 5),
            vip_list = aq(6, 6),

            EX = aq(3, 3),
            NH = aq(7, 3),
            MS = aq(8, 3),
            GV = aq(6, 3),
            VL = aq(5, 3),
            DH = aq(4, 3),
            IN = aq(1, 4),
            AS = aq(2, 4),
            DP = aq(3, 4),
            GVIN = aq(6, 4),
            ASNH = aq(4, 6),
            DPEX = aq(8, 5),
            GVNH = aq(4, 4),
            DHMSNH = aq(5, 4),
            DHEXNH = aq(7, 4),
            DHEXMSVL = aq(8, 4),
            ASEXVL = aq(1, 7),
            swamp_water_lite = aq(5, 7),
            swamp_water = aq(2, 5),

            rEX = aq(15, 1),
            rNH = aq(11, 1),
            rMS = aq(12, 1),
            rGV = aq(10, 1),
            rVL = aq(9, 1),
            rDH = aq(16, 1),
            rIN = aq(13, 1),
            rAS = aq(14, 1),
            rDP = aq(7, 7),
            rGVrIN = aq(9, 3),       -- The Grandmaster+
            EXNHrAS = aq(10, 7),     -- Magic School
            INrASrDHrNH = aq(14, 6), -- The Spellcaster
            DHEXrGV = aq(10, 3),     -- Demonic Speed
            EXGVNHrMS = aq(12, 6),   -- Bnuuy
            ASDPGVrMSrNH = aq(9, 2), -- Grand-Master! Rounds
            DHrEXrVL = aq(9, 6),     -- Sweat and Ruin
            ASGVrDPrMS = aq(13, 3),  -- Cupid's Gamble
            NHVLrDPrGV = aq(11, 6),  -- Despairful Longing
            VLrEXrIN = aq(16, 6),    -- Authoritarian Delusion
            rDPrEX = aq(12, 3),      -- Tyrannical Dyarchy
            INMSrDHrEX = aq(7, 8),   -- Sisyphean Monarchy
            ASMSrDHrIN = aq(13, 6),  -- Kitsune Trickery
            swamp_water_lite_plus = aq(15, 3),
            swamp_water_plus = aq(16, 3),

            talentless = aq(3, 7),
            quest_rationing = aq(2, 7),
            the_responsible_one = aq(1, 6),
            the_unreliable_one = aq(15, 2),
            the_responsible_one_plus = aq(1, 6),
            guardian_angel = aq(3, 6),
            carried = aq(3, 8),
            level_19_cap = aq(16, 2),
            the_escape_artist = aq(1, 5),
            the_artist_trinity = aq(11, 3),
            fel_magic = aq(9, 7),
            empurple = aq(13, 7),
            autoplay_is_awesome = aq(10, 6),
            spotless = aq(16, 4),
            a_mutual_agreement = aq(13, 4),
            the_cheaters = aq(12, 4),
            overprotection = aq(12, 7),
            clutch_main = aq(14, 3),
            sunk_cost = aq(11, 5),
            wax_wings = aq(12, 5),
            the_masterful_juggler = aq(11, 7),
            the_oblivious_artist = aq(14, 7),
            zero_to_sixty = aq(10, 5),
            speed_bonus = aq(9, 4),
            under_the_radar = aq(16, 8),
            arrogance = aq(3, 5),
            scarcity_mindset = aq(4, 1),
            detail_oriented = aq(8, 6),
            psychokinesis = aq(8, 6),
            divine_rejection = aq(7, 6),
            moon_struck = aq(7, 6),
            slayer_of_the_tower = aq(1, 3),
            lovers_promise = aq(8, 7),

            hardcore_beginning = aq(16, 5),
            love_hotel = aq(16, 5),
            financially_responsible = aq(16, 5),
            unfair_battle = aq(16, 5),
            museum_heist = aq(16, 5),
            workaholic = aq(16, 5),
            human_experiment = aq(16, 5),
            thermal_anomaly = aq(16, 5),
            ultra_dash = aq(16, 5),
            perfect_speedrun = aq(15, 5),
            the_perfectionist = aq(15, 5),
            cruise_control = aq(15, 5),
            dazed = aq(5, 6),
            drag_racing = aq(5, 6),
            space_race = aq(5, 6),
            fickle_fuel = aq(9, 5),
            the_spike_of_all_time_plus = aq(5, 6),

            -- Special, no texture needed
            blight = aq(0, 0),
            desolation = aq(0, 0),
            havoc = aq(0, 0),
            pandemonium = aq(0, 0),
            inferno = aq(0, 0),
            purgatory = aq(0, 0),
            perdition = aq(0, 0),
            cataclysm = aq(0, 0),
            annihilation = aq(0, 0),
            armageddon = aq(0, 0),
            abyss = aq(0, 0),

            cut_off = aq(6, 2),
            worn_out = aq(6, 2),
            the_harbinger = aq(5, 8),
            final_defiance = aq(3, 2),
            speedrun_speedrunning = aq(5, 2),
            abyss_weaver = aq(5, 2),
            royal_resistance = aq(10, 2),
            lovers_stand = aq(10, 2),
            romantic_homicide = aq(4, 8),
            benevolent_ambition = aq(15, 4),
            blazing_speed = aq(10, 4),
            dusty_memories = aq(11, 4),
            its_kinda_rare = aq(14, 4),
            fruitless_effort = aq(6, 7),
            false_god = aq(2, 8),

            identity = aq(6, 6),
            respectful = aq(2, 1),
            zenith_relocation = aq(4, 7),
            intended_glitch = aq(11, 4),
            lucky_coincidence = aq(14, 5),
            zenith_traveler = aq(1, 8),
            dark_force = aq(3, 1),
            return_to_the_light = aq(5, 5),
            smooth_dismount = aq(4, 1),
            -- Trevor Smithy
            programmer_gamer = aq(7, 11), -- smithy ball
            one_of_mine = aq(10, 6),
            ggbw = aq(6, 11),  -- fan
            perfect_speedrun_plus = aq(15, 5),
            perfectly_balanced = aq(8, 11), -- thanos knife
            peasant_revolution = aq(15, 1),
            holy_ascention = aq(11, 1),
            stabilized_entropy = aq(12, 1),
            restrained_collapse = aq(10, 1),
            restored_volition = aq(9, 1),
            disproven_blasphemy = aq(16, 1),
            solved_paradox = aq(13, 1),
            demystified_grimoire = aq(14, 1),
            restored_eden = aq(7, 7),
            your_too_fast = aq(10, 11), --scared jackenstein
            your_long = aq(9, 11), --jackenstein
            cheat_death = aq(5, 5),
            trip_to_hell = aq(5, 7),
            -- easy mods
            eEX = aq(3, 3),
            eNH = aq(7, 3),
            eMS = aq(8, 3),
            eGV = aq(6, 3),
            eVL = aq(5, 3),
            eDH = aq(4, 3),
            eIN = aq(1, 4),
            eAS = aq(2, 4),
            eDP = aq(3, 4),
            -- Uneasy Mods (v1.1) (No CR)
            ueEX = aq(15, 1),
            ueEXeNH = aq(11, 1),
            ueEXeMS = aq(12, 1),
            ueEXeGV = aq(10, 1),
            ueEXeVL = aq(9, 1),
            ueEXeDH = aq(16, 1),
            ueEXeIN = aq(13, 1),
            ueEXeAS = aq(14, 1),
            ueEXeDP = aq(7, 7),
            -- Easy Mode - Special (v1.1) (No CR)
            humble_pupil = aq(6, 4),
            overweight_gamer = aq(4, 6),
            best_friends = aq(8, 5),
            shameless_cashgrab = aq(4, 4),
            clean_break = aq(5, 4),
            emperor_development = aq(7, 4),
            professional_cleaner = aq(8, 4),
            rold_smythy = aq(1, 7),
            quest_feast = aq(2, 7),
            clean_gamer = aq(1, 5),
            -- Easy Mode - Why (v1.1) (No CR)
            ["-3"] = aq(0,0),
            ["-4"] = aq(0,0),
            ["-5"] = aq(0,0),
            ["-6"] = aq(0,0),
            ["-7"] = aq(0,0),
            ["-8"] = aq(0,0),
            ["-9"] = aq(0,0),
            -- Easy Mode - Issued (v1.1) (No CR)
            inefficiency = aq(15, 6),
            could_you_not = aq(3, 2),
            oh_no_you_dont = aq(10, 2),
            uneasy = aq(6, 5),
            roll = aq(9,4),
            alleyoop = aq(3, 12),
            slamdunk = aq(3, 12),
            www = aq(4, 12),
            peta = aq(0, 0),
            exa = aq(0, 0),
            zetta = aq(0, 0),
            yotta = aq(0, 0),
            ronna = aq(0, 0),
            quetta = aq(0, 0),
            -- Easy Mode - Issued (v1.2) (No CR)
            patience_is_a_virtue = aq(10, 6),
            multiple_pieces = aq(1,3),
            hyperplonk = aq(14, 11),
            gigaplonk = aq(15, 11),
            the_windup = aq(16, 11),
            what_have_you_done = aq(11, 11),
            music_man = aq(12, 11),
            im_gonna_be = aq(6, 7),
            lazy_bastard = aq(13, 11),
            easy_name = aq(16, 1),
            biased = aq(2, 12),

            EXNH = aq(3, 5),
            EXMS = aq(2, 7),
            EXGV = aq(9, 2),
            EXVL = aq(12, 5),
            DHEX = aq(15, 7),
            EXIN = aq(16, 7),
            ASEX = aq(1, 8),
            MSNH = aq(9, 8),
            NHVL = aq(10, 8),
            DHNH = aq(5, 7),
            INNH = aq(11, 8),
            DPNH = aq(12, 8),
            GVMS = aq(13, 8),
            MSVL = aq(7, 5),
            DHMS = aq(14, 8),
            INMS = aq(9, 8),
            ASMS = aq(15, 8),
            DPMS = aq(12, 4),
            GVVL = aq(16, 8),
            DHGV = aq(10, 4),
            ASGV = aq(11, 7),
            DPGV = aq(13, 4),
            DHVL = aq(4, 6),
            INVL = aq(1, 1),
            ASVL = aq(1, 10),
            DPVL = aq(2, 10),
            DHIN = aq(3, 10),
            ASDH = aq(4, 10),
            DHDP = aq(4, 2),
            ASIN = aq(5, 10),
            DPIN = aq(11, 8),
            ASDP = aq(14, 5),

            uEX = aq(5, 13),
            uNH = aq(6, 13),
            uMS = aq(7, 13),
            uGV = aq(8, 13),
            uVL = aq(9, 13),
            uDH = aq(10, 13),
            uIN = aq(11, 13),
            uAS = aq(12, 13),
            uDP = aq(13, 13),
            mina_the_hollower = aq(14, 13),

            Tera = aq(1, 9),
            Peta = aq(2, 9),
            Exa = aq(3, 9),
            Zeta = aq(4, 9),
            Yotta = aq(5, 9),
            Ronna = aq(6, 9),
            Quetta = aq(7, 9),
            Deka = aq(8, 9),
            Termina = aq(9, 9),
            Lumina = aq(2, 11),
            Singula = aq(2, 14),
            Univa = aq(3, 15),

            powerleveling = aq(2, 1),
            powerleveling2 = aq(9, 10),
            powerleveling3 = aq(10, 10),
            powerleveling4 = aq(11, 10),
            powerleveling5 = aq(12, 10),
            powerleveling6 = aq(16, 10),
            powerleveling7 = aq(14, 9),
            powerleveling8 = aq(5, 12),
            powerleveling9 = aq(6, 12),
            powerleveling10 = aq(2, 13),
            powerleveling11 = aq(16, 13),
            powerleveling12 = aq(1, 14),
            powerleveling13 = aq(8, 15),

            EXMSNH = aq(15, 8),
            EXGVNH = aq(3, 10),
            EXNHVL = aq(3, 6),
            EXINNH = aq(9, 8),
            ASEXNH = aq(6, 10),
            DPEXNH = aq(11, 4),
            EXGVMS = aq(7, 10),
            EXMSVL = aq(3, 2),
            DHEXMS = aq(5, 5),
            EXINMS = aq(8, 10),
            ASEXMS = aq(16, 5),
            DPEXMS = aq(16, 8),
            EXGVVL = aq(13, 10),
            DHEXGV = aq(16, 5),
            EXGVIN = aq(14, 10),
            ASEXGV = aq(8, 1),
            DPEXGV = aq(12, 2),
            DHEXVL = aq(16, 7),
            EXINVL = aq(1, 8),
            DPEXVL = aq(15, 10),
            DHEXIN = aq(7, 1),
            ASDHEX = aq(3, 8), DHDPEX = aq(12, 4), ASEXIN = aq(7, 5), DPEXIN = aq(15, 4), ASDPEX = aq(9, 4),
            GVMSNH = aq(6, 7), MSNHVL = aq(16, 9), INMSNH = aq(5, 4), ASMSNH = aq(11, 8), DPMSNH = aq(15, 9),
            GVNHVL = aq(4, 4), DHGVNH = aq(5, 5), GVINNH = aq(10, 2), ASGVNH = aq(8, 1), DPGVNH = aq(7, 10),
            DPGVNH = aq(6, 6), DHNHVL = aq(8, 8), INNHVL = aq(13, 9), ASNHVL = aq(12, 9), DPNHVL = aq(11, 4),
            DHINNH = aq(11, 8), ASDHNH = aq(5, 10), DHDPNH = aq(3, 6), ASINNH = aq(11, 9), DPINNH = aq(10, 9),
            ASDPNH = aq(1, 11), GVMSVL = aq(7, 10), DHGVMS = aq(3, 11), GVINMS = aq(4, 11), ASGVMS = aq(5, 11),
            DPGVMS = aq(12, 4), DHMSVL = aq(7, 12), INMSVL = aq(7, 6), ASMSVL = aq(14, 8), DPMSVL = aq(2, 10),
            DHINMS = aq(8, 12), ASDHMS = aq(1, 5), DHDPMS = aq(9, 12), ASINMS = aq(10, 12), DPINMS = aq(11, 12),
            ASDPMS = aq(12, 12), DHGVVL = aq(2, 8), GVINVL = aq(4, 2), ASGVVL = aq(13, 12), DPGVVL = aq(14, 12),
            DHGVIN = aq(15, 12), ASDHGV = aq(15, 12), DHDPGV = aq(8, 5), ASGVIN = aq(9, 4), DPGVIN = aq(16, 12),
            ASDPGV = aq(8, 6), DHINVL = aq(1, 13), ASDHVL = aq(11, 9), DHDPVL = aq(1, 2), ASINVL = aq(1, 11),
            DPINVL = aq(8, 7), ASDPVL = aq(12, 4), ASDHIN = aq(3, 13), DHDPIN = aq(13, 4), ASDHDP = aq(14, 5),
            ASDPIN = aq(10, 9),

            NHrEX = aq(9, 6), MSrEX = aq(4, 13), GVrEX = aq(15, 13), VLrEX = aq(3, 14),
            DHrEX = aq(4, 14), INrEX = aq(5, 14), ASrEX = aq(6, 14), DPrEX = aq(7, 14),
            EXrNH = aq(8, 14), EXrMS = aq(9, 14), EXrGV = aq(12, 2), EXrVL = aq(9, 6),
            EXrDH = aq(10, 14), EXrIN = aq(11, 14), EXrAS = aq(12, 14), EXrDP = aq(12, 14), MSrNH = aq(14, 6), GVrNH = aq(13, 14),
            VLrNH = aq(14, 14), DHrNH = aq(4, 14), INrNH = aq(15, 14), ASrNH = aq(16, 14), DPrNH = aq(14, 14),
            NHrMS = aq(1, 15), NHrGV = aq(14, 3), NHrVL = aq(2, 15), NHrDH = aq(4, 15), NHrIN = aq(5, 15),
            NHrAS = aq(6, 15), NHrDP = aq(7, 15), GVrMS = aq(15, 14), VLrMS = aq(9, 15), DHrMS = aq(10, 15),
        },
        frame = {
            [0] = assets 'achievements/frames/none.png',
            assets 'achievements/frames/bronze.png',
            assets 'achievements/frames/silver.png',
            assets 'achievements/frames/gold.png',
            assets 'achievements/frames/platinum.png',
            assets 'achievements/frames/diamond.png',
            assets 'achievements/frames/issued.png',
        },
        ring = assets 'achievements/frames/ring-piece.png',
        wreath = {
            assets 'achievements/wreaths/t100.png',
            assets 'achievements/wreaths/t50.png',
            assets 'achievements/wreaths/t25.png',
            assets 'achievements/wreaths/t10.png',
            assets 'achievements/wreaths/t5.png',
            assets 'achievements/wreaths/t3.png',
        },
        glint_1 = assets 'achievements/glint-a.png',
        glint_2 = assets 'achievements/glint-b.png',
        glint_3 = assets 'achievements/glint-c.png',
        competitive = assets 'achievements/competitive.png',
        hidden = assets 'achievements/hidden.png',
        event = assets 'achievements/event.png',
        unranked = assets 'achievements/unranked.png',
        extra = assets 'achievements/extra.png',
        overDev = assets 'achievements/verified-halfmod.png',
    },

    logo = assets 'iconZCEM.png',
    logo_old = assets 'icon_old.png',
    programmingsmithy = assets 'programmingsmithy.png',
}
TEXTURE = TABLE.linkSource({}, TEXTURE, function(path)
    if type(path) ~= 'string' then return path end
    if path:match('^_lock') then
        local lockType = path:match('_(lock....)')
        local char = path:sub(-1)
        local w, h = TEXTURE[lockType]:getDimensions()
        return GC.initCanvas(w, h, function()
            GC.draw(TEXTURE[lockType], 0, 0)
            local t = GC.newText(FONT.get(70, 'sans'), char)
            if lockType == 'lockfull' then
                GC.setColor(COLOR.HEX "646483FF")
                for i = 0, 25 do
                    local angle = i / 26 * MATH.tau
                    local dx, dy = math.cos(angle) * 2, math.sin(angle) * 2
                    GC.mDraw(t, w * .51 + dx, h * .526 + dy, 0, 2)
                end
            else
                GC.setColor(COLOR.HEX "544F65FF")
                for i = 0, 25 do
                    local angle = i / 26 * MATH.tau
                    local dx, dy = math.cos(angle) * 1.6, math.sin(angle) * 1.6
                    GC.mDraw(t, w * .495 + dx, h * .52 + dy, 0, 1.5)
                end
            end
            t:release()
        end)
    else
        local suc, res = pcall(love.graphics.newImage, path)
        if not suc then
            MSG.log('error', ("Cannot load image '%s': %s"):format(path, res))
            return PAPER
        end
        return res
    end
end)

TEXTURE.pixel = GC.load { w = 1, h = 1, { 'clear', 1, 1, 1 } }

TEXTURE.ruler = GC.initCanvas(32, 600, function()
    for y = 0, 199 do
        local w =
            y % 200 == 0 and 32 or
            y % 40 == 0 and 20 or
            y % 8 == 0 and 10 or
            6
        local l = .4 + .6 * w / 32
        GC.setColor(l, l, l)
        GC.rectangle('fill', 16 - w / 2, y * 3, w, 1)
    end
    GC.setColor(1, 1, 1)
    GC.rectangle('fill', 0, 1, 32, 1)
    GC.rectangle('fill', 0, 600, 32, -1)
end)
TEXTURE.ruler:setFilter('nearest', 'nearest')
TEXTURE.ruler:setWrap('repeat', 'repeat')

TEXTURE.transition = GC.initCanvas(128, 1, function()
    for x = 0, 127 do
        GC.setColor(1, 1, 1, 1 - x / 128)
        GC.rectangle('fill', x, 0, 1, 1)
    end
end)

TEXTURE.darkCorner = GC.initCanvas(128, 128, function()
    GC.setColor(0, 0, 0)
    GC.blurCircle(.626, 64, 64, 64)
end)

TEXTURE.lightDot = GC.initCanvas(32, 32, function()
    GC.clear(1, 1, 1, 0)
    GC.blurCircle(.26, 16, 16, 16)
end)

TEXTURE.surgeIcon = GC.initCanvas(512, 512, function()
    GC.clear(1, 1, 1, 0)
    GC.setColor(1, 1, 1)
    GC.translate(256, 256)
    for _ = 0, 2 do
        GC.circle('fill', 0, 0, 180, 4)
        GC.rotate(.5236)
    end
end)

TEXTURE.windup = GC.initCanvas(128, 128, function()
    GC.clear(1, 1, 1, 0)
    local l = {}
    for i = 0, 15 do
        local a = i / 16 * MATH.tau
        local d = i % 2 == 0 and 58 or 45
        local dx, dy = d * math.cos(a), d * math.sin(a)
        table.insert(l, 64 + dx)
        table.insert(l, 64 + dy)
    end
    GC.setLineWidth(10)
    GC.polygon('line', l)
end)
do
    local w = 13
    local d1 = 20
    local d2 = 16
    local d3 = 30
    local d4 = 15
    TEXTURE.windupText = {
        GC.initCanvas(128, 128, function()
            GC.clear(1, 1, 1, 0)
            GC.rectangle('fill', 64 - w / 2, 64 - 31, w, 62 - w * 1.6); GC.rectangle('fill', 64 - w / 2, 64 + 31, w, -w)
        end),
        GC.initCanvas(128, 128, function()
            GC.clear(1, 1, 1, 0)
            GC.rectangle('fill', 64 - w / 2 - d1 / 2, 64 - 31, w, 62 - w * 1.6); GC.rectangle('fill', 64 - w / 2 - d1 / 2, 64 + 31, w, -w)
            GC.rectangle('fill', 64 - w / 2 + d1 / 2, 64 - 31, w, 62 - w * 1.6); GC.rectangle('fill', 64 - w / 2 + d1 / 2, 64 + 31, w, -w)
        end),
        GC.initCanvas(128, 128, function()
            GC.clear(1, 1, 1, 0)
            GC.rectangle('fill', 64 - w / 2 - d2, 64 - 31, w, 62 - w * 1.6); GC.rectangle('fill', 64 - w / 2 - d2, 64 + 31, w, -w)
            GC.rectangle('fill', 64 - w / 2 + 00, 64 - 31, w, 62 - w * 1.6); GC.rectangle('fill', 64 - w / 2 + 00, 64 + 31, w, -w)
            GC.rectangle('fill', 64 - w / 2 + d2, 64 - 31, w, 62 - w * 1.6); GC.rectangle('fill', 64 - w / 2 + d2, 64 + 31, w, -w)
        end),
        GC.initCanvas(128, 128, function()
            local w = w - 2
            GC.clear(1, 1, 1, 0)
            GC.rectangle('fill', 64 - w / 2 - d1 - 1, 64 - 31, w, 62 - w * 1.6); GC.rectangle('fill', 64 - w / 2 - d1 - 1, 64 + 31, w, -w)
            GC.rectangle('fill', 64 - w / 2 - d4 / 2, 64 - 31, w, 62 - w * 1.6); GC.rectangle('fill', 64 - w / 2 - d4 / 2, 64 + 31, w, -w)
            GC.rectangle('fill', 64 - w / 2 + d4 / 2, 64 - 31, w, 62 - w * 1.6); GC.rectangle('fill', 64 - w / 2 + d4 / 2, 64 + 31, w, -w)
            GC.rectangle('fill', 64 - w / 2 + d1 + 1, 64 - 31, w, 62 - w * 1.6); GC.rectangle('fill', 64 - w / 2 + d1 + 1, 64 + 31, w, -w)
        end),
        GC.initCanvas(128, 128, function()
            w = 12
            GC.clear(1, 1, 1, 0)
            GC.rectangle('fill', 64 - w / 2 - d3, 64 - 31, w, 62 - w * 1.6); GC.rectangle('fill', 64 - w / 2 - d3, 64 + 31, w, -w)
            GC.rectangle('fill', 64 - w / 2 - d4, 64 - 31, w, 62 - w * 1.6); GC.rectangle('fill', 64 - w / 2 - d4, 64 + 31, w, -w)
            GC.rectangle('fill', 64 - w / 2 + 00, 64 - 31, w, 62 - w * 1.6); GC.rectangle('fill', 64 - w / 2 + 00, 64 + 31, w, -w)
            GC.rectangle('fill', 64 - w / 2 + d4, 64 - 31, w, 62 - w * 1.6); GC.rectangle('fill', 64 - w / 2 + d4, 64 + 31, w, -w)
            GC.rectangle('fill', 64 - w / 2 + d3, 64 - 31, w, 62 - w * 1.6); GC.rectangle('fill', 64 - w / 2 + d3, 64 + 31, w, -w)
        end),
    }
end

TEXTURE.recRevBG = GC.initCanvas(1586, 606, function()
    GC.draw(TEXTURE.panel.glass_a)
    GC.draw(TEXTURE.panel.glass_b)
end)

TEXTURE.recRevLight = GC.initCanvas(165, 120, function()
    GC.clear(1, .1, .1, 0)
    GC.setColor(1, .1, .1)
    GC.blurCircle(-.2, 60, 60, 60)
    GC.blurCircle(-.6, 105, 60, 60)
end)

TEXTURE.recEasyLight = GC.initCanvas(165, 120, function()
    GC.clear(1, .1, .1, 0)
    GC.setColor(.1, 1, .1)
    GC.blurCircle(-.2, 60, 60, 60)
    GC.blurCircle(-.6, 105, 60, 60)
end)



FONT.load {
    serif = "assets/AbhayaLibre-Regular.ttf",
    sans = "assets/DINPro-Medium.otf",
    led = "assets/UniDreamLED.ttf",
    symbol = "assets/symbols.otf",
}
FontLoaded = SYSTEM == 'Web' or MATH.roll(.62)
FONT.setDefaultFont(FontLoaded and 'sans' or 'serif')
FONT.setOnInit(function(font, size)
    font:setFallbacks(FONT.get(size, '_norm'))
end)

BG.add('black', { draw = function() GC.clear(0, 0, 0) end })
BG.set('black')

TEXTS = { -- Font size can only be 30 and 50 here !!!
    version    = GC.newText(FONT.get(30)),
    mod        = GC.newText(FONT.get(30)),
    mpPreview  = GC.newText(FONT.get(30)),
    zpPreview  = GC.newText(FONT.get(30)),
    zpChange   = GC.newText(FONT.get(30)),
    dcBest     = GC.newText(FONT.get(30)),
    dcTimer    = GC.newText(FONT.get(30)),
    srTimer    = GC.newText(FONT.get(30)),
    title      = GC.newText(FONT.get(50), "EXPERT GAMEPLAY"),
    load       = GC.newText(FONT.get(50), "LOAD"),
    pb         = GC.newText(FONT.get(50)),
    endResult  = GC.newText(FONT.get(30)),
    endHeight  = GC.newText(FONT.get(50)),
    endFloor   = GC.newText(FONT.get(30)),
    linePB     = GC.newText(FONT.get(50), "PR"),
    lineKM     = GC.newText(FONT.get(50), "1000"),
    height     = GC.newText(FONT.get(30)),
    time       = GC.newText(FONT.get(30)),
    rank       = GC.newText(FONT.get(30)),
    chain      = GC.newText(FONT.get(50)),
    chain2     = GC.newText(FONT.get(50, 'led')),
    b2b        = GC.newText(FONT.get(30), "Chain"),
    comboText  = GC.newText(FONT.get(50), "COMBO"),
    combo      = GC.newText(FONT.get(50)),
    spike      = GC.newText(FONT.get(50)),
    gigaspeed  = GC.newText(FONT.get(50), {
        COLOR.dR, "G", COLOR.dO, "I", COLOR.dY, "G",
        COLOR.dK, "A", COLOR.dG, "S", COLOR.dJ, "P",
        COLOR.dC, "E", COLOR.dS, "E", COLOR.dB, "D"
    }),
    teraspeed  = GC.newText(FONT.get(50), {
        COLOR.R, "T", COLOR.O, "E", COLOR.Y, "R",
        COLOR.K, "A", COLOR.G, "S", COLOR.J, "P",
        COLOR.C, "E", COLOR.S, "E", COLOR.B, "D",
    }),
    petaspeed  = GC.newText(FONT.get(50), {
        COLOR.R, "P", COLOR.O, "E", COLOR.Y, "T",
        COLOR.K, "A", COLOR.G, "S", COLOR.J, "P",
        COLOR.C, "E", COLOR.S, "E", COLOR.B, "D",
    }),
    exaspeed   = GC.newText(FONT.get(50), {
        COLOR.R, "E", COLOR.O, "X", COLOR.Y, "A",
        COLOR.K, "S", COLOR.G, "P", COLOR.J, "E",
         COLOR.S, "E", COLOR.B, "D",
    }),
    zetaspeed   = GC.newText(FONT.get(50), {
        COLOR.R, "Z", COLOR.O, "E", COLOR.Y, "T",
        COLOR.K, "A", COLOR.G, "S", COLOR.J, "P",
        COLOR.C, "E", COLOR.S, "E", COLOR.B, "D",
    }),
    yottaspeed   = GC.newText(FONT.get(50), {
        COLOR.R, "Y", COLOR.O, "O", COLOR.Y, "T",
        COLOR.K, "T", COLOR.G, "A", COLOR.J, "S",
        COLOR.C, "P", COLOR.S, "E", COLOR.B, "E",
        COLOR.V, "D",
    }),
    ronnaspeed   = GC.newText(FONT.get(50), {
        COLOR.R, "R", COLOR.O, "O", COLOR.Y, "N",
        COLOR.K, "N", COLOR.G, "A", COLOR.J, "S",
        COLOR.C, "P", COLOR.S, "E", COLOR.B, "E",
        COLOR.V, "D",
    }),
    quettaspeed   = GC.newText(FONT.get(50), {
        COLOR.R, "Q", COLOR.O, "U", COLOR.Y, "E",
        COLOR.K, "T", COLOR.G, "T", COLOR.J, "A",
        COLOR.C, "S", COLOR.S, "P", COLOR.B, "E",
        COLOR.V, "E", COLOR.M, "D",
    }),
    dekaspeed   = GC.newText(FONT.get(50), {
        COLOR.R, "D", COLOR.O, "E", COLOR.Y, "K",
        COLOR.K, "A", COLOR.G, "S", COLOR.J, "P",
        COLOR.C, "E", COLOR.S, "E", COLOR.B, "D",
        COLOR.V, "!",
    }),
    terminaspeed   = GC.newText(FONT.get(50), {
        COLOR.R, "T", COLOR.O, "E", COLOR.Y, "R",
        COLOR.K, "M", COLOR.G, "I", COLOR.J, "N",
        COLOR.C, "A", COLOR.S, "S", COLOR.B, "P",
        COLOR.V, "E", COLOR.M, "E", COLOR.W, "D",
    }),
    luminaspeed   = GC.newText(FONT.get(50), {
        COLOR.R, "L", COLOR.O, "U", COLOR.Y, "M",
        COLOR.K, "I", COLOR.G, "N", COLOR.J, "A",
        COLOR.C, "S", COLOR.S, "P", COLOR.B, "E",
        COLOR.V, "E", COLOR.M, "D", COLOR.W, "?",
    }),
    singulaspeed   = GC.newText(FONT.get(50), {
        COLOR.R, "S", COLOR.O, "I", COLOR.Y, "N",
        COLOR.K, "G", COLOR.G, "U", COLOR.J, "L",
        COLOR.C, "A", COLOR.S, "S", COLOR.B, "P",
        COLOR.V, "E", COLOR.M, "E", COLOR.W, "D",
    }),
    univaspeed   = GC.newText(FONT.get(50), {
        COLOR.R, "U", COLOR.O, "N", COLOR.Y, "I",
        COLOR.K, "V", COLOR.G, "A", COLOR.S, "S", 
        COLOR.B, "P",
        COLOR.V, "E", COLOR.M, "E", COLOR.W, "D",
    }),
    gigatime   = GC.newText(FONT.get(50)),
    floorTime  = GC.newText(FONT.get(30)),
    rankTime   = GC.newText(FONT.get(30)),
    slogan     = GC.newText(FONT.get(30), "MOUSE MIX"),
    slogan_EX  = GC.newText(FONT.get(30), "RAT MIX"),
    slogan_rEX = GC.newText(FONT.get(30), "RODENT MIX"),
    forfeit    = GC.newText(FONT.get(50), "KEEP HOLDING TO FORFEIT"),
    credit     = GC.newText(FONT.get(30), "Easy Mode by Trevor Smithy, Mouse Mix by Spritzy"),
    test       = GC.newText(FONT.get(50), "TEST"),
    easyTitle  = GC.newText(FONT.get(50), "EASY GAMEPLAY"),
    uneasyTitle= GC.newText(FONT.get(50), "UNEASY GAMEPLAY"),
    easyModeVersion = GC.newText(FONT.get(30)),
    theA       = GC.newText(FONT.get(50), ""),
    theM       = GC.newText(FONT.get(50), ""),
}
FONT.setDefaultFont('sans')

local button_invis = WIDGET.newClass('button_invis', 'button')
button_invis.draw = NULL

Metatable = {
    best_highscore = { __index = function() return 0 end },
    best_speedrun = { __index = function() return 1e99 end },
}

CEheight = 0
CONF = {
    keybind = {
        "q", "w", "e", "r", "t", "y", "u", "i", "o",
        "a", "s", "d", "f", "g", "h", "j", "k", "l",
        "space", "z", "x", "c"
    },
    fullscreen = true,
    syscursor = false,
    cardBrightness = 90,
    bgBrightness = 40,
    bg = true,
    sfx = 60,
    bgm = 100,
    autoMute = false,
    oldHitbox = false,
    -- Trevor Smithy
    easyName = false,
    imperial = false,
    promotion = true,
    stacker = false,
    oldTransparentCard = false,
    lyrics = false,
}
-- Create BEST, STAT, ACHV tables,
-- only called when launching and on resetall
function InitProfile()
    BEST = {
        highScore = setmetatable({}, Metatable.best_highscore),
        speedrun = setmetatable({}, Metatable.best_speedrun),
    }

STAT = {
    mod = 'finalmixbeg',
    version = nil, -- will be set after loading
    system = SYSTEM,
    modTime = os.time(),
    srTimer_life = 0,
    srTimer_game = 0,
    joinDate = os.date("%b %Y"),
    hid = os.date("%d%S%m%M%y%H") .. math.random(26000, 42000) .. math.random(42000, 62000),
    uid = "ANON-" .. os.date("%d_") .. math.random(2600, 6200),
    aboutme = "Zenith Extra",
    maxFloor = 1,
    maxHeight = 0,
    heightDate = "NO DATE",
    minTime = 2600,
    timeDate = "NO DATE",

    zp = 0,
    dzp = 0,
    peakZP = 0,
    peakDZP = 0,
    dailyBest = 0,
    dailyMastered = false,
    lastDay = 0,
    vipListCount = 0,
    clockOutCount = 0,
    clicker = false,

    totalGame = 0,
    totalTime = 0,
    totalQuest = 0,
    totalPerfect = 0,
    totalHeight = 0,
    totalBonus = 0,
    totalFloor = 0,
    totalFlip = 0,
    totalAttack = 0,
    totalGiga = 0,
    totalTera = 0,
    totalPeta = 0,
    totalExa = 0,
    totalZeta = 0,
    totalYotta = 0,
    totalRonna = 0,
    totalQuetta = 0,
    totalDeka = 0,
    totalTermina = 0,
    totalLumina = 0,
    totalSingula = 0,
    totalUniva = 0,
    totalF10 = 0,
    totalKO = 0,
    totalRevive = 0,
    badges = 0,
    AP = 0,
    badge = {},
    level = 0,
    achv = 0,
    ExtraSpeed = false,
    MouseGirl = false,
    rold = false,
    unlockAll = false,
    greenClicker = false,
}


ACHV = {}

AchvNotice = {}

end

InitProfile()

TestMode = false

function SaveBest()
    if (TestMode or GAME.multiplePiecesActive) then return end
    love.filesystem.write('best.luaon', 'return' .. TABLE.dumpDeflate(BEST))
end
function SaveStat()
    if (TestMode or GAME.multiplePiecesActive) then return end
    STAT.modTime = os.time()
    love.filesystem.write('stat.luaon', 'return' .. TABLE.dumpDeflate(STAT))
end
function SaveAchv()
    if (TestMode or GAME.multiplePiecesActive) then return end
    love.filesystem.write('achv.luaon', 'return' .. TABLE.dumpDeflate(ACHV))
end

function SaveConf()
    if (TestMode or GAME.multiplePiecesActive) then return end
    love.filesystem.write('conf.luaon', 'return' .. TABLE.dumpDeflate(CONF))
end
local msgTime = 0
local bufferedMsg = {}

local saveAchvTimer = false ---@type number | false
function IssueAchv(id, silent)
    if TestMode or GAME.multiplePiecesActive then return end
    local A = Achievements[id]
    if not A or ACHV[id] then return end

    if not silent then
        table.insert(bufferedMsg, { 'achv_issued', {
            AchvData[6].fg, A.name .. "\n",
            COLOR.dL, A.desc .. "\n",
            COLOR.LD, A.quote,
        }, 1 })
        if not GAME.playing then
            ReleaseAchvBuffer()
        end
    end

    ACHV[id] = 0
    AchvNotice[id] = true
    saveAchvTimer = .26

    return true
end

local wreathName = {
    [false] = "",
    [0] = "",
    [1] = "T100-",
    [2] = "T50-",
    [3] = "T25-",
    [4] = "T10-",
    [5] = "T5-",
    [6] = "T3-",
}
---@return boolean? true = success
function SubmitAchv(id, score, silent, realSilent)
    if TestMode or GAME.multiplePiecesActive then return end
    local A = Achievements[id]
    if not A then return end
    local oldScore = ACHV[id] or A.noScore or 0
    local R0, R1 = A.rank(oldScore), A.rank(score)
    -- printf("%s: %.1f(%.2f) -> %.1f(%.2f)", id, oldScore, R0, score, R1)
    if R1 == 0 or not A.comp(score, oldScore) then return end

    if not silent and R1 >= 1 then
        local rank = math.floor(R1)
        local wreath = R1 >= 5 and math.floor(MATH.clampInterpolate(0, 0, .9999, 6, R1 % 1)) or 0
        local scoreText = A.scoreSimp(score) .. (A.scoreFull and "  " .. A.scoreFull(score) or "")
        local oldScoreText = A.scoreSimp(oldScore) .. (A.scoreFull and "  " .. A.scoreFull(oldScore) or "")
        table.insert(bufferedMsg, { wreath > 0 and 'wreath_' .. wreath or AchvData[rank].id, {
            AchvData[rank].fg, wreathName[wreath] .. A.name .. "   >>   " .. scoreText,
            COLOR.LD, (ACHV[id] and "    Previous: " .. oldScoreText or "") .. "\n",
            COLOR.dL, A.desc .. "\n", COLOR.LD, A.quote,
        }, rank <= 2 and 1 or rank <= 4 and 2 or 3 })
        if not GAME.playing then
            ReleaseAchvBuffer()
        end
    end

    ACHV[id] = score
    if not realSilent then
        AchvNotice[id] = true
    end
    saveAchvTimer = .26

    return true
end

function IssueSecret(id, silent)
    if not STAT.badge[id] then
        STAT.badge[id] = true
        if not silent then
            table.insert(bufferedMsg, { 'bright', "YOU DID A THING!\n", 0 })
            if not GAME.playing then
                ReleaseAchvBuffer()
            end
        end
    end
end

function ReleaseAchvBuffer()
    if TestMode or GAME.multiplePiecesActive then return end
    for i = 1, #bufferedMsg do
        local msg = bufferedMsg[i]
        msgTime = TASK.lock('achv_bulk', 1) and 6.2 or msgTime + 2.6
        MSG { msg[1], msg[2], time = msgTime, last = true, alpha = .75 }
        if msg[3] == 0 and TASK.lock('achv_sfx_allclear', .08) then
            SFX.play('allclear')
        elseif TASK.lock('achv_sfx_' .. msg[3], .08) then
            SFX.play('achievement_' .. msg[3], .7)
        end
    end
    TABLE.clear(bufferedMsg)
end

MX, MY = -260, 0

---@type Map<Card>
Cards = {}

---@type nil | number
FloatOnCard = nil

GigaSpeed = {
    r = 0,
    g = 0,
    b = 0,
    alpha = 0,
    bgAlpha = 0,
    textTimer = false,
    isTera = false,
}
ImpactGlow = {}
DeckPress = 0
ThrobAlpha = {
    card = 0,
    bg1 = 0,
    bg2 = 0,
}
Wind = {}
WindBatch = GC.newSpriteBatch(GC.load { w = 1, h = 1, { 'clear', 1, 1, 1, 1 } }, 260, 'static')
for i = 1, 62 do
    Wind[i] = { math.random(), math.random(), MATH.clampInterpolate(1, 0.5, 260, 2.6, i) }
    WindBatch:add(0, 0)
end
StarPS = GC.newParticleSystem(TEXTURE.stars, 32)
StarPS:setParticleLifetime(2.6)
StarPS:setRotation(0, 6.26)
StarPS:setEmissionRate(12)
---@diagnostic disable-next-line
StarPS:setColors(COLOR.LX, COLOR.L, COLOR.L, COLOR.L, COLOR.L, COLOR.L, COLOR.L, COLOR.LX)

WoundPS = GC.newParticleSystem(GC.load { w = 16, h = 16,
    { 'clear', 1, 1, 1 },
    { 'setCL', 0, 0, 0 },
    { 'fRect', 1, 1, 14, 14 },
}, 32)
WoundPS:setEmissionArea('uniform', 42, 42, 0)
WoundPS:setParticleLifetime(2.6, 6.2)
WoundPS:setSpread(6.28)
WoundPS:setSpeed(26, 42)
---@diagnostic disable-next-line
WoundPS:setColors(COLOR.LX, COLOR.L, COLOR.L, COLOR.L, COLOR.L, COLOR.L, COLOR.L, COLOR.LX)


SparkPS = {}
for i = 1, 3 do
    local ps = GC.newParticleSystem(TEXTURE.spark[i])
    ps:setParticleLifetime(.26, .62)
    ps:setEmissionArea('ellipse', 62, 62, 0)
    ---@diagnostic disable-next-line
    ps:setColors(COLOR.L, COLOR.LX)
    SparkPS[i] = ps
end

BgScale = 1

CHAR = require 'module/char'
require 'data/base'
SHADER = require 'module/shader'
GAME = require 'module/game'

for i = 1, #ModData.deck do table.insert(Cards, require 'module/card'.new(ModData.deck[i])) end
GAME.refreshLayout()
for i, C in ipairs(Cards) do
    Cards[C.id], C.x, C.y = C, C.tx, C.ty + 260 + 26 * 1.6 ^ i
end

MSG.setSafeY(75)
MSG.addCategory('dark', COLOR.D, COLOR.L)
MSG.addCategory('bright', COLOR.L, COLOR.D)
for i = 0, 6 do MSG.addCategory(AchvData[i].id, AchvData[i].bg, COLOR.L, TEXTURE.achievement.frame[i]) end
for i = 1, 6 do MSG.addCategory("wreath_" .. i, AchvData[5].bg, COLOR.L, GC.load { w = 256, { 'draw', TEXTURE.achievement.frame[5] }, { 'draw', TEXTURE.achievement.wreath[i] } }) end
MSG.addCategory('achv_badTime', {.126, 0, 0}, COLOR.L, TEXTURE.achievement.frame[6])
SCN.addSwapStyle('warp', require 'module/warp_swap')

SCN.add('joining', require 'scene/joining')
SCN.add('tower', require 'scene/tower')
SCN.add('stat', require 'scene/stat')
SCN.add('records', require 'scene/records')
SCN.add('achv', require 'scene/achv')
SCN.add('badge', require 'scene/badge')
SCN.add('conf', require 'scene/conf')
SCN.add('about', require 'scene/about')
SCN.add('ending', require 'scene/ending')
SCN.add('chnl', require 'scene/chnl')
ZENITHA.setFirstScene('joining')

local gc = love.graphics

local pressValue = 0

CursorProgress = 0
CursorHide = true
local function starCursor(x, y)
    if CursorHide or GAME.zenithTraveler then return end
    GC.translate(x, y)
    GC.scale(1.42)
    GC.rotate(MATH.lerp(-.626, -1.2, pressValue))
    GC.scale(.8 + .2 * pressValue, 1)
    local l = .626 + .374 * pressValue
    GC.setColor(l, l, l)
    GC.draw(TEXTURE.star0, 0, -6, 0, .14, .3, TEXTURE.star1:getWidth() * .5, 0)
    GC.scale(.12, .26)
    GC.setShader(SHADER.coloring)
    GC.setColor(1, .626, .5)
    GC.draw(TEXTURE.star0, -150, 0)
    if CursorProgress <= .384626 then
        local t = MATH.interpolate(0, 1, .384626, 0, CursorProgress)
        GC.setColor(.9, .9, .9, t)
        GC.draw(TEXTURE.star0, -150, 0)
        GC.setShader()
    else
        GC.setShader()
        GC.setColor(1, 1, 1, MATH.iLerp(.384626, 1, CursorProgress))
        GC.draw(TEXTURE.star1, -150, 0)
    end
end

local M = GAME.mod

--[[
# F0 (Watchful Eye)           4|4      ♩ = 184         C Minor
# F1 (Divine Registration)    4|4      ♩ = 184         C Minor
# F2 (Zenith Hotel)           4|4      ♩ = 110         D Major / B Minor
# F3 (Empty Prayers)         12|8      ♩.= 120         C Major / A Minor
# F4 (Crowd Control)          5|8      ♪ = 180         F♯ Minor
# F5 (Phantom Memories)       4|4 6|8  ♩ = 130 ♩.= 130 E Minor
# F6 (Echo)                   4|4      ♩ = 65          A Minor
# F7 (Cryptic Chemistry)      4|4      ♩ = 120         A+50 Minor
# F8 (Chrono Flux)            4|4      ♩ = 150         E Minor
# F9 (Broken Record)          4|4      ♩ = 160         E Minor
# F10 (Deified Validation)    4|4      ♩ = 98          C Major / C Minor
# Hyper (Schnellfeuer Bullet) 4|4      ♩ = 240         C♯ Minor
]]

BgmSet = {
    f0 = {
        'piano',
        'arp', 'bass', 'guitar', 'pad', 'staccato', 'violin',
        'expert', 'rev',
        'piano2', 'violin2',
    },
    f1 = { 'f1', 'f1ex', 'f1rev' },
}

---@enum (key) ZC.bgmName
BgmData = {
    f0 = { meta = '4|4  184 BPM  C Minor', bar = 4, bpm = 184, toneFix = 0, loop = { 0, 114.7826 } },
    f1 = { meta = '4|4  184 BPM  C Minor', bar = 4, bpm = 184, toneFix = 0, loop = { 18.261, 91.304 }, introLen = 1.304, teleport = { -1, 7.826 } },
    f2 = { meta = '4|4  110 BPM  D Major & B Minor', bar = 4, bpm = 110, toneFix = -1, loop = { 26.181, 113.454 } },
    f2r = { meta = '4|4  110 BPM  D Major & B Minor', bar = 4, bpm = 110, toneFix = -1, loop = { 26.181, 113.454 } },
    f3 = { meta = '12|8  120 BPM  C Major & A Minor', bar = 4, bpm = 120, toneFix = -1, loop = { 56, 128 }, end1 = 128, end2 = 132 },
    f3r = { meta = '12|8  120 BPM  C Major & A Minor', bar = 4, bpm = 120, toneFix = -1, loop = { 56, 128 }, end1 = 128, end2 = 132 },
    f4 = { meta = '5|8  180 BPM  F# Minor', bar = 5, bpm = 180, toneFix = 1, loop = { 13.333, 93.333 } },
    f4r = { meta = '5|8  180 BPM  F# Minor', bar = 5, bpm = 180, toneFix = 1, loop = { 13.333, 93.333 } },
    f5 = { meta = '4|4 6|8  130 BPM  E Minor', bar = 4, bpm = 130, toneFix = -1, loop = { 96, 169.846 } },
    f5r = { meta = '4|4 6|8  130 BPM  E Minor', bar = 4, bpm = 130, toneFix = -1, loop = { 96, 169.846 } },
    f6 = { meta = '4|4  65 BPM  A Minor', bar = 4, bpm = 65, toneFix = 2, loop = { 29.538, 103.384 } },
    f6r = { meta = '4|4  65 BPM  G Minor', bar = 4, bpm = 65, toneFix = 0, loop = { 29.538, 103.384 } },
    f7 = { meta = '4|4  120 BPM  A+50c Minor', bar = 4, bpm = 120, toneFix = 2.5, loop = { 128, 192 } },
    f7r = { meta = '4|4  120 BPM  A+50c Minor', bar = 4, bpm = 120, toneFix = 2.5, loop = { 128, 192 }, teleport = { 8, 32 } },
    f8 = { meta = '4|4  150 BPM  E Minor', bar = 4, bpm = 150, toneFix = -1, loop = { 38.4, 134.4 } },
    f8r = { meta = '4|4  150 BPM  E Minor', bar = 4, bpm = 150, toneFix = -1, loop = { 38.4, 134.4 } },
    f9 = { meta = '4|4  160 BPM  E Minor', bar = 4, bpm = 160, toneFix = -1, loop = { 36, 144 } },
    f9r = { meta = '4|4  160 BPM  E Minor', bar = 4, bpm = 160, toneFix = -1, loop = { 36, 144 } },
    f10 = { meta = '4|4  98 BPM  C Major & C Minor', bar = 4, bpm = 98, toneFix = 0, loop = { 203.877, 311.632 } },
    f10r = { meta = '4|4  98 BPM  C Major & C Minor', bar = 4, bpm = 98, toneFix = 0, loop = { 203.877, 311.632 } },
    fomg = { meta = '4|4  90 & 100 BPM  Db Major & Bb Minor', bar = 4, bpm = 100, toneFix = 3, loop = { 38.4 - 11.862, 144 - 11.862 }, end1 = 144 - 11.862, end2 = 153.6 - 11.862 },
    tera = { meta = '4|4  240 BPM  C# Minor', bar = 4, bpm = 240, toneFix = 1, loop = { 76, 140 }, introLen = 2, teleport = { -1, 20 }, end1 = 140, end2 = 142, end3 = 144, end4 = 146 },
    terar = { meta = '4|4  240 BPM  C# Minor', bar = 4, bpm = 240, toneFix = 1, loop = { 84 - 15.565, 172 - 15.565 }, teleport = { 0, 18 - 15.565 } },
}

BgmPlaying = false ---@type ZC.bgmName | false
SongNamePlaying = false -- Same as BgmPlaying, but this distinguishes f0(r) and f1(r) for album page
BgmLooping = false
BgmNeedSkip = false
BgmNeedStop = false

function RevMusicMode()
    return
        URM and M.EX == 2 or                   -- uEX
        GAME.anyRev and GAME.comboZP >= 2.6 or -- rev run with 2.6x ZP
        GAME.anyUltra and GAME.comboZP >= 1.2  -- ultra run with 1.2x ZP
end

---@param name string ZC.bgmName
---@param force? boolean speedrun or music player
function PlayBGM(name, force)
    if GAME.teramusic and not force then return end

    local last = BgmPlaying

     if GAME.playing and (RevMusicMode() or GAME.forceRev) then name = name .. 'r' end
    if name == 'fomgr' then name = 'fomg' end
    if name:sub(1, 2) == 'f0' then
        BgmPlaying = 'f0'
    elseif name:sub(1, 2) == 'f1' and name:sub(1, 3) ~= 'f10' then
        BgmPlaying = 'f1'
    else
        BgmPlaying = name
    end

    if not BgmData[BgmPlaying] then return end
    BgmNeedStop = false

    if BgmPlaying == 'f0' then
        BgmLooping = false
        BgmNeedSkip = BgmData[BgmPlaying].teleport
        BGM.play(BgmSet.f0)
        RefreshBGM(name)
    elseif BgmPlaying == 'f1' then
        BgmLooping = BgmData[BgmPlaying].loop
        BgmNeedSkip = BgmData[BgmPlaying].teleport
        BGM.play(BgmSet.f1, force and '' or '-sdin')
        local start = math.random(3, 5) * BgmData.f1.introLen
        BgmNeedSkip[1] = start + BgmData.f1.introLen
        BGM.set('all', 'seek', start)
        RefreshBGM(name)
    elseif name == 'tera' then
        BgmLooping = BgmData[BgmPlaying].loop
        BgmNeedSkip = BgmData[BgmPlaying].teleport
        BGM.play('tera', '-sdin')
        local startFrom
        if last then
            ---@cast last string
            startFrom = tonumber(last:match("%d+"))
            if startFrom then startFrom = startFrom - 1 end
        end
        local start = (GAME.playing and GAME.floor or startFrom or math.random(0, 9)) * BgmData.tera.introLen
        BgmNeedSkip[1] = start + BgmData.tera.introLen
        BGM.set('all', 'seek', start)
        RefreshBGM()
    elseif BGM.play(name, force and '' or '-sdin') then
        BgmLooping = BgmData[BgmPlaying].loop
        BgmNeedSkip = BgmData[BgmPlaying].teleport
        RefreshBGM()
    end
end

local normalHelp = {
    COLOR.LL, "Welcome to ", COLOR.LF, "Zenith Clicker", COLOR.LL, "! Choose the required tarot cards and send players to scale the tower.\n",
    "The higher you go in the tower, the more tricky players you'll encounter!\n",
    "[DYNAMIC TEXT]",
}
local ultraHelp = {
    COLOR.LL, "Welcome to ", COLOR.LR, "Zenith Clicker: ", COLOR.R, "Ultra Reverse", COLOR.LL, ". Activate a reversed mod to start ", COLOR.lR, "suffering.\n",
    COLOR.LL, "The higher you go in the tower, the more likely you are to ", COLOR.R, "die.\n",
    COLOR.LL, "There are no more achievements, and ", COLOR.lR, "you are not expected to go very high up.\n",
    COLOR.R, "Give Up: ", COLOR.LL, "ESC    ", COLOR.R, "Forfeit: ", COLOR.LL, "ESC    ", COLOR.R, "Quit: ", COLOR.LL, "ESC"
}
function RefreshHelpText()
    local s = SCN.scenes.tower.widgetList
    ---@cast s Map<Zenitha.Widget.base | Zenitha.WidgetArg>
    if URM then
        s.help.text = "U"
        s.help.floatText = ultraHelp
        if GAME.height >= 0 then
            s.help2.text = "!"
            s.help2.floatText = "The final ULTRA REVERSE challenge.\n\"Because it is there.\""
        else
            s.help2.text = "B"
            s.help2.floatText = "B" .. GAME.negFloor .. ": " .. NegFloors[GAME.negFloor].name .. "\n" .. NegTexts['b' .. GAME.negFloor].desc
        end
    else
        s.help.text = "?"
        normalHelp[#normalHelp] = ("Commit: $1    Reset: $2    Forfeit/Quit: ESC"):repD(CONF.keybind[19]:upper(), CONF.keybind[20]:upper())
        s.help.floatText = normalHelp
        s.help2.text = "?"
        local hand = GAME.getHand(true)
        local lastLine = (
            #hand == 0 and "" or
            #hand == 1 and "" or
            ""
        ) .. "%.0fm, %.0fm"
        s.help2.floatText = "Each mod will multiply ZP gain with a certain rate.\nRegardless of height, ZP earn is 100%.\nGain more ZP to reach higher Zenith Levels!\nHere's some fun numbers: " .. lastLine:format(STAT.zp / 26 / GAME.comboZP, STAT.zp / 16 / GAME.comboZP)
    end
    s.help:reset()
    s.help2:reset()
end

function RefreshBGM(mode)
    if not BGM.isPlaying() then return end
    local zp = GAME.getComboZP(GAME.getHand(not GAME.playing))
    local modifiedZP = (((zp >= 1.95 and zp or 0) * (GAME.mod.AS > 0 and 1.41 or 1)--[[ * (GAME.mod.DP > 0 and 1.26 or 1)]]))/10.1
    local uneasy = GAME.refreshUneasy() and not GAME.playing
    local uneasyMusic = uneasy and modifiedZP > 0
    local pitch = M.GV < 0 and 2^(-1/2) or M.GV > 0 and 2 ^ ((URM and M.GV == 2 and 3 or M.GV) / 12) or 1 
    if uneasy then
        pitch = pitch * 1.0145
    end
    if not GAME.manualBGMPitch or GAME.height >= 1650 or not GAME.playing or not GAME.uneasyModIconSelected or not GAME.teramusic then
        if GAME.slowmo then pitch = pitch / 2 end
        if GAME.nightcore then pitch = pitch * 2 end
        -- Trevor Smithy
        if GAME.eslowmo and not (GAME.badTime and GAME.playing) then pitch = pitch * 2^(-1/2) end
        if GAME.enightcore and not (GAME.badTime and GAME.playing) then pitch = pitch * 2 end
        --
    else
        pitch = GAME.nightcore and GAME.manualBGMPitch or GAME.slowmo and 1/GAME.manualBGMPitch or pitch
    end
    local justBegin = BGM.tell() < 1
    BGM.set('all', 'pitch', pitch, justBegin and 0 or .26)
    BGM.set('all', 'highgain', (M.IN == 0 or GAME.fallout) and 1 or (M.IN == 1 or M.IN == -1) and .8 or not URM and .626 or .55, justBegin and 0 or .626)
    if BgmPlaying == 'f0' then
        local revMode = mode == 'f0r' or RevMusicMode() or GAME.forceRev
        BGM.set('all', 'volume', revMode and 0 or uneasyMusic and MATH.max(MATH.min((1-(modifiedZP/0.7)), 1),0) or 1, 2.6)
        -- Trevor Smithy > to ~=
        BGM.set('expert', 'volume', M.EX > 0 and 1 or uneasyMusic and MATH.max(MATH.min(modifiedZP/0.7, 1),0) or 0, .26)
        BGM.set('piano', 'volume', (M.NH == 0 or GAME.fallout) and 1 or (M.NH == 1 or M.NH == -1) and .26 or 0)
        BGM.set('piano2', 'pitch', 2 * pitch, 0)
        BGM.set('piano2', 'volume', (M.DP ~= 0 or VALENTINE and not revMode) and .626 or 0, .26)
        BGM.set('violin', 'volume', M.DP == 2 and 1 or 0, .26)
        BGM.set('violin2', 'volume', M.DP == 2 and 1 or 0, .26)
        BGM.set('rev', 'volume', revMode and (M.DP ~= 0 and .5 or .7) or uneasyMusic and MATH.max(MATH.min(modifiedZP, 1),0) or 0, revMode and 1.6 or 2.6)
    elseif BgmPlaying == 'f1' then
        local revMode = mode == 'f1r' or RevMusicMode() or GAME.forceRev
        BGM.set('f1', 'volume', 1)
        BGM.set('f1ex', 'volume', M.EX > 0 and 1 or 0, 0)
        BGM.set('f1rev', 'volume', revMode and 1 or 0, 0)
    end
end

function Task_MusicEnd(manual)
    BgmLooping = false
    local D = BgmData[BgmPlaying]
    local outroStart
    if BgmPlaying == 'f1' then
        outroStart = D.loop[2] + 4 * 60 / D.bpm
        BgmNeedStop = outroStart + 8 * 60 / D.bpm
    elseif BgmPlaying == 'f2' then
        outroStart = D.loop[2]
        BgmNeedStop = outroStart + 8 * 60 / D.bpm
    elseif BgmPlaying == 'f3' then
        if BGM.tell() < D.loop[1] then
            outroStart = D.end1
        else
            outroStart = D.end2
        end
        BgmNeedStop = outroStart + 8 * 60 / D.bpm
    elseif BgmPlaying == 'f4' then
        outroStart = D.loop[2]
        BgmNeedStop = outroStart + 10 * 60 / D.bpm
    elseif BgmPlaying == 'f5' then
        outroStart = D.loop[2]
        BgmNeedStop = outroStart + 8 * 60 / D.bpm
    elseif BgmPlaying == 'f6' then
        outroStart = D.loop[2]
        BgmNeedStop = outroStart + 4 * 60 / D.bpm
    elseif BgmPlaying == 'f7' then
        outroStart = D.loop[2]
        BgmNeedStop = outroStart + 8 * 60 / D.bpm
    elseif BgmPlaying == 'f8' then
        outroStart = D.loop[2]
        BgmNeedStop = outroStart + 8 * 60 / D.bpm
    elseif BgmPlaying == 'f9' then
        outroStart = D.loop[2]
        BgmNeedStop = outroStart + 8 * 60 / D.bpm
    elseif BgmPlaying == 'f10' then
        if BGM.tell() < 28 * 4 * 60 / D.bpm then
            BGM.stop(4.2)
            TASK.yieldT(4.2)
        elseif BGM.tell() < 59 * 4 * 60 / D.bpm then
            BGM.set('all', 'seek', 59 * 4 * 60 / D.bpm)
            BgmNeedStop = BGM.tell() + 5 * 60 / D.bpm
        elseif BGM.tell() < 77.25 * 4 * 60 / D.bpm then
            BGM.stop(4.2)
            TASK.yieldT(4.2)
        else
            outroStart = D.loop[2]
            BgmNeedStop = outroStart + 8 * 60 / D.bpm
        end
    elseif BgmPlaying == 'fomg' then
        if BGM.tell() > D.loop[1] then
            outroStart = D.loop[2]
            BgmNeedStop = outroStart + 13 * 60 / D.bpm
        else
            outroStart = D.loop[2] + 16 * 60 / D.bpm
            BgmNeedStop = outroStart + 8 * 60 / D.bpm
        end
    elseif BgmPlaying == 'f1r' then
        outroStart = D.loop[2] + 4 * 60 / D.bpm
        BgmNeedStop = outroStart + 8 * 60 / D.bpm
    elseif BgmPlaying == 'f2r' then
        outroStart = D.loop[2]
        BgmNeedStop = outroStart + 8 * 60 / D.bpm
    elseif BgmPlaying == 'f3r' then
        outroStart = D.loop[2]
        BgmNeedStop = outroStart + 8 * 60 / D.bpm
    elseif BgmPlaying == 'f4r' then
        outroStart = D.loop[2]
        BgmNeedStop = outroStart + 10 * 60 / D.bpm
    elseif BgmPlaying == 'f5r' then
        outroStart = D.loop[2]
        BgmNeedStop = outroStart + 8 * 60 / D.bpm
    elseif BgmPlaying == 'f6r' then
        outroStart = D.loop[2]
        BgmNeedStop = outroStart + 4 * 60 / D.bpm
    elseif BgmPlaying == 'f7r' then
        outroStart = D.loop[2]
        BgmNeedStop = outroStart + 8 * 60 / D.bpm
    elseif BgmPlaying == 'f8r' then
        outroStart = D.loop[2]
        BgmNeedStop = outroStart + 8 * 60 / D.bpm
    elseif BgmPlaying == 'f9r' then
        outroStart = D.loop[2]
        BgmNeedStop = outroStart + 8 * 60 / D.bpm
    elseif BgmPlaying == 'f10r' then
        if BGM.tell() < 28 * 4 * 60 / D.bpm then
            BGM.stop(6.2)
            TASK.yieldT(6.2)
        elseif BGM.tell() < 59 * 4 * 60 / D.bpm then
            BGM.set('all', 'seek', 59 * 4 * 60 / D.bpm)
            BgmNeedStop = BGM.tell() + 5 * 60 / D.bpm
        elseif BGM.tell() < 77.25 * 4 * 60 / D.bpm then
            BGM.stop(6.2)
            TASK.yieldT(6.2)
        else
            outroStart = D.loop[2]
            BgmNeedStop = outroStart + 8 * 60 / D.bpm
        end
    elseif BgmPlaying == 'tera' then
        outroStart = D.loop[2] + math.random(0, 3) * 8 * 60 / D.bpm
        BgmNeedStop = outroStart + 8 * 60 / D.bpm
    elseif BgmPlaying == 'terar' then
        outroStart = D.loop[2] + 96 * 60 / D.bpm
        BgmNeedStop = outroStart + 30 * 60 / D.bpm
    else
        BgmNeedStop = BGM.tell() + 4 * 60 / D.bpm
    end
    if outroStart then BGM.set('all', 'seek', outroStart) end
    BgmLooping, BgmNeedSkip = false, false
    if BgmNeedStop then
        repeat TASK.yieldT(.0626) until not BgmNeedStop
    else
        repeat TASK.yieldT(.0626) until not BGM.isPlaying()
    end
    if not manual then
        PlayBGM('f0')
        GAME.refreshRPC()
    end
end

function Tone(pitch)
    return pitch + (URM and M.GV == 2 and 3 or M.GV) + BgmData[BgmPlaying].toneFix
end

function ApplySettings()
    love.mouse.setVisible(CONF.syscursor)
    ZENITHA.globalEvent.drawCursor = CONF.syscursor and NULL or starCursor
    SFX.setVol(CONF.sfx / 100)
    BGM.setVol(CONF.bgm / 100)
end

function ReloadTexts()
    local sep = (TEXTS.mod:getFont():getHeight() + TEXTS.title:getFont():getHeight()) / 2
    for _, text in next, TEXTS do text:setFont(FONT.get(text:getFont():getHeight() < sep and 30 or 50)) end
    for _, text in next, CardHintText do text:setFont(FONT.get(text:getFont():getHeight() < sep and 30 or 50)) end
    for _, quest in next, GAME.quests do quest.name:setFont(FONT.get(70)) end
    TEXTS.height:setFont(FONT.get(30))
    TEXTS.time:setFont(FONT.get(30))
    TEXTS.gigatime:setFont(FONT.get(50))
    TEXTS.chain2:setFont(FONT.get(50, 'led'))
    for _, W in next, SCN.scenes.tower.widgetList do W:reset() end
    for _, W in next, SCN.scenes.stat.widgetList do W:reset() end
    for _, W in next, SCN.scenes.achv.widgetList do W:reset() end
    for _, W in next, SCN.scenes.conf.widgetList do W:reset() end
    for _, W in next, SCN.scenes.about.widgetList do W:reset() end
    for _, W in next, SCN.scenes.records.widgetList do W:reset() end
    for _, W in next, SCN.scenes.zcem.widgetList do W:reset() end
    AchvText:setFont(FONT.get(30))
    AboutText:setFont(FONT.get(70))
    BadgeText:setFont(FONT.get(70))
    DevNoteText:setFont(FONT.get(30))
    EndText:setFont(FONT.get(70))
    EndText2:setFont(FONT.get(70))
    if SCN.cur == 'stat' then RefreshProfile() end
    if SCN.cur == 'records' then SCN.scenes.records.load() end
    if SCN.cur == 'achv' then RefreshAchvList() end
end

VALENTINE = false
VALENTINE_TEXT = "FLOOD THE TOWER SIDE BY SIDE WITH WHAT COULD BE"
XMAS = false
ZDAY = false
function RefreshDaily()
    local dateToday = os.date("!*t", os.time())
    local dateLastDay = os.date("!*t", math.max(STAT.lastDay, 946656000)) -- at least 2000/1/1
    local time0Today = os.time({ year = dateToday.year, month = dateToday.month, day = dateToday.day })
    local time0LastDay = os.time({ year = dateLastDay.year, month = dateLastDay.month, day = dateLastDay.day })
    local dayPast = MATH.round((time0Today - time0LastDay) / 86400)

    if dayPast < 0 then
        MSG('warn', "Back to the future?", 26)
    else
        if MATH.between(dayPast, 1, 2600) then
            LOG('info', "Daily Reset:")
            local oldZP, oldDZP = STAT.zp, STAT.dzp
            STAT.zp = MATH.expApproach(STAT.zp, 0, dayPast * .026)
            STAT.dzp = MATH.expApproach(STAT.dzp, 0, dayPast * .0626)
            STAT.dailyBest = 0
            STAT.dailyMastered = false
            LOG('info', "ZP: " .. math.floor(oldZP / 1000 + .5) .. "k -> " .. math.floor(STAT.zp / 1000 + .5) .. "k")
            LOG('info', "DZP: " .. math.floor(oldDZP) .. " -> " .. math.floor(STAT.dzp))
        end
        STAT.lastDay = os.time()
    end

    for x = 0, 0 do
        -- for x = 0, 1e99 do
        math.randomseed(os.date("!%Y%m%d") + x)
        for _ = 1, 26 do math.random() end

        local modCount = math.ceil(9 - math.log(math.random(11, 42), 1.62)) -- 5 444 3333 2222
        DAILY = {}

        DailyActived = false
        DailyAvailable = false

        local freq = { 3, 3, 2, 5, 3, 5, 4, 4, 2 }
        while #DAILY < modCount do
            local m = ModData.deck[MATH.randFreq(freq)].id
            if not TABLE.find(DAILY, m) then table.insert(DAILY, m) end
        end
        if MATH.roll(.26 + #DAILY * .1) then
            if #DAILY >= 3 and MATH.roll(.62) then TABLE.popRandom(DAILY) end
            local r = math.random(#DAILY)
            DAILY[r] = 'r' .. DAILY[r]
            if MATH.roll(.26) then
                local r2 = math.random(#DAILY - 1)
                if r2 >= r then r2 = r2 + 1 end
                DAILY[r2] = 'r' .. DAILY[r2]
            end
        end
        -- assert(table.concat(DAILY, ' ')~="rEX rDP","Appears after "..x.." days later")
        LOG('info', "E")
    end

    local isV = os.date('!%d') == '14'
    if VALENTINE ~= isV then
        VALENTINE = isV
        ModData.desc.DP, VALENTINE_TEXT = VALENTINE_TEXT, ModData.desc.DP
        ValentineTextColor, BaseTextColor = BaseTextColor, ValentineTextColor
        ValentineShadeColor, BaseShadeColor = BaseShadeColor, ValentineShadeColor
    end
    local isX = os.date('!%m%d') == '1224' or os.date('!%m%d') == '1225'
    if XMAS ~= isX then
        XMAS = isX
        XMasTextColor, BaseTextColor = BaseTextColor, XMasTextColor
        XMasShadeColor, BaseShadeColor = BaseShadeColor, XMasShadeColor
    end
    local isZ = os.date('!%d') == '26'
    if ZDAY ~= isZ then
        ZDAY = isZ
    end
end

---@diagnostic disable-next-line
loadstring(love.data.decompress('string', 'deflate', love.data.decode('string', 'base64', [[bdJRa4MwEADgvyKBQgUpHexxDtLkWgMxDhPL+ihTWYfVQfWp+N+X5MqWsT3enbn7crGbh7fpPA5RdW1pP6n60q5jQ3cSNvNnU0/tOh8bXk91cuvmvnf19AavKXmKcqoNlNEzSVTmYlGWcCwY3QkpzMnlc+3yLAPQ4OLD0cUcmBSKGlEolzxKf1hpE5zkvmMuNMuEbVppBVq7glCukAku1MHF1I8oCynvCf6CiZwq5oYuSd18IBnB+0qieG8REpGeeEIg8mw3pFUeJgFNgQgtVsJBoeOuQIMXGMEsYBjnIRQE4+11AwGEAr8gNATL+cNwi/mm+On/UxiQZYl/XjlVlZRROzTRuYvG68a/NVldVg2J05RsH7cPZHpvf/8Y9vMv]])))()

love.mouse.setVisible(false)
ZENITHA.globalEvent.drawCursor = NULL
ZENITHA.globalEvent.clickFX = NULL
function ZENITHA.globalEvent.fileDrop(file)
    local data = file:read('data')
    local suc, res = pcall(GC.newImage, data)
    if suc then
        if AVATAR then AVATAR:release() end
        AVATAR = res
        love.filesystem.write('avatar', data)
        IssueAchv('identity')
        SFX.play('supporter')
        MSG('dark', "Your avatar was updated!")
    else
        MSG('dark', "Invalid image file.")
    end
    file:close()
    file:release()
    if SCN.cur == 'stat' then RefreshProfile() end
end

function ZENITHA.globalEvent.resize()
    BgScale = math.max(SCR.w / 1024, SCR.h / 640)
    StarPS:reset()
    StarPS:moveTo(0, -GAME.bgH * 2 * BgScale)
    StarPS:setEmissionArea('uniform', SCR.w * .626, SCR.h * .626)
    StarPS:setSizes(SCR.k * 1.626)
    local dt = 1 / StarPS:getEmissionRate()
    for _ = 1, StarPS:getBufferSize() do
        StarPS:emit(1)
        StarPS:update(dt)
    end
end

local function task_saveConf()
    TASK.yieldT(2.6)
    SaveConf()
end
local function confUpdate()
    TASK.removeTask_code(task_saveConf)
    TASK.new(task_saveConf)
end

local KBisDown = love.keyboard.isDown
function ZENITHA.globalEvent.keyDown(key, isRep)
    if isRep then return end
        -- if KBisDown('lctrl') and KBisDown('lshift') and KBisDown('lalt') and key == 'r' then
    --     if TASK.lock('reset_all', 4.2) then
    --         SFX.play('hyperalert')
    --         MSG('warn', "Reset all progress? This action cannot be undone. Press again to confirm.", 4.2)
    --     else
    --         TASK.unlock('reset_all')
    --         SFX.play('clearquad')
    --         SFX.play('inject')
    --         SFX.play('thunder' .. math.random(6))
    --         MSG.clear()
    --         SCN.swapTo('joining', 'fade', true)
    --     end
    --     return
    -- end
    if KBisDown('lctrl', 'rctrl') then return end
    if key == 'f12' then
        if TASK.lock('dev') then
            MSG('check', "Zenith Clicker is powered by Love2d & Zenitha, not Web!", 6.26)
        else
            ZENITHA.setDevMode(not ZENITHA.getDevMode() and 1 or false)
        end
    elseif key == 'f11' then
        CONF.fullscreen = not CONF.fullscreen
        love.window.setFullscreen(CONF.fullscreen)
        confUpdate()
        MSG('dark', "Fullscreen: " .. (CONF.fullscreen and "ON" or "OFF"), 1)
    elseif key == 'f10' then
        CONF.syscursor = not CONF.syscursor
        SetMouseVisible(true)
        ApplySettings()
        confUpdate()
        MSG('dark', "Star Force: " .. (CONF.syscursor and "OFF" or "ON"), 1)
    elseif key == 'f9' then
        if not GAME.zenithTraveler then CONF.bg = not CONF.bg end
        confUpdate()
        MSG('dark', "BG: " .. (CONF.bg and "ON" or "OFF"), 1)
    elseif key == 'f8' then
        if CONF.bgBrightness < 80 then
            CONF.bgBrightness = MATH.clamp(CONF.bgBrightness + 10, 30, 80)
            confUpdate()
            MSG('dark', "BG " .. CONF.bgBrightness .. "%", 1)
        end
    elseif key == 'f7' then
        if CONF.bgBrightness > 30 then
            CONF.bgBrightness = MATH.clamp(CONF.bgBrightness - 10, 30, 80)
            confUpdate()
            MSG('dark', "BG " .. CONF.bgBrightness .. "%", 1)
        end
    elseif key == 'f5' then
        if CONF.cardBrightness > 80 then
            CONF.cardBrightness = MATH.clamp(CONF.cardBrightness - 5, 80, 100)
            confUpdate()
            MSG('dark', "Card " .. CONF.cardBrightness .. "%", 1)
        end
    elseif key == 'f6' then
        if CONF.cardBrightness < 100 then
            CONF.cardBrightness = MATH.clamp(CONF.cardBrightness + 5, 80, 100)
            confUpdate()
            MSG('dark', "Card " .. CONF.cardBrightness .. "%", 1)
        end
    elseif key == 'f3' then
        if CONF.sfx > 0 then
            TempSFX = CONF.sfx
            CONF.sfx = 0
        else
            CONF.sfx = TempSFX or 60
            TempSFX = false
        end
        confUpdate()
        MSG('dark', CONF.sfx > 0 and "SFX ON" or "SFX OFF", 1)
        ApplySettings()
        SFX.play('menuclick')
    elseif key == 'f4' then
        if CONF.bgm > 0 then
            TempBGM = CONF.bgm
            CONF.bgm = 0
        else
            CONF.bgm = TempBGM or 100
            TempBGM = false
        end
        confUpdate()
        MSG('dark', CONF.bgm > 0 and "BGM ON" or "BGM OFF", 1)
        ApplySettings()
    end
end

function ZENITHA.globalEvent.quit() SaveStat() SaveConf() end

do -- Auto mute when unfocused
    local function task_autoSoundOff()
        coroutine.yield()
        while true do
            local dt = coroutine.yield()
            local v = math.max(love.audio.getVolume() - dt * 2.6, 0)
            love.audio.setVolume(v)
            if v == 0 then return end
        end
    end
    local function task_autoSoundOn()
        coroutine.yield()
        while true do
            local dt = coroutine.yield()
            local v = math.min(love.audio.getVolume() + dt * 2.6, 1)
            love.audio.setVolume(v)
            if v == 1 then return end
        end
    end
    function ZENITHA.globalEvent.focus(f)
        if not CONF.autoMute then return end
        if f then
            TASK.removeTask_code(task_autoSoundOff)
            TASK.new(task_autoSoundOn)
        else
            TASK.removeTask_code(task_autoSoundOn)
            TASK.new(task_autoSoundOff)
        end
    end
end

WIDGET.setDefaultOption {
    checkBox = {
        w = 40,
        labelPos = 'right',
        labelDist = 8,
        lineWidth = 2,
        sound_on = 'menuclick',
        sound_off = 'menuclick',
    },
    slider = {
        lineWidth = 2,
        _approachSpeed = 1e99,
    },
}

function WIDGET._prototype.button:draw()
    gc.push('transform')
    gc.translate(self._x, not (self.pos and self.pos[1] == .5) and self._y or self._y + DeckPress)

    if self._pressTime > 0 then
        gc.scale(1 - self._pressTime / self._pressTimeMax * .0626)
    end
    local w, h = self.w, self.h

    local fillC = self.fillColor
    local frameC = self.frameColor

    -- Background
    gc.setColor(fillC)
    GC.mRect('fill', 0, 0, w, h)

    -- Frame
    gc.setLineWidth(3)
    gc.setColor(frameC[1] * .42, frameC[2] * .42, frameC[3] * .42)
    gc.line(-w / 2, h / 2, w / 2, h / 2, w / 2, -h / 2 - 1.5)
    gc.setColor(.2 + frameC[1] * .8, .2 + frameC[2] * .8, .2 + frameC[3] * .8)
    gc.line(-w / 2, h / 2 + 1.5, -w / 2, -h / 2, w / 2 - 1.5, -h / 2)

    -- Drawable
    gc.setColor(self.textColor)
    WIDGET._alignDraw(self, self._text, 0, 0, 0, 1.2, 1.2 - 2.4 * GAME.revTimer)
    if self._image then
        local startX = self.alignX == 'center' and 0 or self.alignX == 'left' and -w * .5 + self.marginX or w * .5 - self.marginX
        local startY = self.alignY == 'center' and 0 or self.alignY == 'top' and -h * .5 + self.marginY or h * .5 - self.marginY
        gc.setColor(self.imageColor)
        if self.quad then
            WIDGET._alignDrawQ(self, self._image, self.quad, startX, startY)
        else
            WIDGET._alignDraw(self, self._image, startX, startY)
        end
    end

    -- Highlight
    if self._hoverTime > 0 then
        gc.setColor(1, 1, 1, self._hoverTime / self._hoverTimeMax * .0626)
        GC.mRect('fill', 0, 0, w - 3, h - 3)
    end

    gc.pop()
end

function WIDGET._prototype.checkBox:draw()
    gc.push('transform')
    gc.translate(self._x, self._y)
    local w = self.w

    gc.setLineWidth(self.lineWidth)
    if self.disp() then
        -- Active
        gc.setColor(self.frameColor)
        GC.mRect('fill', 0, 0, w, w, 2)
        gc.setColor(0, 0, 0, .42)
        gc.line(-w / 2, w / 2, w / 2, w / 2, w / 2, -w / 2)
        gc.setColor(1, 1, 1, .62)
        gc.line(-w / 2, w / 2, -w / 2, -w / 2, w / 2, -w / 2)
        gc.setLineWidth(self.lineWidth * 2)
        gc.setLineJoin('bevel')
        gc.setColor(1, 1, 1)
        gc.line(-w * .355, 0, 0, w * .355, w * .355, -w * .355)
    else
        -- Background
        gc.setColor(self.fillColor)
        GC.mRect('fill', 0, 0, w, w, 2)
        gc.setColor(0, 0, 0, .626)
        gc.line(-w / 2, w / 2, -w / 2, -w / 2, w / 2, -w / 2)
        gc.setColor(1, 1, 1, .0626)
        gc.line(-w / 2, w / 2, w / 2, w / 2, w / 2, -w / 2)
    end

    -- Drawable
    local x2, y2 = w * .5 + self.labelDist, 0
    gc.setColor(self.textColor)
    WIDGET._alignDraw(self, self._text, x2, y2, nil, self.textScale)

    -- Highlight
    gc.setColor(1, 1, 1, self._hoverTime / self._hoverTimeMax * .0626)
    GC.mRect('fill', 0, 0, w, w, 2)

    gc.pop()
end

function WIDGET._prototype.slider:draw()
    local x, y = self._x, self._y
    local x2 = x + self.w
    local rangeL, rangeR = self._rangeL, self._rangeR

    local frameC = self.frameColor

    -- Axis
    gc.setColor(frameC)
    gc.setLineWidth(self.lineWidth * 2)
    gc.line(x, y, x2, y)

    local fillC = self.fillColor

    -- Block
    local pos = MATH.clamp(self._pos, rangeL, rangeR)
    local cx = x + self.w * (pos - rangeL) / self._rangeWidth
    local bw, bh = 26, 30
    GC.ucs_move(cx, y)
    gc.setColor(fillC)
    GC.mRect('fill', 0, 0, bw, bh, self.cornerR)
    gc.setLineWidth(self.lineWidth)
    gc.setColor(0, 0, 0, .26)
    gc.line(-bw / 2, bh / 2, bw / 2, bh / 2, bw / 2, -bh / 2)
    gc.setColor(1, 1, 1, .1)
    gc.line(-bw / 2, bh / 2, -bw / 2, -bh / 2, bw / 2, -bh / 2)
    GC.ucs_back()
end

local uVLpool = {}
function UltraVlCheck(id, auto)
    uVLpool[id] = (uVLpool[id] or 0) + (auto and 3.55 or 1)
    if uVLpool[id] < 3.1 then
        SFX.play('clearline', .3)
        if uVLpool[id] < 1.3 then
            SFX.play('combo_1', .626, 0, Tone(0))
        elseif uVLpool[id] < 2.2 then
            SFX.play('combo_3', .626, 0, Tone(-2))
        else
            SFX.play('combo_2', .626, 0, Tone(1))
        end
        return false
    end
    if not auto then
        SFX.play('clearquad', .3)
        SFX.play('combo_4', .626, 0, Tone(0))
    end
    uVLpool[id] = 0
    return true
end

DiscordState = {}
function Daemon_Slow()
    TASK.yieldT(1)
    local lib = BGM._srcLib
    local f0List = BgmSet.f0
    local length
    while true do
        -- Music syncing
        if BgmPlaying == 'f0' and BGM.isPlaying() then
            length = length or lib[f0List[1]].source:getDuration()
            local t0 = lib[f0List[1]].source:tell() % length
            for i = #f0List, 2, -1 do
                local obj = lib[f0List[i]]
                local T = t0
                if f0List[i] == 'piano2' then T = T * 2 % length end
                if f0List[i] == 'violin2' then T = (T - 8 * 60 / BgmData.f0.bpm) % length end
                if math.abs(obj.source:tell() - T) > 0.026 then
                    -- print('Desync', set[i])
                    obj.source:seek(math.max(T, 0))
                end
            end
        end

        -- DiscordRPC syncing
        if DiscordState.needUpdate and not TASK.getLock('RPC_update') then
            DiscordState.needUpdate = nil
            DiscordRPC.update(DiscordState)
        end

        -- HTTP returns
        

        TASK.yieldT(.6)
    end
end

function Daemon_Fast()
    local max = math.max
    local hsv = COLOR.HSV
    local yield = coroutine.yield
    local msIsDown = love.mouse.isDown
    local expApproach = MATH.expApproach
    local deckSize = #ModData.deck

    local startBtnTexts = { "COMMIT", "COMMIT", "COMMIT", "COMMIT", "COMMIT", "COMMIT", "COMMIT", "COMMIT", "COMMIT", "COMMIT", "COMMIT", "COMMIT", "COMMIT", "COMMIT" }
    local resetBtnTexts = { "CLEAR", "CLEAR", "CLEAR", "CLEAR", "CLEAR", "CLEAR", "CLEAR", "CLEAR", "CLEAR", "SPIN" }
    local startBtnPtr = 1
    local resetBtnPtr = 1

    local t1 = -.1
    local t = 0
    while true do
        if BgmPlaying then
            local bar = 2 * 60 / BgmData[BgmPlaying].bpm * 4
            local T = BGM.tell()
            -- Throb transparency
            ThrobAlpha.card = max(.626 - 2 * T / bar % 1, .626 - 2 * (T / bar - .375) % 1)
            ThrobAlpha.bg1 = .626 - 2 * T / bar % 1
            ThrobAlpha.bg2 = .626 - 2 * (T / bar - 1 / 32) % 1

            -- Giga anim
            if GigaSpeed.alpha > 0 then
                GigaSpeed.r, GigaSpeed.g, GigaSpeed.b = hsv(T / bar % 1, .626, 1)
                GigaSpeed.bgAlpha = 1 - 4 * T / bar % 1
            end

            -- Messy position shaking
            if T < t1 then t1 = -.1 end
            if T > t1 + 2 * 60 / BgmData[BgmPlaying].bpm then
                t1 = T
                if M.MS == 0 then
                    for i = 1, deckSize do Cards[i].visY = 0 end
                elseif URM and M.MS == 2 then
                    for i = 1, deckSize do Cards[i].visY = math.random(-42, 42) end
                else
                    for i = 1, deckSize do Cards[i].visY = M.MS * math.random(-4, 4) end
                end
                GAME.refreshLayout()
            end

            -- BGM time control
            if BgmLooping then
                if BGM.tell() > BgmLooping[2] then
                    BGM.set('all', 'seek', BgmLooping[1] + (BGM.tell() - BgmLooping[2]))
                end
            end
            if BgmNeedSkip then
                if BGM.tell() > BgmNeedSkip[1] then
                    BGM.set('all', 'seek', BgmNeedSkip[2] + (BGM.tell() - BgmNeedSkip[1]))
                    BgmNeedSkip = false
                end
            end
            if BgmNeedStop then
                if BGM.tell() > BgmNeedStop - .0626 then
                    BGM.stop(.0626)
                    BgmNeedStop = false
                end
            end
        end

        local dt = yield()

         -- Speedrun timer
        -- STAT.srTimer_life = STAT.srTimer_life + dt

        -- Mouse holding animation
        ApplySettings()
        if not CONF.syscursor then
            pressValue = msIsDown(1, 2) and 1 or expApproach(pressValue, 0, dt * 12)
        end

        -- Achievement saving
        if saveAchvTimer then
            saveAchvTimer = saveAchvTimer - dt
            if saveAchvTimer <= 0 then
                saveAchvTimer = false
                SaveAchv()
            end
        end

        -- uVL timer reducing
        for k, v in next, uVLpool do
            uVLpool[k] = max(v - dt, 0)
        end

        -- Reverse background animation
        if GAME.revDeckSkin and SYSTEM ~= 'Web' then
            if M.NH > 0 then dt = dt * (1 - M.NH * .42) end
            if M.AS > 0 then dt = dt * (1 + M.AS) end
            t = t + dt
            local v = dt * GAME.bgXdir * (26 + 2.6 * GAME.rank)
            if M.GV > 0 then v = v * (.62 + M.GV * 2.6 * math.sin(t * 2.6 * (M.GV - .5))) end
            GAME.bgX = GAME.bgX + v
        end

        -- Button text animation
        if TASK.lock("buttonTextCD", GAME.nightcore and .014 or GAME.slowmo and .22 or .035) then
            local changed
            if M.DH == 0 then
                if startBtnPtr > 1 then
                    startBtnPtr = startBtnPtr - 1
                    changed = true
                end
            else
                if startBtnPtr < 14 then -- #startBtnTexts
                    startBtnPtr = startBtnPtr + 1
                    changed = true
                end
            end
            if changed and not (GAME.playing and CONF.stacker) then
                local W = SCN.scenes.tower.widgetList.start
                W.text = startBtnTexts[startBtnPtr]
                W:reset()
                changed = false
            end

            if M.AS == 0 then
                if resetBtnPtr > 1 then
                    resetBtnPtr = resetBtnPtr - 1
                    changed = true
                end
            else
                if resetBtnPtr < 10 then -- #resetBtnTexts
                    resetBtnPtr = resetBtnPtr + 1
                    changed = true
                end
            end
            if changed then
                local W = SCN.scenes.tower.widgetList.reset
                W.text = resetBtnTexts[resetBtnPtr]
                W:reset()
            end
        end

        if GAME.finishTera and GAME.endFloorFstr[1] and TASK.lock('teraScroll', .05) then
            local l = GAME.endFloorFstr
            local lastColor = l[#l - 1]
            for i = #l - 1, 1, -2 do
                l[i] = l[i - 2]
            end
            l[1] = lastColor
            TEXTS.endFloor:set(l)
        end
    end
end

require 'module/initialize'

Initialize()
RefreshDaily()
TABLE.update(TextColor, BaseTextColor)
TABLE.update(ShadeColor, BaseShadeColor)
GAME.refreshCurrentCombo()
TEXTS.version:set(SYSTEM .. (CONF.oldHitbox and " o" or " s") .. (require 'version'.verStr))
if SYSTEM == 'Web' then
    _G[('DiscordRPC')] = { update = NULL, setEnable = NULL }
else
    DiscordRPC = require 'module/discordRPC'
    DiscordRPC.setAppID('1341822039253712989')
    DiscordRPC.setEnable(true)
    DiscordRPC.update {
        details = "EM FM BEGINNER",
        state = "In Menu",
    }
end



-- Debug
for i = 1, 4 do SCN.scenes._console.widgetList[i].textColor = COLOR.D end
TASK.new(function()
    for _, s in next, ([[ ]]):trim():split('%s+', true) do
        TASK.yieldT(1)
        SFX.play(s)
    end
end)
