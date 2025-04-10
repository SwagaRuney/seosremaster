local doDialogue = true

function onCreatePost()
    if isStoryMode then
    makeLuaSprite('end', 'garIntroText', 0,0)
    setObjectCamera('end', 'HUD')
    scaleObject('end', 1, 1, true)
    screenCenter('end', 'xy')
    addLuaSprite('end', true)
    setProperty('end.alpha',1)
    runTimer('the', 5, 1)
    runTimer('imagegone', 2.5, 1)
    end
end
function onStartCountdown()
    if doDialogue and isStoryMode then

        return Function_Stop

    end
end
function onTimerCompleted(tag, loops, loopsLeft)
      if tag == 'the' and loopsLeft == 0 then 
        doDialogue = false
        startDialogue('dialogue','city_ambience')
    end
      if tag == 'imagegone' and loopsLeft == 0 then
        doTweenAlpha('ending', 'end', 0, 1.5 / playbackRate, 'sineIn')
        doTweenZoom('thebestzoom', 'camGame', 1.2, 5, 'circOut')
    end
end
