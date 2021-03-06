﻿/***********************************************************************\
*                               ipifcons.d                              *
*                                                                       *
*                       Windows API header module                       *
*                                                                       *
*                 Translated from MinGW Windows headers                 *
*                           by Stewart Gordon                           *
*                                                                       *
*                       Placed into public domain                       *
\***********************************************************************/
module os.win32.ipifcons;

// FIXME: check types of constants

enum {
	MIB_IF_ADMIN_STATUS_UP = 1,
	MIB_IF_ADMIN_STATUS_DOWN,
	MIB_IF_ADMIN_STATUS_TESTING,
}

enum {
	MIB_IF_OPER_STATUS_NON_OPERATIONAL,
	MIB_IF_OPER_STATUS_UNREACHABLE,
	MIB_IF_OPER_STATUS_DISCONNECTED,
	MIB_IF_OPER_STATUS_CONNECTING,
	MIB_IF_OPER_STATUS_CONNECTED,
	MIB_IF_OPER_STATUS_OPERATIONAL // = 5
}

enum {
	MIB_IF_TYPE_OTHER     =  1,
	MIB_IF_TYPE_ETHERNET  =  6,
	MIB_IF_TYPE_TOKENRING =  9,
	MIB_IF_TYPE_FDDI      = 15,
	MIB_IF_TYPE_PPP       = 23,
	MIB_IF_TYPE_LOOPBACK  = 24,
	MIB_IF_TYPE_SLIP      = 28
}

version (build) {
    debug {
        version (GNU) {
            pragma(link, "DG-win32");
        } else version (DigitalMars) {
            pragma(link, "auxC");
        } else {
            pragma(link, "DO-win32");
        }
    } else {
        version (GNU) {
            pragma(link, "DG-win32");
        } else version (DigitalMars) {
            pragma(link, "auxC");
        } else {
            pragma(link, "DO-win32");
        }
    }
}
