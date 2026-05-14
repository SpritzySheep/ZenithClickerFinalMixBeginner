---@type Zenitha.Scene
local scene = {}


local scroll, scroll1 = 0, 0
local maxScroll = 90000

local clr = {
    D = { COLOR.HEX '1F1F1FFF' },
    L = { COLOR.HEX '656565FF' },
}

DevNoteText = GC.newText(FONT.get(30))
AboutText = GC.newText(FONT.get(70))
local lines = {}

local tempY = 0

local function addText(text, x, y, scale, wraplimit)
    if type(text) == 'string' then text = { COLOR.L, text } end
    scale = scale or 1
    local w = (wraplimit or 900) / scale
    AboutText:addf(text, w, 'center', x - w / 2 * scale, tempY + y, 0, scale)
end

local function addSection(y)
    tempY = y
    table.insert(lines, y)
end
ABOUT = {
    CEheight = 0,
}

for d = .5, 2.5, .5 do
    addText({ COLOR.LD, "FINAL MIX" }, 40 + d, 20 + d)
    addText({ COLOR.LD, "BEGINNER" }, 80 + d, 95 + d)
end
addText("FINAL MIX", 40, 20)
addText("BEGINNER", 80, 95)

addSection(220)

addSection(350)

-- THE TEAM

addText({ COLOR.O, "ORIGNAL GAME TEAM" }, 0, 20, .3)

local function addMajorCredit(x, y, color, name, role, desc)
    addText({ color, name }, x, y, .5)
    addText({ COLOR.LD, role }, x, y + 40, .26)
    if desc then addText({ COLOR.LD, desc }, x, y + 60, .2) end
end

local function addRank(x, y, color, rank, ce)
    addText({ color, rank }, x, y, 1)
    addText({ COLOR.LD, ce }, x, y + 70, .5)
end

addMajorCredit(0000, 060, { COLOR.HEX '80CCFF' }, "MRZ", "FOUNDER & LEAD PRODUCER", "Programming, Game Design, General Development")
addMajorCredit(-160, 160, { COLOR.HEX 'B966E3' }, "PETRTECH", "MUSIC", "F10 Music")
addMajorCredit(0160, 160, { COLOR.HEX '9DBCFF' }, "RONEZKJ15", "MUSIC", "Extra Music")
addMajorCredit(-320, 260, { COLOR.HEX 'DDFF80' }, "DJ  ASRIEL", "GRAPHICS", "Background Reconstruction & Game Icon")
addMajorCredit(0000, 260, { COLOR.HEX '77DD66' }, "CREEPERCRAFTYT", "GRAPHICS", "Mod Icons")
addMajorCredit(0320, 260, { COLOR.HEX '5792FF' }, "ZYRIXIA", "GRAPHICS", "Rank Icons")
addMajorCredit(-320, 360, { COLOR.HEX 'DD99FF' }, "OSK", "FOUNDER & LEAD PRODUCER", "of the Original Game: TETR.IO")
addMajorCredit(0000, 360, { COLOR.HEX 'FF99CC' }, "DOKTOROCELOT", "AUDIO & MUSIC", "of both TETR.IO and Zenith Clicker")
addMajorCredit(0320, 360, { COLOR.HEX '3A66DD' }, "GARBO", "GAME & WORLD DESIGN", "of the Original Game: TETR.IO")
addMajorCredit(-320, 460, { COLOR.HEX 'F880F0' }, "FLOWERLING", "TEXT REVISION")
addMajorCredit(0000, 460, { COLOR.HEX 'B7A0FF' }, "FMICHAEL", "EXTRA TEXTS & WORLD DESIGN")
addMajorCredit(0320, 460, { COLOR.HEX 'FFE590' }, "MATTMAYUGA", "TEXT REVISION")
addMajorCredit(-320, 560, { COLOR.HEX '8BD6C3' }, "OBSIDIAN", "EXTRA TEXTS")
addMajorCredit(0000, 560, { COLOR.HEX 'FF82F0' }, "SPRITZY SHEEP", "WORLD DESIGN")
addMajorCredit(0320, 560, { COLOR.HEX 'E9C6FF' }, "FCSPLAYZ", "EXTRA TEXTS")

addSection(1010)

addText({ COLOR.O, "ART BY" }, 0, 20, .3)

addMajorCredit(-390, 62, COLOR.L, "LARGEONIONS", "FLOORS 1-5")
addMajorCredit(-130, 62, COLOR.L, "S. ZHANG", "FLOORS 6-8")
addMajorCredit(0130, 62, COLOR.L, "LAUREN SHENG", "FLOORS 9-10")
addMajorCredit(0390, 62, COLOR.L, "RICMAN", "ORIGINAL CARD ART")

