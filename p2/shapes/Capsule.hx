package p2.shapes;

@:native("p2.Capsule")
extern class Capsule extends Shape {

    function new(?length:Int, ?radius:Float);

    function conputeMomentOfInertia(mass:Float):Float;

    var length:Int;

    var radius:Float;
}