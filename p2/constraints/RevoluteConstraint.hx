package p2.constraints;

import p2.objects.Body;

@:native("p2.DistanceConstraint")
extern class RevoluteConstraint extends Constraint {
    function new(bodyA:Body, bodyB:Body, type:Int, ?options:Dynamic);

    function disableMotor():Void;

    function enableMotor():Void;

    function getMotorSpeed():Float;

    function setMotorSpeed(speed:Float):Void;

    function motorIsEnabled():Bool;

    function setLimits(lower:Float, upper:Float):Void;

    var pivotA:Array<Dynamic>;

    var pivotB:Array<Dynamic>;

    var angle:Float;

    var lowerLimit:Float;

    var lowerLimitEnabled:Bool;

    var motorEnabled:Bool;

    var upperLimit:Float;

    var upperLimitEnabled:Bool;
}