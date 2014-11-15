package p2.world;

import p2.objects.Body;

@:native("p2.World")
extern class World {
    function new(?options:Dynamic);

    function addBody(body:Body):Void;

    function step(dt:Float, ?timeSinceLastCalled:Float=0, ?maxSubSteps:Int = 10):Void;
}