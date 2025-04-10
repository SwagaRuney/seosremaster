function charColor(char)
    local cols = getProperty(char.. '.healthColorArray');
    return string.format('%2X%2X%2X', cols[1], cols[1], cols[3]);
end

function onEvent(eventName, v1, v2)
    if eventName == 'credits' then 
        makeLuaText("titlecardtext", ""..songName.." \nBy: "..v1, 0, -950, 0)
        setTextFont("titlecardtext", v2)
        setTextAlignment("titlecardtext", 'center')
        screenCenter("titlecardtext", "y")
        addLuaText("titlecardtext")
        setTextSize("titlecardtext", 100)
        setTextColor("titlecardtext", charColor('dad'));
        setTextBorder("titlecardtext", 3, 000000)
        setObjectCamera("titlecardtext", 'Other')
        doTweenX("titlecardtext", "titlecardtext", screenWidth / 16, 2.0 * playbackRate, "sineInOut")
        runTimer('time', 5, 1)
        if v2 == '' then
            setTextFont("titlecardtext", 'vcr.ttf')
        end

    end
end
--(screenWidth/2) - text.width
function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'time' and loopsLeft == 0 then 
        doTweenX("titlecardtext", "titlecardtext", 1400, 2.0, "sineInOut")
    end
end