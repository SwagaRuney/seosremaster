local songnames = {"fading", "clip", "release"}

function onCreate()
    makeLuaSprite('stagefront', 'garStage', -800,-240)
    makeLuaSprite('stageback', 'garStagebg', -800,-240)
    addLuaSprite('stageback', false)
    addLuaSprite('stagefront', false)
    setScrollFactor('stageback', 1.0, 1.0)
if songName == songnames then 
    createInstance("animatedBG", "flixel.addons.display.FlxBackdrop", {
        nil,
        runHaxeCode("import flixel.util.FlxAxes; return FlxAxes.X;"),
        0, 0
    });
    runHaxeCode([[
        var obj = getLuaObject('animatedBG');
        obj.frames = Paths.getSparrowAtlas('gfDanceTitle');
        obj.animation.addByPrefix('animationTag', 'gfDance', 24, true); //add animation name here
        obj.animation.play('animationTag');
    ]]);
    setProperty("animatedBG.antialiasing", getPropertyFromClass("ClientPrefs", "globalAntialiasing"));
    addInstance("animatedBG", true);
    end
end
function onStepHit()
    if curStep == 1 and songName == 'Nerves' then
        doTweenZoom('thetweenpeak', 'camGame', 1.2, 4.2, 'sineIn')
        doTweenZoom('thetweenpeak2', 'camHUD', 1.2, 4.2, 'sineIn')
        doTweenAlpha('thetweenpeakalpha', 'camHUD', 0, 4.2, 'sineIn')
    end
    if curStep == 32 and songName == 'Nerves' then
        doTweenAlpha('thetweenpeakalphaback', 'camHUD', 1, 4.2, 'sineOut')
    end
end