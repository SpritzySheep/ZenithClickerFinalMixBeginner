---@type Zenitha.Scene
local scene = {}


local scroll, scroll1 = 0, 0
local maxScroll = 90000
local gc = love.graphics
local gc_replaceTransform, gc_translate = gc.replaceTransform, gc.translate
local gc_setColor, gc_rectangle, gc_print = gc.setColor, gc.rectangle, gc.print
local gc_setAlpha, gc_setLineWidth = GC.setAlpha, GC.setLineWidth
local gc_draw, gc_mDraw = GC.draw, GC.mDraw
local gc_line = GC.line
local spin = 0
local allBadge = 43

local clr = {
    D = { COLOR.HEX '1F1F1FFF' },
    L = { COLOR.HEX '656565FF' },
}

DevNoteText = GC.newText(FONT.get(30))
BadgeText = GC.newText(FONT.get(70))
local lines = {}

local tempY = 0

local function addText(text, x, y, scale, wraplimit)
    if type(text) == 'string' then text = { COLOR.L, text } end
    scale = scale or 1
    local w = (wraplimit or 900) / scale
    BadgeText:addf(text, w, 'center', x - w / 2 * scale, tempY + y, 0, scale)
end

local function addSection(y)
    tempY = y
    table.insert(lines, y)
end
ABOUT = {
    CEheight = 0,
}

for d = .5, 2.5, .5 do
    addText({ COLOR.LD, "BADGE LIST" }, 40 + d, 20 + d)
    addText({ COLOR.LD, "" }, 80 + d, 95 + d)
end

addSection(220)
--addText({ COLOR.A, "VANILLA BADGES" }, 0, 110, .3)



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


function scene.draw()
    if GAME.mod.AS == 1 then
        spin = spin + 0.02
    elseif GAME.mod.AS == 2 then
        spin = spin + 0.06
    elseif GAME.anyRev and GAME.mod.AS == 0 then
        spin = 3.141592
    else
        spin = 0
    end
    local function addBadge(id,x,y)
        local scale = 150 / math.max(TEXTURE.stat.badges[id]:getDimensions())
            if STAT.badge[id] then
                if not GAME.mod.anyRev then
                GC.mDraw(TEXTURE.stat.badges[id], x, y, spin, scale)
                else
                GC.mDraw(TEXTURE.stat.badges[id], x, y, spin, scale * -1, scale)
                end
            else
        GC.mDraw("rank/z.png", x,y,0, scale)
        end
        addText({ COLOR.L, BadgeData[id].name }, x, y - 130, .2)
        addText({ COLOR.T, BadgeData[id].desc }, x, y - 110, .15)
    end
    DrawBG(26)
    GC.rectangle('fill',-800,0,3200,2000)

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
    gc_draw(BadgeText)
    gc_draw(DevNoteText, 0, 285 - DevNoteText:getHeight() * (.68 / 2), 0, .68, .68, 1000, 0)
    local badges = TABLE.sort(TABLE.getKeys(STAT.badge), function(a, b) return (BadgeData[a] or BadgeData[0]).prio < (BadgeData[b] or BadgeData[0]).prio end)
    if ((200*MATH.floor(#badges/8))-420) > 0 then
    maxScroll = (200*MATH.floor((#badges+7)/8))-420
    else maxScroll = 0 end
    for b = 1, #badges do
    addBadge(badges[b],(200 * ((b-1) % 8)) - 700,(200 * MATH.floor((b-1)/8)) + 450)
    end


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
        gc_print(#badges .. "/".. allBadge .." BADGES ("..MATH.floor((#badges/allBadge)*100).."%)", 15, 68, 0, 1, -1)
     else
        gc_print(#badges .. "/".. allBadge .." BADGES ("..MATH.floor((#badges/allBadge)*100).."%)", 15, 0)
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
    gc_print("BADGE COLLECTION", 15, -45, 0, .85, 1)
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
