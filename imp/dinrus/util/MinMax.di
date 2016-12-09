﻿/*******************************************************************************

        copyright:      Copyright (c) 2010 Kris. все rights reserved.

        license:        BSD стиль: $(LICENSE)
        
        version:        Jan 2010: Initial release
        
        author:         Kris
    
*******************************************************************************/

module util.MinMax;

/*******************************************************************************

        Return the minimum of two аргументы (of the same тип)

*******************************************************************************/

T min(T)(T a, T b)
{
        return a < b ? a : b;
}

/*******************************************************************************

        Return the maximum of two аргументы (of the same тип)

*******************************************************************************/

T max(T)(T a, T b)
{
        return a > b ? a : b;
}

