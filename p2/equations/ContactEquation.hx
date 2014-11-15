package p2.equations;

import p2.shapes.Shape;
import p2.objects.Body;

@:native("p2.ContactEquation")
extern class ContactEquation extends Equation {
    function new(bodyA:Body, bodyB:Body);

    var contactPointA:Array<Dynamic>;

    var contactPointA:Array<Dynamic>;

    var firstImpact:Bool;

    var normalA:Array<Dynamic>;

    var restitution:Float;

    var shapeA:Shape;

    var shapeB:Shape;
}