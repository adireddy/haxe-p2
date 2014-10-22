package p2.shapes;

@:native("p2.Rectangle")
extern class Rectangle extends Shape {

    function new(width:Float, height:Float);

    var width:Float;

    var height:Float;
}