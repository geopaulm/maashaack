﻿/*
Version: MPL 1.1/GPL 2.0/LGPL 2.1
 
The contents of this file are subject to the Mozilla Public License Version
1.1 (the "License"); you may not use this file except in compliance with
the License. You may obtain a copy of the License at
http://www.mozilla.org/MPL/
  
Software distributed under the License is distributed on an "AS IS" basis,
WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
for the specific language governing rights and limitations under the
License.
  
The Original Code is [maashaack framework].
  
The Initial Developers of the Original Code are
Zwetan Kjukov <zwetan@gmail.com> and Marc Alcaraz <ekameleon@gmail.com>.
Portions created by the Initial Developers are Copyright (C) 2006-2009
the Initial Developers. All Rights Reserved.
  
Contributor(s):
  
Alternatively, the contents of this file may be used under the terms of
either the GNU General Public License Version 2 or later (the "GPL"), or
the GNU Lesser General Public License Version 2.1 or later (the "LGPL"),
in which case the provisions of the GPL or the LGPL are applicable instead
of those above. If you wish to allow use of your version of this file only
under the terms of either the GPL or the LGPL, and not to allow others to
use your version of this file under the terms of the MPL, indicate your
decision by deleting the provisions above and replace them with the notice
and other provisions required by the LGPL or the GPL. If you do not delete
the provisions above, a recipient may use your version of this file under
the terms of any one of the MPL, the GPL or the LGPL.
*/

/*
This program is based on zlib-1.1.3, so all credit should go authors
Jean-loup Gailly(jloup@gzip.org) and Mark Adler(madler@alumni.caltech.edu)
and contributors of zlib.
*/

package libraries.zip 
{
    /**     * This class is used for decompressing compressed data.     */    public class Inflate 
    {
        /**
         * Creates a new Inflate instance.
         */
        public function Inflate()
        {
            
        }
        
        /**
         *  The current inflate blocks state.
         */
        public var blocks:InflateBlocks ;
        
        /**
         * if BAD, inflateSync's marker bytes count.
         */
        public var marker:int;
        
        /**
         * if FLAGS, method byte (Mode dependent information)..
         */
        public var method:int ; 
      
        /**
         * The current inflate mode.
         */
        public var mode:int ;
        
        /**
         * Stream check value.   
         */
        public var need:uint ;
        
        /**
         * Flag for no wrapper (mode independent information).
         */
        public var nowrap:int ; 
        
        /**
         * Computed check value.
         */
        public var was:Array = new Array(1) ;
        
        /**
         * log2(window size)  (8..15, defaults to 15)
         */
        public var wbits:int ; 
        
        // constants
        
        /**
         * The deflated value.
         */
        public static const Z_DEFLATED:int = 8 ;
        
        /**
         * Inflates the specified ZStream object with the passed-in flush value.
         */
        public function inflate( stream:ZStream , flush:int ):int
        {
//            var r:int ;
//            var b:int ;
            
            return Z_OK ;        }
    }}