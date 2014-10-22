package p2.shapes;

@:native("p2.Line")
extern class Line extends Shape {
    function new(length:Float);

    var length:Float;
}