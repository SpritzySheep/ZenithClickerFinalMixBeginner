---@field start number Start time for lyric event
---@field finish number Finish time for lyric event
---@field start2 number? Secondary start time for lyric event
---@field finish2 number? Secondary finish time for lyric event
---@field text string Lyric text
---@field text2 string? Lyric text for start2/finish2, uses text if not specified, does not work if lyric is also harmony
---@field harmony boolean? If true, use harmony display, optional
-- For dy, positive means lower, negative means higher
---@field dyStart number? Y Offset at start, defaults to 0 if not specified, optional
---@field dyFinish number? Y Offset CHANGE from start, defaults to 0 if not specified, optional

-- Song-level changes
---@field fontSize number? Changes displayed font size, optional
---@field color Zenitha.Color? If nil, uses rainbow_light
local d = {
    terael = {
        lyrics = {
            -- Verse
            {start = 20, finish = 22.8, start2 = 20+64, finish2 = 22.8+64,      text = 'Welcome into the Zenith Tower', text2 = 'As you pass through the different scenes here'},
            {start = 22.8, finish = 25.5, start2 = 22.8+64, finish2 = 25.5+64,  text = 'where anyone can try their luck', text2 = "you'll see many foes who now try their luck"},
            {start = 25.5, finish = 28.1, start2 = 25.5+64, finish2 = 28.1+64,  text = 'at the climb to the top of the floors.'},
            {start = 28.1, finish = 30.8, start2 = 28.1+64, finish2 = 30.8+64,  text = "But, you'll come to a realization", text2 = "But, you've come to the realization"},
            {start = 30.8, finish = 34.1, start2 = 30.8+64, finish2 = 34.1+64,  text = 'that only one can truly be with the'},
            {start = 34.1, finish = 36.1, start2 = 34.1+64, finish2 = 36.1+64,  text = "stars at the top. So now you're", text2 = "stars at the top. So you keep"},
            -- CLIMB'IN
            {start = 36.1, finish = 36.8, start2 = 100.1, finish2 = 100.8, dyStart = 0, dyFinish = -10,     text = "CLIMB'IN"},
            {start = 36.8, finish = 37.1, start2 = 100.8, finish2 = 101.1, dyStart = -10,                   text = "and"},
            {start = 37.1, finish = 37.8, start2 = 101.1, finish2 = 101.8, dyStart = -10, dyFinish = -10,   text = "CLIMB'IN"},
            {start = 37.8, finish = 38.1, start2 = 101.8, finish2 = 102.1, dyStart = -20,                   text = "and"},
            {start = 38.1, finish = 38.8, start2 = 102.1, finish2 = 102.8, dyStart = -20, dyFinish = -10,   text = "CLIMB'IN"},
            {start = 38.8, finish = 39.1, start2 = 102.8, finish2 = 103.1, dyStart = -30,                   text = "and"},
            {start = 39.1, finish = 39.8, start2 = 103.1, finish2 = 103.8, dyStart = -30, dyFinish = -10,   text = "CLIMB'IN"},
            {start = 39.8, finish = 40.1, start2 = 103.8, finish2 = 104.1, dyStart = -40, dyFinish = 40,    text = "keep on"},
            {start = 36.1+4, finish = 36.8+4, start2 = 100.1+4, finish2 = 100.8+4, dyStart = 0, dyFinish = -10,     text = "CLIMB'IN"},
            {start = 36.8+4, finish = 37.1+4, start2 = 100.8+4, finish2 = 101.1+4, dyStart = -10,                   text = "and"},
            {start = 37.1+4, finish = 37.8+4, start2 = 101.1+4, finish2 = 101.8+4, dyStart = -10, dyFinish = -10,   text = "CLIMB'IN"},
            {start = 37.8+4, finish = 38.1+4, start2 = 101.8+4, finish2 = 102.1+4, dyStart = -20,                   text = "and"},
            {start = 38.1+4, finish = 38.8+4, start2 = 102.1+4, finish2 = 102.8+4, dyStart = -20, dyFinish = -10,   text = "CLIMB'IN"},
            {start = 38.8+4, finish = 39.1+4, start2 = 102.8+4, finish2 = 103.1+4, dyStart = -30,                   text = "and"},
            {start = 39.1+4, finish = 40.1+4, start2 = 103.1+4, finish2 = 104.1+4, dyStart = -30, dyFinish = 30,    text = "just keep on"},
            {start = 36.1+8, finish = 36.8+8, start2 = 100.1+8, finish2 = 100.8+8, dyStart = 0, dyFinish = -10,     text = "CLIMB'IN"},
            {start = 36.8+8, finish = 37.1+8, start2 = 100.8+8, finish2 = 101.1+8, dyStart = -10,                   text = "and"},
            {start = 37.1+8, finish = 37.8+8, start2 = 101.1+8, finish2 = 101.8+8, dyStart = -10, dyFinish = -10,   text = "CLIMB'IN"},
            {start = 37.8+8, finish = 38.1+8, start2 = 101.8+8, finish2 = 102.1+8, dyStart = -20,                   text = "and"},
            {start = 38.1+8, finish = 38.8+8, start2 = 102.1+8, finish2 = 102.8+8, dyStart = -20, dyFinish = -10,   text = "CLIMB'IN"},
            {start = 38.8+8, finish = 39.1+8, start2 = 102.8+8, finish2 = 103.1+8, dyStart = -30,                   text = "and"},
            {start = 39.1+8, finish = 39.8+8, start2 = 103.1+8, finish2 = 103.8+8, dyStart = -30, dyFinish = -10,   text = "CLIMB'IN"},
            {start = 39.8+8, finish = 40.1+8, start2 = 103.8+8, finish2 = 104.1+8, dyStart = -40, dyFinish = 40,    text = "keep on"},
            {start = 36.1+12, finish = 36.8+12, start2 = 100.1+12, finish2 = 100.8+12, dyStart = 0, dyFinish = -10,     text = "CLIMB'IN"},
            {start = 36.8+12, finish = 37.1+12, start2 = 100.8+12, finish2 = 101.1+12, dyStart = -10,                   text = "and"},
            {start = 37.1+12, finish = 37.8+12, start2 = 101.1+12, finish2 = 101.8+12, dyStart = -10, dyFinish = -10,   text = "CLIMB'IN"},
            {start = 37.8+12, finish = 38.1+12, start2 = 101.8+12, finish2 = 102.1+12, dyStart = -20,                   text = "and"},
            {start = 38.1+12, finish = 38.8+12, start2 = 102.1+12, finish2 = 102.8+12, dyStart = -20, dyFinish = -10,   text = "CLIMB'IN"},
            {start = 38.8+12, finish = 39.1+12, start2 = 102.8+12, finish2 = 103.1+12, dyStart = -30,                   text = "and"},
            {start = 39.1+12, finish = 40.1+12, start2 = 103.1+12, finish2 = 104.1+12, dyStart = -30, dyFinish = 30,    text = "don't slow down"},
            -- Chorus
            {start = 52, finish = 54.8, start2 = 52+64, finish2 = 54.8+64, text = "Now, a piece of advice:"},
            {start = 54.9, finish = 55.8, start2 = 54.9+64, finish2 = 55.8+64, text = "whateva you do,"},
            {start = 55.8, finish = 58.5, start2 = 55.8+64, finish2 = 58.5+64, text = "don't stop to take a look at the sights", text2 = "don't lose your view of the goal"},
            {start = 59, finish = 59.7, start2 = 59+64, finish2 = 59.7+64, text = "(yea)"},
            {start = 60, finish = 62.8, start2 = 60+64, finish2 = 62.8+64, text = "Time to time, people will fail"},
            {start = 63, finish = 63.7, start2 = 63+64, finish2 = 63.7+64, text = "cause,"},
            {start = 64, finish = 66.7, start2 = 64+64, finish2 = 66.7+64, text = "they did not keep their speed"},
            {start = 67, finish = 67.7, start2 = 67+64, finish2 = 67.7+64, text = "(high)"},
            {start = 68.1, finish = 68.1+2, start2 = 68.1+64, finish2 = 68.1+64+2, text = "But I believe"},
            {start = 68.1+2, finish = 68.1+2.9, start2 = 68.1+64+2, finish2 = 68.1+64+2.9, text = "But I believe in"},
            {start = 68.1+2.9, finish = 68.1+3.7, start2 = 68.1+64+2.9, finish2 = 68.1+64+3.7, text = "But I believe in you"},
            {start = 68.1+4, finish = 68.1+2+4, start2 = 68.1+64+4, finish2 = 68.1+64+2+4, text = "You've got what it"},
            {start = 68.1+2+4, finish = 68.1+2.9+4, start2 = 68.1+64+2+4, finish2 = 68.1+64+2.9+4, text = "You've got what it takes"},
            {start = 68.1+2.9+4, finish = 68.1+3.7+4, start2 = 68.1+64+2.9+4, finish2 = 68.1+64+3.7+4, text = "You've got what it takes to"},
            {start = 68.1+8, finish = 68.1+2+8, start2 = 68.1+64+8, finish2 = 68.1+64+2+8, text = "Go all the way"},
            {start = 68.1+2+8, finish = 68.1+2.9+8, text = "Go all the way and"},
            {start = 68.1+2.9+8, finish = 68.1+3.7+8, text = "Go all the way and to"},
            {start = 68.1+12, finish = 68.1+2+12, text = "Get to the top"},
            {start = 68.1+2+12, finish = 68.1+2.9+12, text = "Get to the top your"},
            {start = 68.1+2.9+12, finish = 68.1+3.7+12, text = "Get to the top your way."},
        },
        --color = {1,1,1},
        --fontSize = 45,
    },
}
-- Harmony for terael
for i = 52, 80, 4 do
    TABLE.insert(d.terael.lyrics, {harmony = true, start = i, finish = i + 1.7, start2 = i + 64, finish2 = i + 64 + 1.7, text = "(cliiiiiiiiimb)"})
    TABLE.insert(d.terael.lyrics, {harmony = true, start = i + 2, finish = i + 2.7, start2 = i + 64 + 2, finish2 = i + 64 + 2.7, text = "(climb)"})
    TABLE.insert(d.terael.lyrics, {harmony = true, start = i + 3, finish = i + 3.7, start2 = i + 64 + 3, finish2 = i + 64 + 3.7, text = "(climb)"})
end
-- Go- ending
for i = 142, 148, 2 do
    TABLE.insert(d.terael.lyrics, {start = i+0.1, finish = i+1.8, text = "Go-"})
end

return d