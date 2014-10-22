package p2.shapes;

import p2.material.Material;
import p2.collision.AABB;

@:native("p2.Shape")
extern class Shape {
    function new(type:Int);

    function computeAABB(out:AABB, position:Array<Dynamic>, angle:Float):Void;

    function computeMomentOfInertia(mass:Float):Float;

    function updateArea():Void;

    function updateBoundingRadius():Float;

    var area:Float;

    var boundingRadius:Float;

    static var CAPSULE:Int;

    static var CIRCLE:Int;

    static var CONVEX:Int;

    static var HEIGHTFIELD:Int;

    static var LINE:Int;

    static var PARTICLE:Int;

    static var PLANE:Int;

    static var RECTANGLE:Int;

    var collisionMask:Int;

    var id:Int;

    var type:Int;

    var sensor:Bool;

    var material:Material;
}