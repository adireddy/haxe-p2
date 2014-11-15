package p2.shapes;

@:native("p2.Circle")
extern class Circle extends Shape {

    function new(?radius:Float = 1);

    var radius:Float;

}