addSection(1160)

addText({
    COLOR.O, "FONTS BY ",
    COLOR.L, "ADRIAN FRUTIGER (D-DIN-PRO) ",
    COLOR.O, "& ",
    COLOR.L, "MOONIAK (ABHAYALIBRE)"
}, 0, 20, .32)

addText({
    COLOR.O, "SOME ACHV ICONS BY ",
    COLOR.L, "LORC, DELAPOUITE, QUOTING ",
    COLOR.O, "FROM ",
    COLOR.L, "GAME-ICONS.NET"
}, 0, 60, .32)

addSection(1270)

addText({ COLOR.O, "ALL PARTICIPANTS" }, 0, 20, .3)

addText({
    table.concat({
        "5HAN",
        "ADRIAN FRUTIGER",
        "BARON",
        "CREEPERCRAFTYT",
        "DELAPOUITE",
        "DJ ASRIEL",
        "DOKTOROCELOT",
        "FCSPLAYZ",
        "FLOWERLING",
        "FMICHAEL",
        "GAMETILDEAD",
        "GARBO",
        "LARGEONIONS",
        "LAUREN SHENG",
        "LORC",
        "MATTMAYUGA",
        "MOONIAK",
        "MRZ",
        "OBSIDIAN",
        "OSK",
        "PETRTECH",
        "PONIES",
        "QUOTING",
        "RICMAN",
        "RONEZKJ15",
        -- "RTXTILE",
        "S. ZHANG",
        "SPRITZY SHEEP",
        "THE_111THBLITZER",
        "TIZAGO",
        "WAH",
        "ZYRIXIA",
    }, ",  ")
}, 0, 60, .26)

addSection(1450)

addText({ COLOR.O, "FINAL MIX BEGINNER MOD BY" }, 0, 20, .3)

addMajorCredit(0, 50, { COLOR.HEX 'FF82F0' }, "Spritzy Lunabright", "F-MixB Dev")

addText({ COLOR.O, "WITH HELP FROM" }, 0, 110, .3)

addMajorCredit(0, 130, { COLOR.HEX '00FF00' }, "Trevor Smithy", "ZCEM Dev")

-- addSection(1650)
-- addText({ COLOR.O, "CHAKRA ESCENCE BREAKDOWN" }, 0, 20, 1)
-- addText({ COLOR.A, "MAXIMAL HEIGHT" }, -200, 80, .5)
-- addText({ COLOR.A, ABOUT.CEheight }, 200, 80, .5)

addSection(1650)

addText({ COLOR.O, "RANK ALMANAC" }, 0, 20, .3)
addText({ COLOR.O, "WARNING: THIS SHOWS ALL RANKS, SPOILERS AHEAD" }, 0, 40, .3)

