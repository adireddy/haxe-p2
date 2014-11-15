package p2.world;

import p2.equations.Equation;
import p2.objects.Body;
import p2.solver.Solver;

@:native("p2.IslandManager")
extern class IslandManager extends Solver {
    function new();

    function bfs(root:IslandNode, bds:Array<Body>, eqs:Array<Equation>):Void;

    function split(world:World):Array<Island>;

    function visit(root:IslandNode, bds:Array<Body>, eqs:Array<Equation>):Void;

    static function getUnvisitedNode(nodes:Array<IslandNode>):Dynamic;

    var islands:Array<Island>;

    var nodes:Array<IslandNode>;
}