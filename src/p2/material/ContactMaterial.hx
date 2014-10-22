package p2.material;

@:native("p2.ContactMaterial")
extern class ContactMaterial {
    function new(materialA:Material,  materialB:Material, options:Dynamic);

    var contactSkinSize:Float;

    var friction:Float;

    var frictionRelaxation:Float;

    var frictionStiffness:Float;

    var id:Int;

    var materialA:Material;

    var materialB:Material;

    var relaxation:Float;

    var restitution:Float;

    var stiffness:Float;

    var surfaceVelocity:Float;
}