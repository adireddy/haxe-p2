package p2.constraints;

import p2.objects.Body;

@:native("p2.GearConstraint")
extern class GearConstraint extends Constraint {
    function new(bodyA:Body, bodyB:Body, ?options:Dynamic);

    function getMaxTorque():Float;

    function setMaxTorque(f:Float):Void;

    var angle:Float;

    var ratio:Float;
}