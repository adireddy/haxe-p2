package p2.world;

import p2.equations.Equation;
import p2.objects.Body;

@:native("p2.IslandNode")
extern class IslandNode {
    function new(body:Body);

    function reset():Void;

    var body:Body;

    var equations:Array<Equation>;

    var neighbors:Array<IslandNode>;

    var visited:Bool;
}