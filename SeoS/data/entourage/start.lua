local doDialogue = true
function onStartCountdown()
    if doDialogue and isStoryMode then

        doDialogue = false;
        startDialogue('dialogue','birds')
        return Function_Stop
    end
end
