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
	 * This class holds Quality of Service information for a specified stream provider.
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 10
	 * @playerversion AIR 1.5
	 * @productversion OSMF 1.6
	 */
	public class HTTPStreamProviderQoSInfo
	{
		/**
		 * Default constructor.
		 */
		public function HTTPStreamProviderQoSInfo(fragmentDuration:Number, fragmentSize:Number, downloadDuration:Number)
		{
			if (!isNaN(fragmentDuration) && !isNaN(downloadDuration) && downloadDuration > 0)
			{
				_downloadRatio = fragmentDuration / downloadDuration;
			}
		}
		
		/**
		 * Gets the download ratio.
		 */
		public function get downloadRatio():Number
		{
			return _downloadRatio;
		}
		
		/// Internals
		private var _downloadRatio:Number = 0;
	}
}