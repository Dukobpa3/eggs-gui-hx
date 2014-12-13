package gd.eggs.gui.core;

import flash.display.Sprite;
import flash.text.TextField;
import gd.eggs.gui.style.StyleDefinitions;
import gd.eggs.gui.style.StyleManager;
import gd.eggs.utils.IAbstractClass;
import gd.eggs.utils.IInitialize;

/**
 * ...
 * @author Dukobpa3
 */
class Component extends EggsUiSprite implements IComponent implements IInitialize implements IAbstractClass
{
	//=========================================================================
	//	STATIC, INLINE PARAMETERS
	//=========================================================================
	
	//=========================================================================
	//	PARAMETERS
	//=========================================================================
	public var isInited(default, null):Bool;
	
	public var styleId(default, null):String;
	public var styleClass(default, null):String;
	public var styleType(default, null):String;
	
	public var style(default, default):StyleReference;
	
	public var back(default, null):Sprite;
	public var text(default, null):TextField;
	//=========================================================================
	//	CONSTRUCTOR, INIT
	//=========================================================================
	public function new() super();
	
	//=========================================================================
	//	PUBLIC
	//=========================================================================
	public function draw():Void 
	{
		StyleManager.draw(this);
	}
	
	public function init():Void {}
	public function destroy():Void {}
	
	public function updateStyle():Void {}
	
	//=========================================================================
	//	PRIVATE
	//=========================================================================
	
	//=========================================================================
	//	HANDLERS
	//=========================================================================
	
	//=========================================================================
	//	ACCESSORS
	//=========================================================================
}