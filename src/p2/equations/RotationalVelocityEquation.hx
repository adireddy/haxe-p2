package p2.equations;

import p2.objects.Body;

@:native("p2.RotationalVelocityEquation")
extern class RotationalVelocityEquation extends Equation {
    function new(bodyA:Body, bodyB:Body);
}