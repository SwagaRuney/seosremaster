function onEvent(event, value1, value2, strumTime)
    if event == 'Play Animation' then
        doTweenAngle('tweenicon', 'iconP2', 15, 0.3, 'circOut')
        setProperty('health', getProperty('health')+0.05)
        runHaxeCode([[game.iconP2.changeIcon('icon-garcellocough')]])
        startTween('scaleTweenyaur', 'iconP2.scale', {x = 1.2, y = 1.2}, 0.2, 'circOut')
        runTimer('the', 0.5, 1)
    end
end
    function onTimerCompleted(tag, loops, loopsLeft)
        if tag == 'the' and loops == 1 then
            runHaxeCode([[game.iconP2.changeIcon('icon-garcellotired')]])
            doTweenAngle('tweenicon', 'iconP2', 0, 0.5, 'quadOut')
            startTween('scaleTweennaur', 'iconP2.scale', {x = 1, y = 1}, 0.1, 'circIn')
    end
end