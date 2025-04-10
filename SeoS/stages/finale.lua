function onCreatePost()
    makeLuaSprite('end', 'CanonWeekEnding', 0,0)
    setObjectCamera('end', 'HUD')
    scaleObject('end', 1, 1, true)
    screenCenter('end', 'xy')
    addLuaSprite('end', true)
    setProperty('end.alpha',0)

    doTweenAlpha('hudcam', 'camGame', 0, 0.001, 'sineOut')
    setProperty('skipCountdown', true)
    makeLuaSprite('stagefront', 'garStageRise', -800,-240)
    makeLuaSprite('stageback', 'garStagebgRise', -800,-240)
    addLuaSprite('stageback', false)
    addLuaSprite('stagefront', false)
    makeLuaSprite('gardead', 'gardead', -600,500)
    addLuaSprite('gardead', false)
    startTween('tweenDad', 'dadGroup', {alpha = 0.4}, 3 / playbackRate, {ease = 'bounceOut', type = 'PINGPONG'})
end

function onStepHit()
  if curStep == 244 then
    cancelTween('tweenDad')
    for i = 0, 3 do cancelTween('tweenStrum'..i) end
    doTweenAlpha('dadGroup', 'dadGroup', 0, 3, 'sineIn')
    doTweenAlpha('dadGroup2', 'iconP2', 0, 3, 'sineIn')
    for i = 0, 3 do startTween('tweenStrum'..i, 'opponentStrums.members['..i..']', {alpha = 0}, 3 / playbackRate, {ease = 'bounceOut'}) end
end
    if curStep >= 32 then
        doTweenAlpha('hudcam', 'camGame', 1, 5, 'sineOut')
    end
    if curStep == 1 then
        for i = 0, 3 do startTween('tweenStrum'..i, 'opponentStrums.members['..i..']', {alpha = 0.5}, 3 / playbackRate, {ease = 'bounceOut', type = 'PINGPONG'})
        startTween('iconP2'..i, 'iconP2', {alpha = 0.5}, 3 / playbackRate, {ease = 'bounceOut', type = 'PINGPONG'}) end
    end
end
function onEndSong()
    if not canEnd then
        doTweenAlpha('ending', 'end', 1, 2 / playbackRate, 'sineIn')
        runTimer('theend', 10 / playbackRate)
        return Function_Stop
    end
end

function onTimerCompleted(tag)
    if tag == 'theend' then
        canEnd = true
        endSong()
    end
end