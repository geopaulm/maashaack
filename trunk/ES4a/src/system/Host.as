
/*
  The contents of this file are subject to the Mozilla Public License Version
  1.1 (the "License"); you may not use this file except in compliance with
  the License. You may obtain a copy of the License at 
  http://www.mozilla.org/MPL/ 
  
  Software distributed under the License is distributed on an "AS IS" basis,
  WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
  for the specific language governing rights and limitations under the License. 
  
  The Original Code is [ES4a: ECMAScript 4 MaasHaack framework].
  
  The Initial Developer of the Original Code is
  Zwetan Kjukov <zwetan@gmail.com>.
  Portions created by the Initial Developer are Copyright (C) 2006-2007
  the Initial Developer. All Rights Reserved.
  
  Contributor(s):
*/

package system
    {
    
    public class Host
        {
        private var _id:HostID;
        private var _version:Version;
        
        public function Host( id:HostID, version:Version )
            {
            _id      = id;
            _version = version;
            }
        
        public function get id():HostID
            {
            return _id;
            }
        
        public function get version():Version
            {
            return _version;
            }
        
        public function isDebug():Boolean
            {
            import flash.system.Capabilities;
            return Capabilities.isDebugger;
            }
        
        public function toString():String
            {
            return id.toString() + " " + version.toString( 4 );
            }
        
        }
    
    }

