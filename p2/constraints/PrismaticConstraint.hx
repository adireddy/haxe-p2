package p2.constraints;

import p2.equations.Equation;
import p2.objects.Body;

@:native("p2.PrismaticConstraint")
extern class PrismaticConstraint extends Constraint {
    function new(bodyA:Body, bodyB:Body, ?options:Dynamic);

    function disableMotor():Void;

    function enableMotor():Void;

    function setLimits(lower:Float, upper:Float):Void;

    var localAnchorA:Array<Dynamic>;

    var localAnchorB:Array<Dynamic>;

    var localAxisA:Array<Dynamic>;

    var lowerLimit:Float;

    var lowerLimitEnabled:Bool;

    var motorEnabled:Bool;

    var motorEquation:Equation;

    var motorSpeed:Float;

    var position:Float;

    var upperLimit:Float;

    var upperLimitEnabled:Bool;
}