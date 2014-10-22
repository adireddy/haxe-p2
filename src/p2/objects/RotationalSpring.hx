package p2.objects;

@:native("p2.RotationalSpring")
extern class RotationalSpring extends Spring {
    function new(bodyA:Body, bodyB:Body, ?options:Dynamic);

    var restAngle:Float;
}