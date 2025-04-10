local doDialogue = true
function onStartCountdown()
    if doDialogue and isStoryMode then

        doDialogue = false;
        startDialogue('dialogue','city_ambience')
        return Function_Stop
    end
end
