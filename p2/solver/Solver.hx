package p2.solver;

import p2.world.Island;
import p2.equations.Equation;

@:native("p2.Solver")
extern class Solver {
    function new();

    function addEquation(eq:Equation):Void;

    function addEquations(eqs:Array<Equation>):Void;

    function removeAllEquations():Void;

    function removeEquation(eq:Equation):Void;

    function solve(dt:Float, island:Island):Void;

    function sortEquations():Void;
}