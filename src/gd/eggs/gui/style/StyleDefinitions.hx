package gd.eggs.gui.style;

/**
 * @author Dukobpa3
 * All dimensions are specified in String '<num><suffix>' format
 * By default without suffixe means 'dp'
 * available suffixes: px - pixels, pt - percent, dp - based on dpi
 */ 
typedef PositionStyle = { // position for current element in his own parent
	?wmin:String,
	?hmin:String,
	?wmax:String,
	?hmax:String,
	?w:String,
	?h:String,
	
	?margin:String, // = 0,
	?padding:String, // = 0,
	?top:String, // = 0
	?left:String, // = 0
	?right:String, // = Null
	?bottom:String // = Null
}
typedef BorderStyle = {
	?width:String, // = 0,
	?style:String, // = 'solid',
	?color:UInt // = 0x000000
}
typedef BackStyle = {
	?color: UInt,
	?cornerRadius:String,
	?alpha:Float, // = 1,
	?image:String,
	?repeat:Bool // = false
}


typedef ContentStyle = {
	?align:String // = 'left'
}


typedef TextStyle = {
	?autosize:String// = 'left'
}
typedef FontStyle = {
	?name:String, // = '_sans',
	?size:Float,
	?color:UInt, // = 0x000000,
	?bold:Bool, // = false,
	?italic:Bool // = false
}


typedef StyleReference = {
	?position: PositionStyle,
	?border: BorderStyle,
	?back: BackStyle,
	
	?content: ContentStyle,
	
	?text: TextStyle,
	?font: FontStyle
}