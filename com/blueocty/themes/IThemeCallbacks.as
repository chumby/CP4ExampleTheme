//
//  IThemeCallbacks
//
//  Created by Duane Maxwell on 2009-10-23.
//  Copyright (c) 2009-2013 Chumby Industries, Inc.
//  Copyright (c) 2013-2017 Blue Octy LLC
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
//
// these are the supported callback function from the theme to the Control Panel
//
interface com.blueocty.themes.IThemeCallbacks {
	// handshakes
	function hello(greeting:String):Void;
	function goodbye():Void;

	// popup bar
	function isPopupBarVisible():Boolean; // returns true if the popup bar is currently visible
	function showHidePopupBar(show:Boolean):Void; // show or hide the popup bar
	
	// navigation (typically the menu system)
	function navigateTo(key:String,param:Object):Void; // navigate the control panel to this function
	
	// clocks
	function dateForLocation(location:Object):Date; // return a Date object for the given location
	function sendClocks():Void; // ask for clocks
	function clockFormat():String; // returns '12' or '24' for the clock display mode
	
	// alarms
	function sendAlarms():Void; // ask for alarms
	function isSnoozing():Boolean; // true if a snooze in progress
	function cancelSnooze():Void; // call to cancel any outstanding snoozes
	
	// weather
	function sendWeather():Void; // ask for weather
	function sendWeatherFormat():Void; // ask for weather format "F" or "C"
	
	// channel
	function sendChannel():Void; // ask for the current channel

	// widgets
	function startWidgets():Void; // start up the widget engine with the current channel
	function stopWidgets():Void; // stops the widget engine
	function pauseWidgets():Void; // pause the widget engine with the current channel
	function unPauseWidgets():Void; // unPuase the widget engine with the current channel
	function setToWidget(widgetInstance:Object):Void // play the selected widget from the channel
	function nextWidget():Void; // navigate to next widget in current channel
	function previousWidget():Void; // navigate to previous widget in current channel
	function suspendWidget():Void; // suspend the execution of the current widget
	function resumeWidget():Void; // resume the execution of the current widget 
	function setWidgetPosition(x:Number,y:Number,width:Number,height:Number):Void; // set position and size of widget
	function pinWidget(pin:Boolean):Void; // pin/unpin this widget
	function isWidgetPinned():Boolean; // return true if the current widget is pinned
	function sendWidget():Void; // ask for the current widget
	function rateWidget(widgetInstance:Object,rating:Number):Void; /// rate the widget
	function customizeWidget(widgetInstance:Object):Void; // present the customization dialog for the widget
	function deleteWidget(widgetInstance:Object):Void; // present the delete dialog for the widget
	function addWidget(widgetInstance:Object):Void; // present the add dialog for the widget
	function selectWidget():Void; // present a dialog to allow the user to pick a widget

	// photos
	function sendPhotos():Void; // ask for the current photos
	function resizePhoto(source:String, dest:String, maxWidth:Number, maxHeight:Number):Void; // ask to resize a photo
	function deleteTemporaryFile(path:String):Void;  // can delete any file, but intended for resized photos
		
	// music
	function launchMusicService(source:Object):Void; // call to open UI for a music source
	function musicIsPlaying():Boolean; // returns true if music is currently playing
	function musicPlay():Void; // play/resume the current music service
	function musicPlayUrl(url:String, useHW:Boolean):Void; // url to music, use true=HW/false=SW decoder
	function musicStop():Void; // stop the current music service
	function musicCanPauseAndResume():Boolean; // returns true if the music can pause and resume
	function musicIsPaused():Boolean; // returns true if music is paused
	function musicPause():Void; // pause the current music service
	function musicResume():Void; // resume the current music service
	function musicCanChangeTracks():Boolean; // indicates whether the source can play tracks
	function musicNextTrack():Void; // advance to the next track
	function musicPreviousTrack():Void; // return to an earlier track
	
	function sendMusicServices():Void; // ask for music services
	function sendMusicStatus():Void; // ask for current music status
	function showCurrentMusicService():Void; // ask the CP to show the UI for the current music source, or menu
	
	// volume
	function getVolume():Number; // get the system volume (0..100)
	function setVolume(volume:Number):Void; // set the system volume (0..100)
	
	// orientation
	function isFlipped():Boolean; // returns true if the device is flipped
	
	// themes
	function showThemePicker(show:Boolean):Void; // present the theme picker dialog
	
	// cookies
	function putCookie(themeSelector:String,key:String,value:String):Void; // store data
	function getCookie(themeSelector:String,key:String):String; // get data
	function hasCookie(themeSelector:String,key:String):Boolean; // check for existence of data
	function removeCookie(themeSelector:String,key:String):Void; // remove data
	
	// misc stuff
	function keyboard(initialText:String,label:String,mode:String):Void; // present an onscreen keyboard
	function alertOK(message:String):Void; // present an elert with an OK button	
	function inDialog():Boolean; // returns true if the CP currently has a dialog or alert asserted
	function setPoolInterval():Number; // create an interval, typically name,target,function,params...
	function clearPoolInterval(interval:Number):Void; // stop an interval
}
