/*******************************************************************************

        @file NetworkAlert.d
        
        Copyright (c) 2004 Kris Bell
        
        This software is provided 'as-is', without any express or implied
        warranty. In no event will the authors be held liable for damages
        of any kind arising from the use of this software.
        
        Permission is hereby granted to anyone to use this software for any 
        purpose, including commercial applications, and to alter it and/or 
        redistribute it freely, subject to the following restrictions:
        
        1. The origin of this software must not be misrepresented; you must 
           not claim that you wrote the original software. If you use this 
           software in a product, an acknowledgment within documentation of 
           said product would be appreciated but is not required.

        2. Altered source versions must be plainly marked as such, and must 
           not be misrepresented as being the original software.

        3. This notice may not be removed or altered from any distribution
           of the source.

        4. Derivative works are permitted, but they must carry this notice
           in full and credit the original source.


                        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


        @version        Initial version, August 2004      
        @author         Kris


*******************************************************************************/

module mango.cluster.NetworkAlert;

private import  mango.cluster.Client;

/*******************************************************************************

*******************************************************************************/

class NetworkAlert : Client
{
        /***********************************************************************

                Construct a NetworkAlert gateway on the provided QOS cluster
                for the specified channel. Each subsequent alert will take 
                place over the given channel.

        ***********************************************************************/
        
        this (ICluster cluster, char[] channel)
        {
                super (cluster, channel);
        }

        /***********************************************************************

        ***********************************************************************/
        
        IConsumer createConsumer (IEventListener listener)
        {
                return getCluster.createConsumer (getChannel, IEvent.Style.Bulletin, listener);
        }

        /***********************************************************************

        ***********************************************************************/
        
        void broadcast (IPayload payload = null)
        {
                getCluster.broadcast (getChannel, payload);
        }
}


version (build) {
    debug {
        pragma(link, "mango");
    } else {
        pragma(link, "mango");
    }
}