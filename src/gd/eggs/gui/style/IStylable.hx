package gd.eggs.gui.style;

import gd.eggs.gui.style.StyleDefinitions;
import flash.display.Sprite;
import flash.text.TextField;

/**
 * @author Dukobpa3
 */
interface IStylable 
{
	//=========================================================================
	//	PROPERTIES
	//=========================================================================
	public var styleId(default, null):String;
	public var styleClass(default, null):String;
	public var styleType(default, null):String;
	
	public var style(default, default):StyleReference;
	
	public var back(default, null):Sprite;
	public var text(default, null):TextField;
	//=========================================================================
	//	METHODS
	//=========================================================================
	public function updateStyle():Void;
	
}