package p2.constraints;

import p2.objects.Body;

@:native("p2.Constraint")
extern class Constraint {
    function new(bodyA:Body, bodyB:Body, type:Int, ?options:Dynamic);

    function setRelaxation(relaxation:Float):Void;

    function setStiffness(stiffness:Float):Void;

    function update():Void;

    var bodyA:Body;

    var bodyB:Body;

    var collideConnected:Bool;

    var equations:Array<Dynamic>;
}