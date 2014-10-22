package p2.world;

import p2.equations.Equation;
import p2.objects.Body;

@:native("p2.Island")
extern class Island {
    function new();

    function getBodies():Array<Body>;

    function reset():Void;

    function sleep():Void;

    function wantsToSleep():Bool;

    var bodies:Array<Body>;

    var equations:Array<Equation>;
}