/******************************************************************************* 

	AllFile Generated by AllDGenerator

	Authors:		ArcLib team, see AUTHORS file
	Maintainer:		Clay Smith (clayasaurus at gmail dot com)
	License:		zlib/libpng license: $(LICENSE) 
	Copyright:		ArcLib team 

	Description:    
		AllFile Module imports all files below subdirectory

*******************************************************************************/

module arc.scenegraph.all;

public import
	arc.scenegraph.advancable,
	arc.scenegraph.animation,
	arc.scenegraph.drawable,
	arc.scenegraph.frame,
	arc.scenegraph.mousenotify,
	arc.scenegraph.node,
	arc.scenegraph.root,
	arc.scenegraph.sprite,
	arc.scenegraph.text,
	arc.scenegraph.transform;

version (build) {
    debug {
        pragma(link, "arc");
    } else {
        pragma(link, "arc");
    }
}