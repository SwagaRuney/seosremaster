function onEvent(eventName, value1, value2, strumTime)
if eventName == 'blackscreen' then
    if value1 == '1' then
        setProperty('camGame.alpha', 0)
    end
    if value1 == '0' then
        setProperty('camGame.alpha', 1)
    end
    if value2 == '1' then
        setProperty('camHUD.alpha', 0)
    end
    if value2 == '0' then
        setProperty('camHUD.alpha', 1)
        end
    end
end