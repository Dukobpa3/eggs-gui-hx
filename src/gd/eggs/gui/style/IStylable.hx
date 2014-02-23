package gd.eggs.gui.style;

import gd.eggs.gui.style.StyleDefinitions;

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
	
	public var style(default, null):StyleReference;
	//=========================================================================
	//	METHODS
	//=========================================================================
	public function updateStyle():Void;
	
}