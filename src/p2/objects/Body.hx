package p2.objects;

import p2.shapes.Shape;
@:native("p2.Body")
extern class Body {
    function new(?options:Dynamic);

    function addShape(shape:Shape, ?offset:Array<Dynamic>, ?angle:Float):Void;

    var angle:Float;

    var damping:Float;

    var position:Array<Dynamic>;
}