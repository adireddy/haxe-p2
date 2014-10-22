package p2.equations;

import p2.objects.Body;

@:native("p2.RotationalLockEquation")
extern class RotationalLockEquation extends Equation {
    function new(bodyA:Body, bodyB:Body, ?options:Dynamic);

    var angle:Float;
}