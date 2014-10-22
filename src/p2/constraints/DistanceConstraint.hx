package p2.constraints;

import p2.objects.Body;

@:native("p2.DistanceConstraint")
extern class DistanceConstraint extends Constraint {
    function new(bodyA:Body, bodyB:Body, ?options:Dynamic);

    function getMaxForce():Float;

    function setMaxForce(f:Float):Void;

    var distance:Float;

    var localAnchorA:Array<Dynamic>;

    var localAnchorB:Array<Dynamic>;

    var lowerLimit:Float;

    var lowerLimitEnabled:Bool;

    var maxForce:Float;

    var position:Float;

    var upperLimit:Float;

    var upperLimitEnabled:Bool;
}