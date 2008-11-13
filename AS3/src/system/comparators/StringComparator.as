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
    import system.Comparator;
    import system.Strings;    

    /**
	 * This comparator compare String objects.
	 * <p><b>Example :</b></p>
	 * <pre class="prettyprint">
	 * import system.comparators.StringComparator ;
	 * 
	 * var comp1:StringComparator = new StringComparator() ;
	 * var comp2:StringComparator = new StringComparator(true) ; // ignore case
	 * 
	 * var s0:String = "HELLO" ;
	 * var s1:String = "hello" ;
	 * var s2:String = "welcome" ;
	 * var s3:String = "world" ;
	 * 
	 * trace( comp1.compare(s1, s2) ) ; //  -1
	 * trace( comp1.compare(s2, s1) ) ; //  1
	 * trace( comp1.compare(s1, s3) ) ; // 1
	 * trace( comp1.compare(s1, s1) ) ; // 0
	 * 
	 * trace( comp1.compare(s1, s0) ) ; // 0
	 * trace( comp2.compare(s1, s0) ) ; // -1
	 * </pre>
	 * @see system.Strings#compare
     */
	public class StringComparator implements Comparator
	{
		
		/**
		 * Creates a new StringComparator instance.
		 * @param ignoreCase a boolean to define if the comparator ignore case or not.
	     */
		public function StringComparator( ignoreCase:Boolean=false )
		{
			this.ignoreCase = ignoreCase ;
		}

		/**
		 * Allow to take into account the case for comparison.
		 */
		public var ignoreCase:Boolean ;
        
		/**
		 * Returns an integer value to compare two String objects.
	     * @param o1 the first String object to compare.
	     * @param o2 the second String object to compare.
	     * @param options A boolean who indicates if the Comparator ignore the case or not. If this parameter is null the internal ignoreCase property is used.
		 * @return <p>
		 * <li>-1 if o1 is "lower" than (less than, before, etc.) o2 ;</li>
	     * <li> 1 if o1 is "higher" than (greater than, after, etc.) o2 ;</li>
		 * <li> 0 if o1 and o2 are equal.</li>
		 * </p>
		 * @throws ArgumentError if compare(a, b) and 'a' or 'b' aren't String objects.
	     */
		public function compare(o1:*, o2:*, options:* = null):int
		{
			//var b:Boolean = ignoreCase ;
			//if ( options != null && options is Boolean )
			//{
			//	b = options as Boolean ;
			//}
			return Strings.compare( o1, o2, ignoreCase );
		}
        
		/**
		 * Returns the <code class="prettyprint">StringComparator</code> singleton with the a <code class="prettyprint">false</code> ignoreCase property.
		 * Clients are encouraged to use the value returned from this method instead of constructing a new instance to reduce allocation and garbage collection overhead when multiple StringComparators may be used in the same application.
	     * @return the <code class="prettyprint">StringComparator</code> singleton with the a <code class="prettyprint">false</code> ignoreCase property.
	     */
		public static function getStringComparator():StringComparator
		{
			if ( _comparator == null )
			{
				_comparator = new StringComparator(false) ;	
			}
			return _comparator ;
		}
		
		/**
		 * Returns the <code class="prettyprint">StringComparator</code> singleton with the a <code class="prettyprint">true</code> ignoreCase property.
	     * Clients are encouraged to use the value returned from this method instead of constructing a new instance to reduce allocation and garbage collection overhead when multiple StringComparators may be used in the same application.
		 * @return the <code class="prettyprint">StringComparator</code> singleton with the a <code class="prettyprint">true</code> ignoreCase property.
	     */
		public static function getIgnoreCaseStringComparator():StringComparator
		{
			if ( _ignoreCaseComparator == null )
			{
				_ignoreCaseComparator = new StringComparator( true ) ;	
			}
			return _ignoreCaseComparator ;
		}
        
		/**
	      * The internal Case StringComparator.
	     */
		private static var _comparator:StringComparator ;

		/**
	     * The internal ignoreCase StringComparator.
		 */
		private static var _ignoreCaseComparator:StringComparator ;
		
	}

}