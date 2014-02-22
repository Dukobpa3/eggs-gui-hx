package gd.eggs.gui.core;

/**
 * @author Dukobpa3
 */
interface IContainer extends IComponent
{
	//=========================================================================
	//	PROPERTIES
	//=========================================================================
	public var layout(default, null):ILayout;
	public var childs(default, null):IComponent;
	//=========================================================================
	//	METHODS
	//=========================================================================
}