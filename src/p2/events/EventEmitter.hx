package p2.events;

@:native("p2.EventEmitter")
extern class EventEmitter {
    function new();

    function emit(event:Dynamic):EventEmitter;

    function has(type:String, listener:Dynamic):Bool;

    function off(type:String, listener:Dynamic):EventEmitter;

    function on(type:String, listener:Dynamic):EventEmitter;
}
