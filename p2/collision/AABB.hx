package p2.collision;

@:native("p2.AABB")
extern class AABB {
    function new(?options:Dynamic);

    function copy(aabb:AABB):Void;

    function extend(aabb:AABB):Void;

    function overlaps(aabb:AABB):Void;

    function setFromPoints(points:Array<Dynamic>):Void;

    var lowerBound:Array<Dynamic>;

    var upperBound:Array<Dynamic>;
}
