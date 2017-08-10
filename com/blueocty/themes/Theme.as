//
//  Theme
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
// This is a useful base class from which to build themes - it implements a stubbed out implementation
// of the ITheme interface.  New themes should be subclasses of this class.
//
// On the main timeline of the theme, you should have the following code:
//
// import com.blueocty.themes.Theme;
// import com.example.MyTheme;
// Theme.main(MyTheme,this);
//


import com.blueocty.themes.ITheme;
import com.blueocty.themes.IThemeCallbacks;

class com.blueocty.themes.Theme extends MovieClip implements ITheme {

	// can call with the appropriate subclass and root movie
	//
	// do *not* wrap this with an init flag for FlashDevelop, otherwise it will not initialize correctly!
	//
	public static function main(classRef:Function,root:Object) {
		root.__proto__ = classRef.prototype;
		classRef.apply(root);
	}

	public var callbacks:IThemeCallbacks;
	
	function Theme() {
		//trace('Theme()');
	}
	
	function onHello(greeting:String):Void {
		//trace('Theme.onHello(): '+greeting);
	}
	
	function onGoodbye():Void {
		//trace('Theme.onGoodbye()');
	}

	function onCallbacks(callbacks:IThemeCallbacks):Void {
		//trace('Theme.onCallbacks(): '+callbacks);
		this.callbacks = callbacks;
	}

	function onHome():Void {
		//trace("Theme.onHome()");
	}
	
	function isHome():Boolean {
		//trace('Theme.isHome(): must override');
		return true;
	}

	function isReallyHome():Boolean {
		//trace('Theme.isReallyHome(): must override');
		return true;
	}

	function isFullscreenWidget():Boolean {
		//trace('Theme.isFullscreenWidget(): must override');
		return true;
	}

	function onPopupBar(showing:Boolean):Void {
		//trace("Theme.onPopupBar(): "+showing);
	}
	
	function onNavigation(showing:Boolean):Void {
		//trace('Theme.onNavigation(): '+showing);
	}

	function onControls(show:Boolean):Void {
		//trace("Theme.onControls(): "+show);
	}

	function onClocks(clocks:Object):Void {
		//trace('Theme.onClocks(): '+clocks.toString());
	}

	function onClockFormat(format:String):Void {
		//trace('Theme.onClockFormat(): '+format);
	}

	function onAlarms(alarms:Object):Void {
		//trace('Theme.onAlarms(): '+alarms.toString());
	}

	function onEvents(events:Object):Void {
		//trace('Theme.onEvents(): '+events.toString());
	}

	function onWeather(weather:Object):Void {
		//trace('Theme.onWeather(): '+weather.toString());
	}
	
	function onWeatherFormat(format:String):Void {
		//trace('Theme.onWeatherFormat(): '+format);
	}
	
	function onChannel(channel:Object):Void {
		//trace('Theme.onChannel(): '+channel.toString());		
	}

	function onWidget(widget:Object): Void {
		//trace('Theme.onWidget(): '+widget.toString());		
	}

	function onFullScreenWidgets(show:Boolean):Void {
		//trace('Theme.onFullScreenWidgets(): '+show);		
	}

	function onFullScreenWeather(show:Boolean):Void {
		//trace('Theme.onFullScreenWeather(): '+show);		
	}
	
	function onFullscreenClock(show:Boolean):Void {
		//trace('Theme.onFullscreenClock(): '+show);		
	}

	function onDestroyTheme(show:Boolean):Void {
		//trace('THIS IS THE THEME.AS DESTROY THEME');
		//trace('Theme.onDestroyTheme(): '+show);		
	}

	function onDisconnectEvents(show:Boolean):Void {
		//trace('THIS IS THE THEME.AS DICONNECT EVENTS');
		//trace('Theme.onDisconnectEvents(): '+show);		
	}

	function onPhotos(photos:Object):Void {
		//trace('Theme.onPhotos(): '+photos.toString());		
	}

	function onPhotoResized(success:Boolean, source:String, dest:String):Void {
		//trace('Theme.onPhotoResized(): ' + success + "  " + dest);		
	}
	
	function onFullScreenPhotos(show:Boolean):Void {
		//trace('Theme.onFullScreenPhotos(): '+show);
	}

	function onBIVLServices(services:Object):Void {
		//trace("Theme.onBIVLServices() "+services.toString());
	}

	function onBIVLStatus(status:String,source:Object):Void {
		//trace("Theme.onBIVLStatus() "+status.toString()+' '+source.toString());
	}

	function onMusicServices(services:Object):Void {
		//trace('Theme.onMusicServices(): '+services.toString());
	}

	function onMusicStatus(status:Object):Void {
		//trace("Theme.onMusicStatus(): "+status.toString());
	}

	function onMusicProgress(progress:Object):Void {
		//trace("Theme.onMusicProgress(): "+progress.toString());
	}

	// volume
	function onVolume(volume:Number):Void {
		//trace('Theme.onVolume(): '+volume);
	}

	// orientation
	function onFlip(flipped:Boolean):Void {
		//trace('Theme.onFlip(): '+flipped);		
	}

	// speech
	function onSpeech(speech:String):Void {
		//trace('Theme.onSpeech(): '+speech+toString());
	}

	// keybaord
	function onKeyboard(ok:Boolean,txt:String):Void {
		//trace('Theme.onKeyboard(): '+ok+' '+txt);
	}

	// usb
	function onUSBMount(mountPoint:String):Void {
		//trace('Theme.onUSBMount(): ' + mountPoint);
	}
	
	function onUSBUnmount(mountPoint:String):Void {
		//trace('Theme.onUSBUnmount(): ' + mountPoint);
	}
	
}
