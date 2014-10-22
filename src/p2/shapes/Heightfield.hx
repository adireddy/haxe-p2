package p2.shapes;

@:native("p2.Heightfield")
extern class Heightfield extends Shape {
    function new(data:Array<Dynamic>, ?options:Dynamic);

    var data:Array<Dynamic>;

    var elementWidth:Float;

    var maxValue:Float;

    var minValue:Float;
}