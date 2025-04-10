function onEvent(event, value1, value2, strumTime)
    if event == 'flash' then
        cameraFlash("other", value1, value2, true)
        if value1 and value2 == '' then
            cameraFlash("other", 'FFFFFF', 1.0, true)
        end
    end
end