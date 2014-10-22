package p2.solver;

@:native("p2.GSSolver")
extern class GSSolver extends Solver {
    function new(?options:Dynamic);

    var frictionIterations:Int;

    var iterations:Int;

    var tolerance:Float;

    var usedIterations:Int;

    var useZeroRHS:Bool;
}
