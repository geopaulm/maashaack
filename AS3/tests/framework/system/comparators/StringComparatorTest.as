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
Portions created by the Initial Developers are Copyright (C) 2006-2008
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

package system.comparators 
{
    import buRRRn.ASTUce.framework.TestCase;
    
    import system.Comparator;    

    public class StringComparatorTest extends TestCase 
    {

        public function StringComparatorTest(name:String = "")
        {
            super(name);
        }
        
        public var comparator:StringComparator ;
        
        public function setUp():void
        {
            comparator = new StringComparator() ;
        }

        public function tearDown():void
        {
            comparator = undefined ;
        }
        
        public function testConstructor():void
        {
            
            assertNotNull( comparator , "The StringComparator constructor failed." ) ;
            
            
        }
        
        public function testIgnoreCase():void
        {
            comparator.ignoreCase = true ;
            
            assertTrue( comparator.ignoreCase , "") ;
            
            comparator.ignoreCase = false ;	
            
            assertFalse( comparator.ignoreCase , "") ;
        }
        
        
        public function testCompare():void
        {
            
        } 
        
        
        
        public function testGetIgnoreCaseStringComparator():void
        {

            var c1:StringComparator = StringComparator.getIgnoreCaseStringComparator() ;
            var c2:StringComparator = StringComparator.getIgnoreCaseStringComparator() ;
            
            assertNotNull( c1 as Comparator , "01 - StringComparator.getIgnoreCaseStringComparator failed." ) ;
            assertNotNull( c2 as Comparator , "02 - StringComparator.getIgnoreCaseStringComparator failed." ) ;
            assertSame(c1, c2 , "03 - StringComparator.getIgnoreCaseStringComparator failed." );
        	
        }
        
        public function testGetStringComparator():void
        {

            var c1:StringComparator = StringComparator.getStringComparator() ;
            var c2:StringComparator = StringComparator.getStringComparator() ;
            
            assertNotNull( c1 as Comparator , "01 - StringComparator.getStringComparator failed." ) ;
            assertNotNull( c2 as Comparator , "02 - StringComparator.getStringComparator failed." ) ;
            assertSame(c1, c2 , "03 - StringComparator.getStringComparator failed." );
        	
        } 
        
        
    }
}
