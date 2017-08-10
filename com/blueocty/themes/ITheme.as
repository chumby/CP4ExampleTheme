//
//  ITheme
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
// these are the functions/handlers that should be supported by the theme - these functions
// are called by the Control Panel.

import com.blueocty.themes.IThemeCallbacks;

interface com.blueocty.themes.ITheme {
	// handshakes
	function onHello(greeting:String):Void;
	function onGoodbye():Void;
	
	// callbacks
	function onCallbacks(callbacks:IThemeCallbacks):Void;
	
	// basic theme manipulation
	function onHome():Void; // navigate the theme to its home screen
	function isHome():Boolean; // theme must respond true if on home screen
	function isReallyHome():Boolean; // theme must respond true if on home screen, not on widget, and not on photoSlideshow
	function isFullscreenWidget():Boolean; // theme must respond true if on widget

	// popup bar
	function onPopupBar(showing:Boolean):Void; // called when popup shows or hides
	
	// navigation
	function onNavigation(showing:Boolean):Void; // called when a "pushback" screen should be presented

	// controls
	function onControls(show:Boolean):Void // called to have theme present controls
	
	// clocks
	function onClocks(clocks:Object):Void // called with information about clocks
	function onClockFormat(format:String):Void // called with '12' or '24' on a clock format change
	function onFullscreenClock(show:Boolean):Void; // called to display clocks fullscreen
	
	// themes
	function onDestroyTheme(show:Boolean):Void; // called to destroy theme for better performance
	function onDisconnectEvents(show:Boolean):Void; // called to disconnect event listeners for better performance

	// alarms
	function onAlarms(alarms:Object):Void; // called with information about alarms

	// events
	function onEvents(events:Object):Void; // called with information about events

	// weather
	function onWeather(weather:Object):Void; // called when weather data received
	function onFullScreenWeather(show:Boolean):Void; // called to display weather fullscreen
	
	//weathr format
	function onWeatherFormat(format:String):Void;
	
	// channels
	function onChannel(channel:Object):Void; // called when a channel has been received
	
	// widgets
	function onWidget(widgetInstance:Object): Void; // called when a widget is played
	function onFullScreenWidgets(show:Boolean):Void; // called to display widgets fullscreen
	
	// photos
	function onPhotos(photos:Object):Void // calles when photos are received
	function onFullScreenPhotos(show:Boolean):Void // called to display photos fullscreen
	function onPhotoResized(success:Boolean, source:String, dest:String):Void; // called when photo has been resized
	
	// music
	function onMusicServices(services:Object):Void; // called when music services received
	function onMusicStatus(status:Object):Void; // called during operation on music
	function onMusicProgress(progress:Object):Void; // called while music playing, if available

	// volume
	function onVolume(volume:Number):Void; // called when the system volume is changed (0..100)
	
	// orientation
	function onFlip(flipped:Boolean):Void; // called when the device changes orientation
	
	// keyboard
	function onKeyboard(ok:Boolean, txt:String):Void; // called when user enters text on keyboard
	
	// usb
	function onUSBMount(mountPoint:String):Void; // called when usb device is inserted
	function onUSBUnmount(mountPoint:String):Void;	// called when usb device is removed
}
