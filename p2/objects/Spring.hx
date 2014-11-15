package p2.objects;

@:native("p2.World")
extern class Spring {
    function new(bodyA:Body, bodyB:Body, ?options:Dynamic);

    function applyForce():Void;

    var bodyA:Body;

    var bodyB:Body;

    var damping:Float;

    var stiffness:Float;
}