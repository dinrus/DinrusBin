/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = gtkglext-gtkglversion.html
 * outPack = glgtk
 * outFile = GLtVersion
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = GLtVersion
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_gl_version_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtkD.glgtk.GLtVersion;

public  import gtkD.gtkglc.glgtktypes;

private import gtkD.gtkglc.glgtk;
private import gtkD.glib.ConstructionException;






/**
 * Description
 */
public class GLtVersion
{
	
	/**
	 */
}

version (build) {
    debug {
        version (GNU) {
            pragma(link, "DG-glgtk");
        } else version (DigitalMars) {
            pragma(link, "DD-glgtk");
        } else {
            pragma(link, "DO-glgtk");
        }
    } else {
        version (GNU) {
            pragma(link, "DG-glgtk");
        } else version (DigitalMars) {
            pragma(link, "DD-glgtk");
        } else {
            pragma(link, "DO-glgtk");
        }
    }
}
