function onCreatePost()
    addLuaScript('moduleforOOBcam')
end
local loopmove = false

function onEvent(eventName, value1, value2, strumTime)
    if eventName == 'bopping' then
        if value1 == 'true' then
            loopmove = true
        elseif value1 == 'false' then
            loopmove = false
        end
    end
end

function onBeatHit()
    if loopmove then
        if curBeat % 2 == 0 then
            cancelTween("thegame2")
            doTweenAngle("thegame1", "camGame", 2, 0.5, "quintOut")
        else
            cancelTween("thegame1")
            doTweenAngle("thegame2", "camGame", -2, 0.5, "quintOut")
        end
    end
end

function onUpdate()
    if not loopmove then
        doTweenAngle("thegame2", "camGame", 0, 0.5, "quintOut")
    end
end