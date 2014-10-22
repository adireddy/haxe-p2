package p2.collision;

import p2.world.World;
import p2.objects.Body;

@:native("p2.SAPBroadphase")
extern class SAPBroadphase extends Broadphase {
    function new();

    function sortAxisList(a:Array<Dynamic>, axisIndex:Int):Array<Dynamic>;

    var axisIndex:Int;

    var axisList:Array<Dynamic>;
}
