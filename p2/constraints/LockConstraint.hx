package p2.constraints;

import p2.objects.Body;

@:native("p2.LockConstraint")
extern class LockConstraint extends Constraint {
    function new(bodyA:Body, bodyB:Body, ?options:Dynamic);

    function getMaxForce():Float;

    function setMaxForce(f:Float):Void;

    var localAngleB:Float;

    var localOffsetB:Array<Dynamic>;
}