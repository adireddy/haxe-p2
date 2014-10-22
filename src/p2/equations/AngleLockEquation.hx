package p2.equations;

import p2.objects.Body;

@:native("p2.AngleLockEquation")
extern class AngleLockEquation extends Equation {
    function new(bodyA:Body, bodyB:Body, ?options:Dynamic);

    function setMaxTorque(torque:Float):Void;

    function setRatio(ratio:Float):Void;
}