addRank(0, 50, { COLOR.HEX '000000' }, "", "0 CE")
addRank(0, 150, { COLOR.HEX '131313' }, "?", "2,000 CE")
addRank(-100, 250, { COLOR.HEX '685868' }, "D", "4,000 CE")
addRank(100, 250, { COLOR.HEX '624462' }, "D+", "6,000 CE")
addRank(-200, 350, { COLOR.HEX '43294E' }, "C-", "8,000 CE")
addRank(0, 350, { COLOR.HEX '371744' }, "C", "10,000 CE")
addRank(200, 350, { COLOR.HEX '301C41' }, "C+", "12,000 CE")
addRank(-200, 450, { COLOR.HEX '2A2156' }, "B-", "14,000 CE")
addRank(0, 450, { COLOR.HEX '222C5B' }, "B", "16,000 CE")
addRank(200, 450, { COLOR.HEX '386987' }, "B+", "18,000 CE")
addRank(-200, 550, { COLOR.HEX '35A690' }, "A-", "20,000 CE")
addRank(0, 550, { COLOR.HEX '5BBE7A' }, "A", "22,000 CE")
addRank(200, 550, { COLOR.HEX '1CAD2B' }, "A+", "24,000 CE")
addRank(-300, 650, { COLOR.HEX 'B6B621' }, "S-", "26,000 CE")
addRank(-100, 650, { COLOR.HEX 'C1A425' }, "S", "28,000 CE")
addRank(100, 650, { COLOR.HEX 'D8A312' }, "S+", "30,000 CE")
addRank(300, 650, { COLOR.HEX 'D07A25' }, "SS", "32,000 CE")
addRank(0, 750, { COLOR.HEX 'DC401A' }, "U", "34,000 CE")
addRank(-200, 850, { COLOR.HEX 'F86EFD' }, "X", "36,000 CE")
addRank(0, 850, { COLOR.HEX 'A979FB' }, "X+", "38,000 CE")
addRank(200, 850, { COLOR.HEX 'E03BE6' }, "XX", "40,000 CE")
addRank(-200, 950, { COLOR.HEX 'E33CED' }, "Y-", "42,000 CE")
addRank(0, 950, { COLOR.HEX 'E837C8' }, "Y", "44,000 CE")
addRank(200, 950, { COLOR.HEX 'E83790' }, "Y+", "46,000 CE")
addRank(-200, 1050, { COLOR.HEX 'EB423A' }, "Z-", "48,000 CE")
addRank(0, 1050, { COLOR.HEX 'E95D38' }, "Z", "50,000 CE")
addRank(200, 1050, { COLOR.HEX 'E17331' }, "Z+", "52,000 CE")
addRank(-200, 1150, { COLOR.HEX 'EC993B' }, "K-", "54,000 CE")
addRank(0, 1150, { COLOR.HEX 'EAB539' }, "K", "56,000 CE")
addRank(200, 1150, { COLOR.HEX 'EBD33A' }, "K+", "58,000 CE")
addRank(-200, 1250, { COLOR.HEX 'E0E635' }, "V-", "60,000 CE")
addRank(0, 1250, { COLOR.HEX 'C6EA39' }, "V", "62,000 CE")
addRank(200, 1250, { COLOR.HEX 'A7E938' }, "V+", "64,000 CE")
addRank(-300, 1350, { COLOR.HEX '89E938' }, "O-", "66,000 CE")
addRank(-100, 1350, { COLOR.HEX '6CEA39' }, "O", "68,000 CE")
addRank(100, 1350, { COLOR.HEX '68E132' }, "O+", "70,000 CE")
addRank(300, 1350, { COLOR.HEX '4EEA39' }, "OO", "72,000 CE")
addRank(-400, 1450, { COLOR.HEX '3AEB42' }, "M-", "74,000 CE")
addRank(-200, 1450, { COLOR.HEX '45F361' }, "M", "76,000 CE")
addRank(0, 1450, { COLOR.HEX '3CED7E' }, "M+", "78,000 CE")
addRank(200, 1450, { COLOR.HEX '3AEB99' }, "MM", "80,000 CE")
addRank(400, 1450, { COLOR.HEX '38E9B4' }, "MMM", "82,000 CE")
addRank(-300, 1550, { COLOR.HEX '3AEBD3' }, "G-", "84,000 CE")
addRank(-100, 1550, { COLOR.HEX '39E4EA' }, "G", "86,000 CE")
addRank(100, 1550, { COLOR.HEX '3BC9EC' }, "G+", "88,000 CE")
addRank(300, 1550, { COLOR.HEX '39A8EA' }, "GG", "90,000 CE")
addRank(-200, 1650, { COLOR.HEX '46A1F4' }, "T-", "92,000 CE")
addRank(0, 1650, { COLOR.HEX '386BE9' }, "T", "94,000 CE")
addRank(200, 1650, { COLOR.HEX '3D4AEF' }, "T+", "96,000 CE")
addRank(-200, 1750, { COLOR.HEX '4E3DEF' }, "L-", "98,000 CE")
addRank(0, 1750, { COLOR.HEX '5F3AEB' }, "L", "100k CE")
addRank(200, 1750, { COLOR.HEX '803EEF' }, "L+", "102k CE")
addRank(-300, 1750, { COLOR.HEX '9A3CED' }, "I-", "104k CE")
addRank(-100, 1750, { COLOR.HEX 'BA3EEF' }, "I", "106k CE")
addRank(100, 1750, { COLOR.HEX 'D53EEF' }, "I+", "108k CE")
addRank(300, 1750, { COLOR.HEX 'EB47F6' }, "II", "110k CE")
local timer
function scene.load()
    MSG.clear()
    timer = 0
    SetMouseVisible(true)
    scroll, scroll1 = 0, -620

    local setStr = table.concat(TABLE.sort(GAME.getHand(true)))
    local cID = table.concat(GAME.getHand(true), " ")
    if GAME.anyUltra then
        setStr = 'u' .. setStr
        cID = cID:gsub("r", "u")
    end
    local text
    if DevCommentary[cID] then
        if BEST.highScore[setStr] < Floors[9].top then
            text = DevCommentary.notFinished
        else
            text = DevCommentary[cID]
        end
    else
        text = DevCommentary.noComment
    end
    DevNoteText:setf(text:repD(STAT.uid), 2000, 'center')
