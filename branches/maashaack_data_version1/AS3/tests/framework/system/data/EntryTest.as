﻿/*
  The contents of this file are subject to the Mozilla Public License Version
  1.1 (the "License"); you may not use this file except in compliance with
  the License. You may obtain a copy of the License at 
  http://www.mozilla.org/MPL/ 
  
  Software distributed under the License is distributed on an "AS IS" basis,
  WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
  for the specific language governing rights and limitations under the License. 
  
  The Original Code is [MaasHaack framework]
  
  The Initial Developer of the Original Code is
  Marc Alcaraz <ekameleon@gmail.com>.
  Portions created by the Initial Developer are Copyright (C) 2006-2008
  the Initial Developer. All Rights Reserved.
  
  Contributor(s):
  
*/

package system.data 
{
    import buRRRn.ASTUce.framework.TestCase;
    
    import system.data._facks.EntryClass;                

    public class EntryTest extends TestCase 
    {

        public function EntryTest(name:String = "")
        {
            super( name );
        }
        
        public var entry:EntryClass ;
        
        public function setUp():void
        {
            entry = new EntryClass( "key", "value" );
        }

        public function tearDown():void
        {
            entry = undefined ;
        }           
        
        public function testInterface():void
        {
            assertTrue( entry is Entry ) ;
        } 
        
        public function testKey():void
        {
            assertEquals( entry.key , "key" , "Entry interface failed with the key method" ) ;
        }     

        public function testValue():void
        {
            assertEquals( entry.value , "value" , "Entry interface failed with the value method" ) ;
        }     

        
    }
}



