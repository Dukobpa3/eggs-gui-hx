package gd.eggs.gui.style;
import gd.eggs.gui.core.Component;
import gd.eggs.gui.style.IStylable;
import gd.eggs.gui.style.StyleDefinitions;
import gd.eggs.utils.Validate;

/**
 * ...
 * @author Dukobpa3
 */
class StyleManager
{
	//=========================================================================
	//	STATIC, INLINE PARAMETERS
	//=========================================================================
	private static inline var DEFAULT_STYLES:StyleReference = {
		position: { // position for current element in his own parent
			wmin:	'0dp',
			hmin:	'0dp',
			wmax:	'100pt',
			hmax:	'100pt',
			w:		'100pt',
			h:		'100pt',
			
			margin:	'0dp',
			padding:'0dp',
			top:	'0dp',
			left:	'0dp',
			right:	null,
			bottom:	null
		},
		back: {
			color:			0x000000,
			cornerRadius:	'0dp',
			alpha:			1.0,
			image:			'',
			repeat:			false
		},
		border: {
			width:	'0dp',
			style:	'solid',
			color:	0x000000
		},
		
		
		content: {
			halign:	'left'
			valign:	'top'
		},
		
		text: {
			autosize: 'left'
		},
		font: {
			name:	'_sans',
			size:	10.0,
			color:	0x000000,
			bold:	false,
			italic:	false
		}
	}
	//=========================================================================
	//	PARAMETERS
	//=========================================================================
	/**
	 * 	{ 
	 * 		<themeName1> => {
	 * 			<selectorName1> => StyleReference,
	 * 			<selectorName2> => StyleReference,
	 * 			<selectorName3> => StyleReference,
	 * 		},
	 * 		<themeName2> => {
	 * 			<selectorName1> => StyleReference,
	 * 			<selectorName2> => StyleReference,
	 * 			<selectorName3> => StyleReference,
	 * 		}
	 * 	}
	 */
	private static var _styleSheets(default, null):Map < String, Map < String, StyleReference >> ;
	private static var _theme(default, null):String = 'default';
	//=========================================================================
	//	CONSTRUCTOR, INIT
	//=========================================================================
	private  function new()
	//=========================================================================
	//	PUBLIC
	//=========================================================================
	public static function addStyleSheet(selector:String, styles:StyleReference, ?theme:String = 'default')
	{
		if (Validate.isNull(_styleSheets)) {
			_styleSheets = new Map();
		}
		if (Validate.isNull(_styleSheets.get(theme))) {
			_styleSheets.set(theme, new Map());
		}
		
		_styleSheets.get(theme).set(selector, styles);
	}
	
	public static function updateStyleReference(component:IStylable):StyleReference
	{
		var reference:StyleReference = DEFAULT_STYLES;
		
		// get type
		if (_styleSheets.get(_theme).exists(component.styleType)) {
			mergeReferences(reference, _styleSheets.get(_theme).get(type));
		}
		
		// get class
		if (_styleSheets.get(_theme).exists(component.styleClass)) {
			mergeReferences(reference, _styleSheets.get(_theme).get(component.styleClass));
		}
		
		// get id
		if (_styleSheets.get(_theme).exists(component.styleClass)) {
			mergeReferences(reference, _styleSheets.get(_theme).get(component.styleId));
		}
		
		component.style = reference;
	}
	
	static public function draw(component:IStylable) 
	{
		
	}
	//=========================================================================
	//	PRIVATE
	//=========================================================================
	private static function mergeReferences(base:StyleReference, from:StyleReference)
	{
		for (var key:String in from) {
			for (var key2:String in from[key])
			{
				base[key][key2] = from[key][key2];
			}
		}
	}
	//=========================================================================
	//	HANDLERS
	//=========================================================================
	
	//=========================================================================
	//	ACCESSORS
	//=========================================================================
}