end

function scene.mouseMove(_, _, _, dy)
    if love.mouse.isDown(1, 2) then
        scroll = MATH.clamp(scroll - dy, 0, maxScroll)
    end
end

function scene.touchMove(_, _, _, dy)
    scroll = MATH.clamp(scroll - dy, 0, maxScroll)
end

function scene.keyDown(key, isRep)
    if isRep then return true end
    if key == 'escape' or key == 'f2' then
        SFX.play('menuclick')
        SCN.back('none')
    end
    ZENITHA._cursor.active = true
    return true
end

function scene.wheelMove(_, dy)
    scroll = MATH.clamp(scroll - dy * 42, 0, maxScroll)
end

function scene.update(dt)
    if timer < 26 then
        timer = timer + dt
        if timer > 26 then
            IssueAchv('respectful')
        end
    end
    local y0 = scroll1
    scroll1 = MATH.expApproach(scroll1, scroll, dt * 26)
    GAME.bgH = math.max(GAME.bgH + (y0 - scroll1) / 355, 0)
    GAME.height = GAME.bgH
end

local gc = love.graphics
local gc_replaceTransform, gc_translate = gc.replaceTransform, gc.translate
local gc_setColor, gc_rectangle, gc_print = gc.setColor, gc.rectangle, gc.print
local gc_setAlpha, gc_setLineWidth = GC.setAlpha, GC.setLineWidth
local gc_draw, gc_mDraw = GC.draw, GC.mDraw
local gc_line = GC.line
function scene.draw()
    DrawBG(26)

    gc_replaceTransform(SCR.xOy_u)
    gc_translate(0, 100 - scroll1)

    gc_setColor(1, 1, 1)
    local icon, kx, ky
    if GAME.mod.EX > 0 then
        icon = TEXTURE.logo_old
        kx, ky = .5, .5
    else
        icon = TEXTURE.logo
        kx, ky = .3, .3
    end
    if GAME.anyRev then ky = -ky end
    gc_mDraw(icon, -170, 100, 0, kx, ky)
    gc_draw(AboutText)
    gc_draw(DevNoteText, 0, 285 - DevNoteText:getHeight() * (.68 / 2), 0, .68, .68, 1000, 0)

    gc_setColor(1, 1, 1, .2)
    gc_setLineWidth(0.5)
    for i = 1, #lines do
        gc_line(-600, lines[i], 600, lines[i])
    end

    -- Grid
    if love.keyboard.isDown('space') then
        gc_setColor(1, 1, 0)
        FONT.set(30)
        for x = -600, 600 - 100, 100 do
            for y = 0, 1300 - 100, 100 do
                gc_rectangle('line', x, y, 100, 100)
                gc_print(x .. ',' .. y, x + 2.6, y, 0, .355)
            end
        end
    end

    -- Top bar & title
    gc_replaceTransform(SCR.xOy_u)
    gc_setColor(clr.D)
    gc_rectangle('fill', -1300, 0, 2600, 70)
    gc_setColor(clr.L)
    gc_setAlpha(.626)
    gc_rectangle('fill', -1300, 70, 2600, 3)
    gc_replaceTransform(SCR.xOy_ul)
    gc_setColor(clr.L)
    FONT.set(50)
    if GAME.anyRev then
        gc_print("ABOUT", 15, 68, 0, 1, -1)
    else
        gc_print("ABOUT", 15, 0)
    end

    -- Bottom bar & thanks
    gc_replaceTransform(SCR.xOy_d)
    gc_setColor(clr.D)
    gc_rectangle('fill', -1300, 0, 2600, -50)
    gc_setColor(clr.L)
    gc_setAlpha(.626)
    gc_rectangle('fill', -1300, -50, 2600, -3)
    gc_replaceTransform(SCR.xOy_dl)
    gc_setColor(clr.L)
    FONT.set(30)
    gc_print("THANK YOU FOR PLAYING FINAL MIX BEGINNER!", 15, -45, 0, .85, 1)
end

scene.widgetList = {
    WIDGET.new {
        name = 'back', type = 'button',
        pos = { 0, 0 }, x = 60, y = 140, w = 160, h = 60,
        color = { .15, .15, .15 },
        sound_hover = 'menutap',
        fontSize = 30, text = "    BACK", textColor = 'DL',
        onClick = function() love.keypressed('escape') end,
    },
}

return scene
