function onCreate()
    makeLuaSprite('stagefront', 'garStageAlt', -800,-240)
    makeLuaSprite('stageback', 'garStagebgAlt', -800,-240)
    addLuaSprite('stageback', false)
    addLuaSprite('stagefront', false)
    setScrollFactor('stageback', 1.0, 1.0)
    createInstance("animatedBG", "flixel.addons.display.FlxBackdrop", {
        nil,
        runHaxeCode("import flixel.util.FlxAxes; return FlxAxes.X;"),
        -35.5, 0
    });
    createInstance("animatedBG2", "flixel.addons.display.FlxBackdrop", {
        nil,
        runHaxeCode("import flixel.util.FlxAxes; return FlxAxes.X;"),
        -35.5, 0
    });
    runHaxeCode([[
        var obj = getLuaObject('animatedBG');
        obj.frames = Paths.getSparrowAtlas('garSmoke');
        obj.animation.addByPrefix('animationTag', 'smokey instance ', 24, true); //add animation name here
        obj.animation.play('animationTag');
        obj.scale.set(2, 2);
        FlxTween.tween(obj, {alpha: .3}, 10, {ease: FlxEase.sineInOut, type: 4});
        obj.x = -275;
	    obj.y = -200;
        obj.scrollFactor.set(1.3, 1.1);
        FlxTween.tween(dadGroup, {alpha: .7}, 3, {ease: FlxEase.sineInOut, type: 4});
    
        var obj2 = getLuaObject('animatedBG2');
        obj2.frames = Paths.getSparrowAtlas('garSmoke');
        obj2.animation.addByPrefix('animationTag2', 'smokey instance ', 12, true); //add animation name here
        obj2.animation.play('animationTag2');
        obj2.scale.set(1.5, 1);
        FlxTween.tween(obj2, {alpha: .3}, 10, {ease: FlxEase.sineInOut, type: 4});
        obj2.x = -275;
	    obj2.y = -150;
        obj2.scrollFactor.set(1.0, 1.0);

    ]]);
    setProperty("animatedBG.antialiasing", getPropertyFromClass("ClientPrefs", "globalAntialiasing"));
    addInstance("animatedBG", true);
    addInstance("animatedBG2", true);
    makeLuaSprite('gardead', 'gardead', -600,500)
    addLuaSprite('gardead', false)
    setObjectOrder('animatedBG2', getObjectOrder('stageback')+1)
end
function onCountdownStarted()
    runHaxeCode([[
FlxTween.tween(game.iconP2, {alpha: .7}, 3, {ease: FlxEase.sineInOut, type: 4});
FlxTween.tween(obj2, {x: -250}, 3, {ease: FlxEase.sineInOut, type: 4});
    ]]);
end