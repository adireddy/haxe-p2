[![No Maintenance Intended](http://unmaintained.tech/badge.svg)](http://unmaintained.tech/)

### Note ###
After evaluating a few other physics libraries, I am now in favour of [Nape](http://napephys.com) and it works well with pixi.js. [Click here](http://adireddy.github.io/demos/pixi-haxe/nape.html) for a quick demo and [source code](https://github.com/pixijs/pixi-haxe/blob/dev/samples/nape/Main.hx).

I will not be actively maintaining these externs anymore, so if anyone is interested please [let me know](mailto:adiinteractive@gmail.com) and I will add them as collaborators.

haxe-p2
=======

![haxe p2 logo](https://raw.githubusercontent.com/adireddy/haxe-p2/master/logo.png)

Externs of p2.js for Haxe - A Javascript 2D physics library.

### Installation ###

```haxe
haxelib install p2js
```
Please note that this is an alpha release and the development/testing is still in progress.

### Usage ###

```haxe

import pixi.display.Stage;
import pixi.primitives.Graphics;
import pixi.display.DisplayObjectContainer;

import p2.shapes.Circle;
import p2.shapes.Plane;
import p2.objects.Body;
import p2.shapes.Rectangle;
import p2.world.World;

class Main {

	var _renderer:Dynamic;
    var _stage:Stage;

    var _p2World:World;
    var _p2container:DisplayObjectContainer;
    var _p2graphics:Graphics;
    var _boxBody:Body;

    var _p2Circle:Graphics;
    var _circleShape:Circle;
    var _p2Sensor:Graphics;
    var _sensorShape:Circle;
    var _circleBody:Body;
    var _sensorBody:Body;

    public function new() {
        _stage = new Stage(0x00FF00);
		_renderer = Detector.autoDetectRenderer(800, 600);
		Browser.document.body.appendChild(_renderer.view);
        		
		_p2World = new World({ gravity:[0, 0] });
        
        var boxShape:Rectangle = new Rectangle(2, 1);
        _boxBody = new Body({
            mass: 1,
            position:[0, 2],
            angularVelocity: 1
        });

        _boxBody.addShape(boxShape);
        _p2World.addBody(_boxBody);

        var planeShape:Plane = new Plane();
        var planeBody:Body = new Body({ position:[0, -1] });
        planeBody.addShape(planeShape);
        _p2World.addBody(planeBody);

        var zoom:Int = 100;

        _p2container = new DisplayObjectContainer();
        gameStage.addChild(_p2container);

        _p2container.position.x = StageProperties.screenWidth / 2;
        _p2container.position.y = StageProperties.screenHeight / 2;
        _p2container.scale.x =  zoom;
        _p2container.scale.y = -zoom;

        _p2graphics = new Graphics();
        _p2graphics.beginFill(0xff0000);
        _p2graphics.drawRect(-boxShape.width / 2, -boxShape.height / 2, boxShape.width, boxShape.height);
        _p2container.addChild(_p2graphics);

        _circleShape = new Circle(1);
        _circleBody = new Body({ mass: 1 });
        _circleBody.damping = 0;
        _circleBody.addShape(_circleShape);
        _p2World.addBody(_circleBody);

        _p2Circle = new Graphics();
        _p2Circle.beginFill(0x003366);
        _p2Circle.drawCircle(0, 0, _circleShape.radius);
        _p2container.addChild(_p2Circle);
        
        Browser.window.requestAnimationFrame(cast animate);
    }
    
    function animate() {
		Browser.window.requestAnimationFrame(cast animate);
		_p2World.step(1/60);
		_p2graphics.position.x = _boxBody.position[0];
		_p2graphics.position.y = _boxBody.position[1];
		_p2graphics.rotation = _boxBody.angle;
		_renderer.render(_stage);
    }
}
```

This content is released under the [MIT](http://opensource.org/licenses/MIT) License.

p2.js is maintained by [schteppe](https://github.com/schteppe).
