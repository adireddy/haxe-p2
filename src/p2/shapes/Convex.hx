package p2.shapes;

@:native("p2.Convex")
extern class Convex extends Shape {
    function new(vertices:Array<Dynamic>, axes:Array<Dynamic>);

    static function projectOntoAxis(offset:Array<Dynamic>, localAxis:Array<Dynamic>, result:Array<Dynamic>):Void;

    static function triangleArea(a:Array<Dynamic>, b:Array<Dynamic>, c:Array<Dynamic>):Float;

    function updateCenterOfMass():Void;

    function updateTriangles():Void;

    var axes:Array<Dynamic>;

    var centerOfMass:Array<Dynamic>;

    var triangles:Array<Dynamic>;

    var vertices:Array<Dynamic>;
}
