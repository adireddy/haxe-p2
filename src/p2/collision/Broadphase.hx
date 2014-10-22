package p2.collision;

import p2.world.World;
import p2.objects.Body;

@:native("p2.Broadphase")
extern class Broadphase {
    function new();

    function boundingRadiusCheck(bodyA:Body, bodyB:Body):Bool;

    function canCollide(bodyA:Body, bodyB:Body):Bool;

    function getCollisionPairs(world:World):Array<Dynamic>;

    function setWorld(world:World):Void;

    static var AABB:Int;

    static var BOUNDING_CIRCLE:Int;

    var boundingVolumeType:Int;

    var result:Array<Dynamic>;

    var world:World;
}
