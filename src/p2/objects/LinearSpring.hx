package p2.objects;

@:native("p2.LinearSpring")
extern class LinearSpring extends Spring {
    function new(bodyA:Body, bodyB:Body, ?options:Dynamic);

    function getWorldAnchorA(result:Array<Dynamic>):Void;

    function getWorldAnchorB(result:Array<Dynamic>):Void;

    function setWorldAnchorA(worldAnchorA:Array<Dynamic>):Void;

    function setWorldAnchorB(worldAnchorB:Array<Dynamic>):Void;

    var localAnchorA:Array<Dynamic>;

    var localAnchorB:Array<Dynamic>;

    var restLength:Int;
}