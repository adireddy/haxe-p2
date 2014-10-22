package p2.collision;

import p2.shapes.Rectangle;
import p2.equations.FrictionEquation;
import p2.equations.ContactEquation;
import p2.shapes.Plane;
import p2.shapes.Particle;
import p2.shapes.Heightfield;
import p2.shapes.Convex;
import p2.shapes.Line;
import p2.shapes.Circle;
import p2.shapes.Capsule;
import p2.objects.Body;

@:native("p2.Narrowphase")
extern class Narrowphase {
    function new();

    function capsuleCapsule(bi:Body, si:Capsule, xi:Array<Dynamic>, ai:Float, bj:Body, sj:Capsule, xj:Array<Dynamic>, aj:Float):Void;

    function circleCapsule(bi:Body, si:Circle, xi:Array<Dynamic>, ai:Float, bj:Body, sj:Line, xj:Array<Dynamic>, aj:Float):Void;

    function circleCircle(bodyA:Body, shapeA:Circle, offsetA:Array<Dynamic>, angleA:Float, bodyB:Body, shapeB:Circle, offsetB:Array<Dynamic>, angleB:Float, justTest:Bool, ?radiusA:Float, ?radiusB:Float):Void;

    function circleConvex(circleBody:Body, circleShape:Circle, circleOffset:Array<Dynamic>, circleAngle:Float, convexBody:Body, convexShape:Convex, convexOffset:Array<Dynamic>, convexAngle:Float, justTest:Bool, ?circleRadius:Float):Void;

    function circleHeightfield(bi:Body, si:Circle, xi:Array<Dynamic>, bj:Body, sj:Heightfield, xj:Array<Dynamic>, aj:Float):Void;

    function circleLine(circleBody:Body, circleShape:Circle, circleOffset:Array<Dynamic>, circleAngle:Float, lineBody:Body, lineShape:Line, lineOffset:Array<Dynamic>, lineAngle:Float, justTest:Bool, lineRadius:Float, circleRadius:Float):Void;

    function circleParticle(circleBody:Body, circleShape:Circle, circleOffset:Array<Dynamic>, circleAngle:Float, particleBody:Body, particleShape:Particle, particleOffset:Array<Dynamic>, particleAngle:Float, justTest:Bool):Void;

    function circlePlane(bi:Body, si:Circle, xi:Array<Dynamic>, bj:Body, sj:Plane, xj:Array<Dynamic>, aj:Float):Void;

    function collidedLastStep(bodyA:Body, bodyB:Body):Bool;

    function convexCapsule(convexBody:Body, convexShape:Convex, convexPosition:Array<Dynamic>, convexAngle:Float, capsuleBody:Body, capsuleShape:Capsule, capsulePosition:Array<Dynamic>, capsuleAngle:Float):Void;

    function convexConvex(bi:Body, si:Convex, xi:Array<Dynamic>, ai:Float, bj:Body, sj:Convex, xj:Array<Dynamic>, aj:Float):Void;

    function convexLine(convexBody:Body, convexShape:Convex, convexOffset:Array<Dynamic>, convexAngle:Float, lineBody:Body, lineBody:Line, lineOffset:Array<Dynamic>, lineAngle:Float, justTest:Bool):Void;

    function lineCapsule(lineBody:Body, lineShape:Line, linePosition:Array<Dynamic>, lineAngle:Float, capsuleBody:Body, capsuleShape:Capsule, capsulePosition:Array<Dynamic>, capsuleAngle:Float):Void;

    function lineLine(bodyA:Body, shapeA:Line, positionA:Array<Dynamic>, angleA:Float, bodyB:Body, shapeB:Line, positionB:Array<Dynamic>, angleB:Float):Void;

    function lineRectangle(lineBody:Body, lineShape:Line, linePosition:Array<Dynamic>, lineAngle:Float, rectangleBody:Body, rectangleShape:Rectangle, rectangleOffset:Array<Dynamic>, rectangleAngle:Float, justTest:Bool):Void;

    function particleConvex(particleBody:Body, particleShape:Particle, particleOffset:Array<Dynamic>, particleAngle:Float, convexBody:Body, convexShape:Convex, convexOffset:Array<Dynamic>, convexAngle:Float, justTest:Bool):Void;

    function particlePlane(particleBody:Body, particleShape:Particle, particleOffset:Array<Dynamic>, particleAngle:Float, planeBody:Body, planeShape:Plane, planeOffset:Array<Dynamic>, planeAngle:Float, justTest:Bool):Void;

    function planeCapsule(planeBody:Body, planeShape:Plane, planeOffset:Array<Dynamic>, planeAngle:Float, capsuleBody:Body, capsuleShape:Capsule, capsuleOffset:Array<Dynamic>, capsuleAngle:Float, justTest:Bool):Void;

    function planeConvex(planeBody:Body, planeShape:Plane, planeOffset:Array<Dynamic>, planeAngle:Float, convexBody:Body, convexShape:Convex, convexOffset:Array<Dynamic>, convexAngle:Float, justTest:Bool):Void;

    function planeLine(planeBody:Body, planeShape:Plane, planeOffset:Array<Dynamic>, planeAngle:Float, lineBody:Body, lineShape:Line, lineOffset:Array<Dynamic>, lineAngle:Float):Void;

    function createContactEquation(bodyA:Body, bodyB:Body):ContactEquation;

    function createFrictionEquation(bodyA:Body, bodyB:Body):FrictionEquation;

    function createFrictionFromContact(contactEquation:ContactEquation):FrictionEquation;

    static function findSeparatingAxis(c1:Convex, offset1:Array<Dynamic>, angle1:Float, c2:Convex, offset2:Array<Dynamic>, angle2:Float, sepAxis:Array<Dynamic>):Bool;

    static function getClosestEdge(c:Convex, angle:Float, axis:Array<Dynamic>, flip:Bool):Float;

    static function projectConvexOntoAxis(convexShape:Convex, convexOffset:Array<Dynamic>, convexAngle:Float, worldAxis:Array<Dynamic>, result:Array<Dynamic>):Void;

    function reset():Void;

    var collidingBodiesLastStep:Int;

    var contactEquations:Array<Dynamic>;

    var enableFriction:Bool;

    var frictionCoefficient:Int;

    var frictionEquations:Array<Dynamic>;

    var frictionRelaxation:Int;

    var frictionStiffness:Int;

    var restitution:Int;

    var slipForce:Int;

    var stiffness:Int;

    var surfaceVelocity:Int;
}