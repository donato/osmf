/*****************************************************
 *  
 *  Copyright 2011 Adobe Systems Incorporated.  All Rights Reserved.
 *  
 *****************************************************
 *  The contents of this file are subject to the Mozilla Public License
 *  Version 1.1 (the "License"); you may not use this file except in
 *  compliance with the License. You may obtain a copy of the License at
 *  http://www.mozilla.org/MPL/
 *   
 *  Software distributed under the License is distributed on an "AS IS"
 *  basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See the
 *  License for the specific language governing rights and limitations
 *  under the License.
 *   
 *  
 *  The Initial Developer of the Original Code is Adobe Systems Incorporated.
 *  Portions created by Adobe Systems Incorporated are Copyright (C) 2011 Adobe Systems 
 *  Incorporated. All Rights Reserved. 
 *  
 *****************************************************/
package org.osmf.net.httpstreaming
{
	[ExcludeClass]
	
	/**
	 * @private
	 * 
	 * Enumeration os states an HTTPStreamProvider cycles through.
	 */ 
	public class HTTPStreamProviderState
	{
		public static const INIT:String = "init";
		public static const SEEK:String = "seek";
		public static const LOAD:String = "load";
		public static const WAIT:String = "wait";
		public static const READ:String = "read";
		public static const BEGIN_FRAGMENT:String = "beginFragment";
		public static const END_FRAGMENT:String = "endFragment";
		public static const STOP:String = "stop";
	}
}