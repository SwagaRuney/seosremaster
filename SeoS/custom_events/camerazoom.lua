function onEvent(e, x, y, strumTime)
    if e == 'camerazoom' then
        cancelTween("1")
        doTweenZoom("1", "camGame", x, y, "sineOut")
        setProperty('defaultCamZoom', x)
    elseif e == 'camerazoom' and y == '' then 
        cancelTween("1")
        doTweenZoom("1", "camGame", x, 1.0, "sineOut")
        setProperty('defaultCamZoom', x)
    end
end