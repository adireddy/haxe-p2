package p2.equations;

import p2.objects.Body;

@:native("p2.Equation")
extern class Equation {
    function new(bodyA:Body, bodyB:Body, minForce:Int, maxForce:Int);

    function addToWlambda(deltalambda:Float):Void;

    function computeB():Float;

    function computeGiMf():Float;

    function computeGiMGt():Float;

    function computeGq():Float;

    function computeGW():Float;

    function computeGWlambda():Float;

    function computeInvC(eps:Float):Float;

    function gmult():Float;

    function update():Void;

    var bodyA:Body;

    var bodyB:Body;

    var enabled:Bool;

    var G:Array<Dynamic>;

    var maxForce:Float;

    var minForce:Float;

    var multiplier:Float;

    var needsUpdate:Bool;

    var relativeVelocity:Float;

    var relaxation:Float;

    var stiffness:Float;

    static var DEFAULT_RELAXATION:Float;

    static var DEFAULT_STIFFNESS:Float;
}