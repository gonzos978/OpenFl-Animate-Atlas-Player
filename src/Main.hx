package;

import animateAtlasPlayer.assets.AssetManager;
import com.kircode.debug.FPS_Mem;
import openfl.display.Sprite;
import openfl.Lib;

/**
 * ...
 * @author Mathieu Anthoine
 */
class Main extends Sprite 
{

	public static inline var PUPPET:String = "ninja-girl";
	public static inline var NUM:Int = 1;
	
	public function new() 
	{
		super();
		
		// Assets:
		// openfl.Assets.getBitmapData("img/assetname.jpg");
		
		var fps_mem:FPS_Mem = new FPS_Mem(10, 10, 0xFFFFFF);
		
		var lSprite:Sprite = new Sprite();
		lSprite.graphics.beginFill(0x000000);
		lSprite.graphics.drawRect(0, 0, fps_mem.width, fps_mem.height);
		lSprite.graphics.endFill();
		
		addChild(lSprite);
		addChild(fps_mem);	
		
		var demo:Demo = new Demo();
		addChildAt(demo,0);
        var assets:AssetManager = new AssetManager();
		
		//assets.enqueue("assets/ninja-girl");		
		//assets.enqueue("assets/FX_Boule_electricite");		
		assets.enqueue("assets/"+PUPPET);		
		
		assets.loadQueue(demo.start);
	}

}
