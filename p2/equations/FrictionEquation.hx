package p2.equations;

import p2.shapes.Shape;
import p2.objects.Body;

@:native("p2.FrictionEquation")
extern class FrictionEquation extends Equation {
    function new(bodyA:Body, bodyB:Body, slipForce:Float);

    function getSlipForce():Float;

    function setSlipForce(slipForce:Float):Void;

    var contactEquations:ContactEquation;

    var contactPointA:Array<Dynamic>;

    var contactPointB:Array<Dynamic>;

    var frictionCoefficient:Float;

    var shapeA:Shape;

    var shapeB:Shape;

    var t:Array<Dynamic>;
}