/*!
 * jQuery UI Widget @VERSION
 *
 * Copyright 2010, AUTHORS.txt (http://jqueryui.com/about)
 * Dual licensed under the MIT or GPL Version 2 licenses.
 * http://jquery.org/license
 *
 * http://docs.jquery.com/UI/Widget
 */
(function( $, undefined ) {

// jQuery 1.4+
if ( $.cleanData ) {
	var _cleanData = $.cleanData;
	$.cleanData = function( elems ) {
		for ( var i = 0, elem; (elem = elems[i]) != null; i++ ) {
			$( elem ).triggerHandler( "remove" );
		}
		_cleanData( elems );
	};
} else {
	var _remove = $.fn.remove;
	$.fn.remove = function( selector, keepData ) {
		return this.each(function() {
			if ( !keepData ) {
				if ( !selector || $.filter( selector, [ this ] ).length ) {
					$( "*", this ).add( [ this ] ).each(function() {
						$( this ).triggerHandler( "remove" );
					});
				}
			}
			return _remove.call( $(this), selector, keepData );
		});
	};
}

$.widget = function( name, base, prototype ) {
	var namespace = name.split( "." )[ 0 ],
		fullName;
	name = name.split( "." )[ 1 ];
	fullName = namespace + "-" + name;

	if ( !prototype ) {
		prototype = base;
		base = $.Widget;
	}

	// create selector for plugin
	$.expr[ ":" ][ fullName ] = function( elem ) {
		return !!$.data( elem, name );
	};

	$[ namespace ] = $[ namespace ] || {};
	$[ namespace ][ name ] = function( options, element ) {
		// allow instantiation without initializing for simple inheritance
		if ( arguments.length ) {
			this._createWidget( options, element );
		}
	};

	var basePrototype = new base();
	// we need to make the options hash a property directly on the new instance
	// otherwise we'll modify the options hash on the prototype that we're
	// inheriting from
//	$.each( basePrototype, function( key, val ) {
//		if ( $.isPlainObject(val) ) {
//			basePrototype[ key ] = $.extend( {}, val );
//		}
//	});
	basePrototype.options = $.extend( true, {}, basePrototype.options );
	$[ namespace ][ name ].prototype = $.extend( true, basePrototype, {
		namespace: namespace,
		widgetName: name,
		widgetEventPrefix: $[ namespace ][ name ].prototype.widgetEventPrefix || name,
		widgetBaseClass: fullName
	}, prototype );

	$.widget.bridge( name, $[ namespace ][ name ] );
};

$.widget.bridge = function( name, object ) {
	$.fn[ name ] = function( options ) {
		var isMethodCall = typeof options === "string",
			args = Array.prototype.slice.call( arguments, 1 ),
			returnValue = this;

		// allow multiple hashes to be passed on init
		options = !isMethodCall && args.length ?
			$.extend.apply( null, [ true, options ].concat(args) ) :
			options;

		// prevent calls to internal methods
		if ( isMethodCall && options.charAt( 0 ) === "_" ) {
			return returnValue;
		}

		if ( isMethodCall ) {
			this.each(function() {
				var instance = $.data( this, name );
				if ( !instance ) {
					throw "cannot call methods on " + name + " prior to initialization; " +
						"attempted to call method '" + options + "'";
				}
				if ( !$.isFunction( instance[options] ) ) {
					throw "no such method '" + options + "' for " + name + " widget instance";
				}
				var methodValue = instance[ options ].apply( instance, args );
				if ( methodValue !== instance && methodValue !== undefined ) {
					returnValue = methodValue;
					return false;
				}
			});
		} else {
			this.each(function() {
				var instance = $.data( this, name );
				if ( instance ) {
					instance.option( options || {} )._init();
				} else {
					$.data( this, name, new object( options, this ) );
				}
			});
		}

		return returnValue;
	};
};

$.Widget = function( options, element ) {
	// allow instantiation without initializing for simple inheritance
	if ( arguments.length ) {
		this._createWidget( options, element );
	}
};

$.Widget.prototype = {
	widgetName: "widget",
	widgetEventPrefix: "",
	options: {
		disabled: false
	},
	_createWidget: function( options, element ) {
		// $.widget.bridge stores the plugin instance, but we do it anyway
		// so that it's stored even before the _create function runs
		$.data( element, this.widgetName, this );
		this.element = $( element );
		this.options = $.extend( true, {},
			this.options,
			this._getCreateOptions(),
			options );

		var self = this;
		this.element.bind( "remove." + this.widgetName, function() {
			self.destroy();
		});

		this._create();
		this._trigger( "create" );
		this._init();
	},
	_getCreateOptions: function() {
		var options = {};
		if ( $.metadata ) {
			options = $.metadata.get( element )[ this.widgetName ];
		}
		return options;
	},
	_create: function() {},
	_init: function() {},

	destroy: function() {
		this.element
			.unbind( "." + this.widgetName )
			.removeData( this.widgetName );
		this.widget()
			.unbind( "." + this.widgetName )
			.removeAttr( "aria-disabled" )
			.removeClass(
				this.widgetBaseClass + "-disabled " +
				"ui-state-disabled" );
	},

	widget: function() {
		return this.element;
	},

	option: function( key, value ) {
		var options = key;

		if ( arguments.length === 0 ) {
			// don't return a reference to the internal hash
			return $.extend( {}, this.options );
		}

		if  (typeof key === "string" ) {
			if ( value === undefined ) {
				return this.options[ key ];
			}
			options = {};
			options[ key ] = value;
		}

		this._setOptions( options );

		return this;
	},
	_setOptions: function( options ) {
		var self = this;
		$.each( options, function( key, value ) {
			self._setOption( key, value );
		});

		return this;
	},
	_setOption: function( key, value ) {
		this.options[ key ] = value;

		if ( key === "disabled" ) {
			this.widget()
				[ value ? "addClass" : "removeClass"](
					this.widgetBaseClass + "-disabled" + " " +
					"ui-state-disabled" )
				.attr( "aria-disabled", value );
		}

		return this;
	},

	enable: function() {
		return this._setOption( "disabled", false );
	},
	disable: function() {
		return this._setOption( "disabled", true );
	},

	_trigger: function( type, event, data ) {
		var callback = this.options[ type ];

		event = $.Event( event );
		event.type = ( type === this.widgetEventPrefix ?
			type :
			this.widgetEventPrefix + type ).toLowerCase();
		data = data || {};

		// copy original event properties over to the new event
		// this would happen if we could call $.event.fix instead of $.Event
		// but we don't have a way to force an event to be fixed multiple times
		if ( event.originalEvent ) {
			for ( var i = $.event.props.length, prop; i; ) {
				prop = $.event.props[ --i ];
				event[ prop ] = event.originalEvent[ prop ];
			}
		}

		this.element.trigger( event, data );

		return !( $.isFunction(callback) &&
			callback.call( this.element[0], event, data ) === false ||
			event.isDefaultPrevented() );
	}
};

})( jQuery );


(function( $ ) {

$.widget( "mobile.widget", {
	_getCreateOptions: function() {
		var elem = this.element,
			options = {};
		$.each( this.options, function( option ) {
			var value = elem.data( option.replace( /[A-Z]/g, function( c ) {
				return "-" + c.toLowerCase();
			} ) );
			if ( value !== undefined ) {
				options[ option ] = value;
			}
		});
		return options;
	}
});

})( jQuery );


(function( $ ) {

// test whether a CSS media type or query applies
$.media = (function() {
	// TODO: use window.matchMedia once at least one UA implements it
	var cache = {},
		$html = $( "html" ),
		testDiv = $( "<div id='jquery-mediatest'>" ),
		fakeBody = $( "<body>" ).append( testDiv );
	
	return function( query ) {
		if ( !( query in cache ) ) {
			var styleBlock = $( "<style type='text/css'>" +
				"@media " + query + "{#jquery-mediatest{position:absolute;}}" +
				"</style>" );
			$html.prepend( fakeBody ).prepend( styleBlock );
			cache[ query ] = testDiv.css( "position" ) === "absolute";
			fakeBody.add( styleBlock ).remove();
		}
		return cache[ query ];
	};
})();

var fakeBody = $( "<body>" ).prependTo( "html" ),
	fbCSS = fakeBody[0].style,
	vendors = ['webkit','moz','o'],
	webos = window.palmGetResource || window.PalmServiceBridge, //only used to rule out scrollTop 
	bb = window.blackberry; //only used to rule out box shadow, as it's filled opaque on BB

//thx Modernizr
function propExists( prop ){
	var uc_prop = prop.charAt(0).toUpperCase() + prop.substr(1),
		props   = (prop + ' ' + vendors.join(uc_prop + ' ') + uc_prop).split(' ');
	for(var v in props){
		if( fbCSS[ v ] !== undefined ){
			return true;
		}
	}
};

//test for dynamic-updating base tag support (allows us to avoid href,src attr rewriting)
function baseTagTest(){
	var fauxBase = location.protocol + '//' + location.host + location.pathname + "ui-dir/",
		base = $("<base>", {"href": fauxBase}).appendTo("head"),
		link = $( "<a href='testurl'></a>" ).prependTo( fakeBody ),
		rebase = link[0].href;
	base.remove();
	return rebase.indexOf(fauxBase) === 0;
};

$.extend( $.support, {
	orientation: "orientation" in window,
	touch: "ontouchend" in document,
	WebKitAnimationEvent: typeof WebKitTransitionEvent === "object",
	pushState: !!history.pushState,
	mediaquery: $.media('only all'),
	cssPseudoElement: !!propExists('content'),
	boxShadow: !!propExists('boxShadow') && !bb,
	scrollTop: ("pageXOffset" in window || "scrollTop" in document.documentElement || "scrollTop" in fakeBody[0]) && !webos,
	dynamicBaseTag: baseTagTest()
});

fakeBody.remove();

//for ruling out shadows via css
if( !$.support.boxShadow ){ $('html').addClass('ui-mobile-nosupport-boxshadow'); }

})( jQuery );

(function( $ ) {

// add new event shortcuts
$.each( "touchstart touchmove touchend orientationchange tap taphold swipe swipeleft swiperight scrollstart scrollstop".split( " " ), function( i, name ) {
	$.fn[ name ] = function( fn ) {
		return fn ? this.bind( name, fn ) : this.trigger( name );
	};
	$.attrFn[ name ] = true;
});

var supportTouch = $.support.touch,
	scrollEvent = "touchmove scroll",
	touchStartEvent = supportTouch ? "touchstart" : "mousedown",
	touchStopEvent = supportTouch ? "touchend" : "mouseup",
	touchMoveEvent = supportTouch ? "touchmove" : "mousemove";

// also handles scrollstop
$.event.special.scrollstart = {
	enabled: true,
	
	setup: function() {
		var thisObject = this,
			$this = $( thisObject ),
			scrolling,
			timer;
		
		function trigger( event, state ) {
			scrolling = state;
			var originalType = event.type;
			event.type = scrolling ? "scrollstart" : "scrollstop";
			$.event.handle.call( thisObject, event );
			event.type = originalType;
		}
		
		// iPhone triggers scroll after a small delay; use touchmove instead
		$this.bind( scrollEvent, function( event ) {
			if ( !$.event.special.scrollstart.enabled ) {
				return;
			}
			
			if ( !scrolling ) {
				trigger( event, true );
			}
			
			clearTimeout( timer );
			timer = setTimeout(function() {
				trigger( event, false );
			}, 50 );
		});
	}
};

// also handles taphold
$.event.special.tap = {
	setup: function() {
		var thisObject = this,
			$this = $( thisObject );
		
		$this
			.bind( touchStartEvent, function( event ) {
				if ( event.which && event.which !== 1 ) {
					return;
				}
				
				var moved = false,
					touching = true,
					originalType,
					timer;
				
				function moveHandler() {
					moved = true;
				}
				
				timer = setTimeout(function() {
					if ( touching && !moved ) {
						originalType = event.type;
						event.type = "taphold";
						$.event.handle.call( thisObject, event );
						event.type = originalType;
					}
				}, 750 );
				
				$this
					.one( touchMoveEvent, moveHandler)
					.one( touchStopEvent, function( event ) {
						$this.unbind( touchMoveEvent, moveHandler );
						clearTimeout( timer );
						touching = false;
						
						if ( !moved ) {
							originalType = event.type;
							event.type = "tap";
							$.event.handle.call( thisObject, event );
							event.type = originalType;
						}
					});
			});
	}
};

// also handles swipeleft, swiperight
$.event.special.swipe = {
	setup: function() {
		var thisObject = this,
			$this = $( thisObject );
		
		$this
			.bind( touchStartEvent, function( event ) {
				var data = event.originalEvent.touches ?
						event.originalEvent.touches[ 0 ] :
						event,
					start = {
						time: (new Date).getTime(),
						coords: [ data.pageX, data.pageY ],
						origin: $( event.target )
					},
					stop;
				
				function moveHandler( event ) {
					if ( !start ) {
						return;
					}
					
					var data = event.originalEvent.touches ?
							event.originalEvent.touches[ 0 ] :
							event;
					stop = {
							time: (new Date).getTime(),
							coords: [ data.pageX, data.pageY ]
					};
					
					// prevent scrolling
					if ( Math.abs( start.coords[0] - stop.coords[0] ) > 10 ) {
						event.preventDefault();
					}
				}
				
				$this
					.bind( touchMoveEvent, moveHandler )
					.one( touchStopEvent, function( event ) {
						$this.unbind( touchMoveEvent, moveHandler );
						if ( start && stop ) {
							if ( stop.time - start.time < 1000 && 
									Math.abs( start.coords[0] - stop.coords[0]) > 30 &&
									Math.abs( start.coords[1] - stop.coords[1]) < 20 ) {
								start.origin
								.trigger( "swipe" )
								.trigger( start.coords[0] > stop.coords[0] ? "swipeleft" : "swiperight" );
							}
						}
						start = stop = undefined;
					});
			});
	}
};

$.event.special.orientationchange = {
	orientation: function( elem ) {
		return document.body && elem.width() / elem.height() < 1.1 ? "portrait" : "landscape";
	},
	
	setup: function() {
		var thisObject = this,
			$this = $( thisObject ),
			orientation = $.event.special.orientationchange.orientation( $this );

		function handler() {
			var newOrientation = $.event.special.orientationchange.orientation( $this );
			
			if ( orientation !== newOrientation ) {
				$.event.handle.call( thisObject, "orientationchange", {
					orientation: newOrientation
				} );
				orientation = newOrientation;
			}
		}

		if ( $.support.orientation ) {
			thisObject.addEventListener( "orientationchange", handler, false );
		} else {
			$this.bind( "resize", handler );
		}
	}
};

$.each({
	scrollstop: "scrollstart",
	taphold: "tap",
	swipeleft: "swipe",
	swiperight: "swipe"
}, function( event, sourceEvent ) {
	$.event.special[ event ] = {
		setup: function() {
			$( this ).bind( sourceEvent, $.noop );
		}
	};
});

})( jQuery );

/*!
 * jQuery hashchange event - v1.3 - 7/21/2010
 * http://benalman.com/projects/jquery-hashchange-plugin/
 * 
 * Copyright (c) 2010 "Cowboy" Ben Alman
 * Dual licensed under the MIT and GPL licenses.
 * http://benalman.com/about/license/
 */

// Script: jQuery hashchange event
//
// *Version: 1.3, Last updated: 7/21/2010*
// 
// Project Home - http://benalman.com/projects/jquery-hashchange-plugin/
// GitHub       - http://github.com/cowboy/jquery-hashchange/
// Source       - http://github.com/cowboy/jquery-hashchange/raw/master/jquery.ba-hashchange.js
// (Minified)   - http://github.com/cowboy/jquery-hashchange/raw/master/jquery.ba-hashchange.min.js (0.8kb gzipped)
// 
// About: License
// 
// Copyright (c) 2010 "Cowboy" Ben Alman,
// Dual licensed under the MIT and GPL licenses.
// http://benalman.com/about/license/
// 
// About: Examples
// 
// These working examples, complete with fully commented code, illustrate a few
// ways in which this plugin can be used.
// 
// hashchange event - http://benalman.com/code/projects/jquery-hashchange/examples/hashchange/
// document.domain - http://benalman.com/code/projects/jquery-hashchange/examples/document_domain/
// 
// About: Support and Testing
// 
// Information about what version or versions of jQuery this plugin has been
// tested with, what browsers it has been tested in, and where the unit tests
// reside (so you can test it yourself).
// 
// jQuery Versions - 1.2.6, 1.3.2, 1.4.1, 1.4.2
// Browsers Tested - Internet Explorer 6-8, Firefox 2-4, Chrome 5-6, Safari 3.2-5,
//                   Opera 9.6-10.60, iPhone 3.1, Android 1.6-2.2, BlackBerry 4.6-5.
// Unit Tests      - http://benalman.com/code/projects/jquery-hashchange/unit/
// 
// About: Known issues
// 
// While this jQuery hashchange event implementation is quite stable and
// robust, there are a few unfortunate browser bugs surrounding expected
// hashchange event-based behaviors, independent of any JavaScript
// window.onhashchange abstraction. See the following examples for more
// information:
// 
// Chrome: Back Button - http://benalman.com/code/projects/jquery-hashchange/examples/bug-chrome-back-button/
// Firefox: Remote XMLHttpRequest - http://benalman.com/code/projects/jquery-hashchange/examples/bug-firefox-remote-xhr/
// WebKit: Back Button in an Iframe - http://benalman.com/code/projects/jquery-hashchange/examples/bug-webkit-hash-iframe/
// Safari: Back Button from a different domain - http://benalman.com/code/projects/jquery-hashchange/examples/bug-safari-back-from-diff-domain/
// 
// Also note that should a browser natively support the window.onhashchange 
// event, but not report that it does, the fallback polling loop will be used.
// 
// About: Release History
// 
// 1.3   - (7/21/2010) Reorganized IE6/7 Iframe code to make it more
//         "removable" for mobile-only development. Added IE6/7 document.title
//         support. Attempted to make Iframe as hidden as possible by using
//         techniques from http://www.paciellogroup.com/blog/?p=604. Added 
//         support for the "shortcut" format $(window).hashchange( fn ) and
//         $(window).hashchange() like jQuery provides for built-in events.
//         Renamed jQuery.hashchangeDelay to <jQuery.fn.hashchange.delay> and
//         lowered its default value to 50. Added <jQuery.fn.hashchange.domain>
//         and <jQuery.fn.hashchange.src> properties plus document-domain.html
//         file to address access denied issues when setting document.domain in
//         IE6/7.
// 1.2   - (2/11/2010) Fixed a bug where coming back to a page using this plugin
//         from a page on another domain would cause an error in Safari 4. Also,
//         IE6/7 Iframe is now inserted after the body (this actually works),
//         which prevents the page from scrolling when the event is first bound.
//         Event can also now be bound before DOM ready, but it won't be usable
//         before then in IE6/7.
// 1.1   - (1/21/2010) Incorporated document.documentMode test to fix IE8 bug
//         where browser version is incorrectly reported as 8.0, despite
//         inclusion of the X-UA-Compatible IE=EmulateIE7 meta tag.
// 1.0   - (1/9/2010) Initial Release. Broke out the jQuery BBQ event.special
//         window.onhashchange functionality into a separate plugin for users
//         who want just the basic event & back button support, without all the
//         extra awesomeness that BBQ provides. This plugin will be included as
//         part of jQuery BBQ, but also be available separately.

(function($,window,undefined){
  '$:nomunge'; // Used by YUI compressor.
  
  // Reused string.
  var str_hashchange = 'hashchange',
    
    // Method / object references.
    doc = document,
    fake_onhashchange,
    special = $.event.special,
    
    // Does the browser support window.onhashchange? Note that IE8 running in
    // IE7 compatibility mode reports true for 'onhashchange' in window, even
    // though the event isn't supported, so also test document.documentMode.
    doc_mode = doc.documentMode,
    supports_onhashchange = 'on' + str_hashchange in window && ( doc_mode === undefined || doc_mode > 7 );
  
  // Get location.hash (or what you'd expect location.hash to be) sans any
  // leading #. Thanks for making this necessary, Firefox!
  function get_fragment( url ) {
    url = url || location.href;
    return '#' + url.replace( /^[^#]*#?(.*)$/, '$1' );
  };
  
  // Method: jQuery.fn.hashchange
  // 
  // Bind a handler to the window.onhashchange event or trigger all bound
  // window.onhashchange event handlers. This behavior is consistent with
  // jQuery's built-in event handlers.
  // 
  // Usage:
  // 
  // > jQuery(window).hashchange( [ handler ] );
  // 
  // Arguments:
  // 
  //  handler - (Function) Optional handler to be bound to the hashchange
  //    event. This is a "shortcut" for the more verbose form:
  //    jQuery(window).bind( 'hashchange', handler ). If handler is omitted,
  //    all bound window.onhashchange event handlers will be triggered. This
  //    is a shortcut for the more verbose
  //    jQuery(window).trigger( 'hashchange' ). These forms are described in
  //    the <hashchange event> section.
  // 
  // Returns:
  // 
  //  (jQuery) The initial jQuery collection of elements.
  
  // Allow the "shortcut" format $(elem).hashchange( fn ) for binding and
  // $(elem).hashchange() for triggering, like jQuery does for built-in events.
  $.fn[ str_hashchange ] = function( fn ) {
    return fn ? this.bind( str_hashchange, fn ) : this.trigger( str_hashchange );
  };
  
  // Property: jQuery.fn.hashchange.delay
  // 
  // The numeric interval (in milliseconds) at which the <hashchange event>
  // polling loop executes. Defaults to 50.
  
  // Property: jQuery.fn.hashchange.domain
  // 
  // If you're setting document.domain in your JavaScript, and you want hash
  // history to work in IE6/7, not only must this property be set, but you must
  // also set document.domain BEFORE jQuery is loaded into the page. This
  // property is only applicable if you are supporting IE6/7 (or IE8 operating
  // in "IE7 compatibility" mode).
  // 
  // In addition, the <jQuery.fn.hashchange.src> property must be set to the
  // path of the included "document-domain.html" file, which can be renamed or
  // modified if necessary (note that the document.domain specified must be the
  // same in both your main JavaScript as well as in this file).
  // 
  // Usage:
  // 
  // jQuery.fn.hashchange.domain = document.domain;
  
  // Property: jQuery.fn.hashchange.src
  // 
  // If, for some reason, you need to specify an Iframe src file (for example,
  // when setting document.domain as in <jQuery.fn.hashchange.domain>), you can
  // do so using this property. Note that when using this property, history
  // won't be recorded in IE6/7 until the Iframe src file loads. This property
  // is only applicable if you are supporting IE6/7 (or IE8 operating in "IE7
  // compatibility" mode).
  // 
  // Usage:
  // 
  // jQuery.fn.hashchange.src = 'path/to/file.html';
  
  $.fn[ str_hashchange ].delay = 50;
  /*
  $.fn[ str_hashchange ].domain = null;
  $.fn[ str_hashchange ].src = null;
  */
  
  // Event: hashchange event
  // 
  // Fired when location.hash changes. In browsers that support it, the native
  // HTML5 window.onhashchange event is used, otherwise a polling loop is
  // initialized, running every <jQuery.fn.hashchange.delay> milliseconds to
  // see if the hash has changed. In IE6/7 (and IE8 operating in "IE7
  // compatibility" mode), a hidden Iframe is created to allow the back button
  // and hash-based history to work.
  // 
  // Usage as described in <jQuery.fn.hashchange>:
  // 
  // > // Bind an event handler.
  // > jQuery(window).hashchange( function(e) {
  // >   var hash = location.hash;
  // >   ...
  // > });
  // > 
  // > // Manually trigger the event handler.
  // > jQuery(window).hashchange();
  // 
  // A more verbose usage that allows for event namespacing:
  // 
  // > // Bind an event handler.
  // > jQuery(window).bind( 'hashchange', function(e) {
  // >   var hash = location.hash;
  // >   ...
  // > });
  // > 
  // > // Manually trigger the event handler.
  // > jQuery(window).trigger( 'hashchange' );
  // 
  // Additional Notes:
  // 
  // * The polling loop and Iframe are not created until at least one handler
  //   is actually bound to the 'hashchange' event.
  // * If you need the bound handler(s) to execute immediately, in cases where
  //   a location.hash exists on page load, via bookmark or page refresh for
  //   example, use jQuery(window).hashchange() or the more verbose 
  //   jQuery(window).trigger( 'hashchange' ).
  // * The event can be bound before DOM ready, but since it won't be usable
  //   before then in IE6/7 (due to the necessary Iframe), recommended usage is
  //   to bind it inside a DOM ready handler.
  
  // Override existing $.event.special.hashchange methods (allowing this plugin
  // to be defined after jQuery BBQ in BBQ's source code).
  special[ str_hashchange ] = $.extend( special[ str_hashchange ], {
    
    // Called only when the first 'hashchange' event is bound to window.
    setup: function() {
      // If window.onhashchange is supported natively, there's nothing to do..
      if ( supports_onhashchange ) { return false; }
      
      // Otherwise, we need to create our own. And we don't want to call this
      // until the user binds to the event, just in case they never do, since it
      // will create a polling loop and possibly even a hidden Iframe.
      $( fake_onhashchange.start );
    },
    
    // Called only when the last 'hashchange' event is unbound from window.
    teardown: function() {
      // If window.onhashchange is supported natively, there's nothing to do..
      if ( supports_onhashchange ) { return false; }
      
      // Otherwise, we need to stop ours (if possible).
      $( fake_onhashchange.stop );
    }
    
  });
  
  // fake_onhashchange does all the work of triggering the window.onhashchange
  // event for browsers that don't natively support it, including creating a
  // polling loop to watch for hash changes and in IE 6/7 creating a hidden
  // Iframe to enable back and forward.
  fake_onhashchange = (function(){
    var self = {},
      timeout_id,
      
      // Remember the initial hash so it doesn't get triggered immediately.
      last_hash = get_fragment(),
      
      fn_retval = function(val){ return val; },
      history_set = fn_retval,
      history_get = fn_retval;
    
    // Start the polling loop.
    self.start = function() {
      timeout_id || poll();
    };
    
    // Stop the polling loop.
    self.stop = function() {
      timeout_id && clearTimeout( timeout_id );
      timeout_id = undefined;
    };
    
    // This polling loop checks every $.fn.hashchange.delay milliseconds to see
    // if location.hash has changed, and triggers the 'hashchange' event on
    // window when necessary.
    function poll() {
      var hash = get_fragment(),
        history_hash = history_get( last_hash );
      
      if ( hash !== last_hash ) {
        history_set( last_hash = hash, history_hash );
        
        $(window).trigger( str_hashchange );
        
      } else if ( history_hash !== last_hash ) {
        location.href = location.href.replace( /#.*/, '' ) + history_hash;
      }
      
      timeout_id = setTimeout( poll, $.fn[ str_hashchange ].delay );
    };
    
    // vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
    // vvvvvvvvvvvvvvvvvvv REMOVE IF NOT SUPPORTING IE6/7/8 vvvvvvvvvvvvvvvvvvv
    // vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
    $.browser.msie && !supports_onhashchange && (function(){
      // Not only do IE6/7 need the "magical" Iframe treatment, but so does IE8
      // when running in "IE7 compatibility" mode.
      
      var iframe,
        iframe_src;
      
      // When the event is bound and polling starts in IE 6/7, create a hidden
      // Iframe for history handling.
      self.start = function(){
        if ( !iframe ) {
          iframe_src = $.fn[ str_hashchange ].src;
          iframe_src = iframe_src && iframe_src + get_fragment();
          
          // Create hidden Iframe. Attempt to make Iframe as hidden as possible
          // by using techniques from http://www.paciellogroup.com/blog/?p=604.
          iframe = $('<iframe tabindex="-1" title="empty"/>').hide()
            
            // When Iframe has completely loaded, initialize the history and
            // start polling.
            .one( 'load', function(){
              iframe_src || history_set( get_fragment() );
              poll();
            })
            
            // Load Iframe src if specified, otherwise nothing.
            .attr( 'src', iframe_src || 'javascript:0' )
            
            // Append Iframe after the end of the body to prevent unnecessary
            // initial page scrolling (yes, this works).
            .insertAfter( 'body' )[0].contentWindow;
          
          // Whenever `document.title` changes, update the Iframe's title to
          // prettify the back/next history menu entries. Since IE sometimes
          // errors with "Unspecified error" the very first time this is set
          // (yes, very useful) wrap this with a try/catch block.
          doc.onpropertychange = function(){
            try {
              if ( event.propertyName === 'title' ) {
                iframe.document.title = doc.title;
              }
            } catch(e) {}
          };
          
        }
      };
      
      // Override the "stop" method since an IE6/7 Iframe was created. Even
      // if there are no longer any bound event handlers, the polling loop
      // is still necessary for back/next to work at all!
      self.stop = fn_retval;
      
      // Get history by looking at the hidden Iframe's location.hash.
      history_get = function() {
        return get_fragment( iframe.location.href );
      };
      
      // Set a new history item by opening and then closing the Iframe
      // document, *then* setting its location.hash. If document.domain has
      // been set, update that as well.
      history_set = function( hash, history_hash ) {
        var iframe_doc = iframe.document,
          domain = $.fn[ str_hashchange ].domain;
        
        if ( hash !== history_hash ) {
          // Update Iframe with any initial `document.title` that might be set.
          iframe_doc.title = doc.title;
          
          // Opening the Iframe's document after it has been closed is what
          // actually adds a history entry.
          iframe_doc.open();
          
          // Set document.domain for the Iframe document as well, if necessary.
          domain && iframe_doc.write( '<script>document.domain="' + domain + '"</script>' );
          
          iframe_doc.close();
          
          // Update the Iframe's hash, for great justice.
          iframe.location.hash = hash;
        }
      };
      
    })();
    // ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    // ^^^^^^^^^^^^^^^^^^^ REMOVE IF NOT SUPPORTING IE6/7/8 ^^^^^^^^^^^^^^^^^^^
    // ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    
    return self;
  })();
  
})(jQuery,this);


(function ( jQuery ) {

jQuery.widget( "mobile.page", jQuery.mobile.widget, {
	options: {},
	
	_create: function() {
		var $elem = this.element;

		if ( this._trigger( "beforeCreate" ) === false ) {
			return;
		}
		
		//some of the form elements currently rely on the presence of ui-page and ui-content
		// classes so we'll handle page and content roles outside of the main role processing
		// loop below.
		$elem.find( "[data-role='page'], [data-role='content']" ).andSelf().each(function() {
			jQuery(this).addClass( "ui-" + jQuery(this).data( "role" ) );
		});
		
		$elem.find( "[data-role='nojs']" ).addClass( "ui-nojs" );

		this._enchanceControls();
		
		// pre-find data els
		var $dataEls = $elem.find( "[data-role]" ).andSelf().each(function() {
			var $this = jQuery( this ),
				role = $this.data( "role" ),
				theme = $this.data( "theme" );
			
			//apply theming and markup modifications to page,header,content,footer
			if ( role === "header" || role === "footer" ) {
				$this.addClass( "ui-bar-" + (theme || $this.parent('[data-role=page]').data( "theme" ) || "a") );
				
				// add ARIA role
				$this.attr( "role", role === "header" ? "banner" : "contentinfo" );
				
				//right,left buttons
				var $headeranchors = $this.children( "a" ),
					leftbtn = $headeranchors.hasClass( "ui-btn-left" ),
					rightbtn = $headeranchors.hasClass( "ui-btn-right" );
				
				if ( !leftbtn ) {
					leftbtn = $headeranchors.eq( 0 ).not( ".ui-btn-right" ).addClass( "ui-btn-left" ).length;
				}

				if ( !rightbtn ) {
					rightbtn = $headeranchors.eq( 1 ).addClass( "ui-btn-right" ).length;
				}
				
				// auto-add back btn on pages beyond first view
				if ( jQuery.mobile.addBackBtn && role === "header" &&
						(jQuery.mobile.urlStack.length > 1 || jQuery(".ui-page").length > 1) &&
						!leftbtn && !$this.data( "noBackBtn" ) ) {

					jQuery( "<a href='#' class='ui-btn-left' data-icon='arrow-l'>Back</a>" )
						.click(function() {
							history.back();
							return false;
						})
						.prependTo( $this );
				}
				
				//page title	
				$this.children( "h1, h2, h3, h4, h5, h6" )
					.addClass( "ui-title" )
					//regardless of h element number in src, it becomes h1 for the enhanced page
					.attr({ "tabindex": "0", "role": "heading", "aria-level": "1" });

			} else if ( role === "content" ) {
				if ( theme ) {
					$this.addClass( "ui-body-" + theme );
				}

				// add ARIA role
				$this.attr( "role", "main" );

			} else if ( role === "page" ) {
				$this.addClass( "ui-body-" + (theme || "c") );
			}
			
			switch(role) {
				case "header":
				case "footer":
				case "page":
				case "content":
					$this.addClass( "ui-" + role );
					break;
				case "collapsible":
				case "fieldcontain":
				case "navbar":
				case "listview":
				case "dialog":
					$this[ role ]();
					break;
			}
		});
		
		//links in bars, or those with data-role become buttons
		$elem.find( "[data-role='button'], .ui-bar a, .ui-header a, .ui-footer a" )
			.not( ".ui-btn" )
			.buttonMarkup();

		$elem	
			.find("[data-role='controlgroup']")
			.controlgroup();
		
		//links within content areas
		$elem.find( "a:not(.ui-btn):not(.ui-link-inherit)" )
			.addClass( "ui-link" );	
		
		//fix toolbars
		$elem.fixHeaderFooter();
	},
	
	_enchanceControls: function() {
		// degrade inputs to avoid poorly implemented native functionality
		this.element.find( "input" ).each(function() {
			var type = this.getAttribute( "type" );
			if ( jQuery.mobile.degradeInputs[ type ] ) {
				jQuery( this ).replaceWith(
					jQuery( "<div>" ).html( jQuery(this).clone() ).html()
						.replace( /type="([a-zA-Z]+)"/, "data-type='$1'" ) );
			}
		});
		
		// enchance form controls
		this.element
			.find( "[type='radio'], [type='checkbox']" )
			.checkboxradio();

		this.element
			.find( "button, [type='button'], [type='submit'], [type='reset'], [type='image']" )
			.not( ".ui-nojs" )
			.button();

		this.element
			.find( "input, textarea" )
			.not( "[type='radio'], [type='checkbox'], button, [type='button'], [type='submit'], [type='reset'], [type='image']" )
			.customTextInput();

		this.element
			.find( "input, select" )
			.filter( "[data-role='slider'], [data-type='range']" )
			.slider();

		this.element
			.find( "select:not([data-role='slider'])" )
			.customSelect();
	}
});

})( jQuery );


/*
* jQuery Mobile Framework : prototype for "fixHeaderFooter" plugin - on-demand positioning for headers,footers
* Copyright (c) jQuery Project
* Dual licensed under the MIT (MIT-LICENSE.txt) and GPL (GPL-LICENSE.txt) licenses.
* Note: Code is in draft form and is subject to change 
*/
(function($){
$.fn.fixHeaderFooter = function(options){
	if( !$.support.scrollTop ){ return $(this); }
	return $(this).each(function(){
		if( $(this).data('fullscreen') ){ $(this).addClass('ui-page-fullscreen'); }
		$(this).find('.ui-header[data-position="fixed"]').addClass('ui-header-fixed ui-fixed-inline fade'); //should be slidedown
		$(this).find('.ui-footer[data-position="fixed"]').addClass('ui-footer-fixed ui-fixed-inline fade'); //should be slideup		
	});
};				

//single controller for all showing,hiding,toggling		
$.fixedToolbars = (function(){
	if( !$.support.scrollTop ){ return; }
	var currentstate = 'inline',
		delayTimer,
		ignoreTargets = 'a,input,textarea,select,button,label,.ui-header-fixed,.ui-footer-fixed',
		toolbarSelector = '.ui-page-active .ui-header-fixed:first, .ui-page-active .ui-footer-fixed:not(.ui-footer-duplicate):last',
		stickyFooter, //for storing quick references to duplicate footers
		supportTouch = $.support.touch,
		touchStartEvent = supportTouch ? "touchstart" : "mousedown",
		touchStopEvent = supportTouch ? "touchend" : "mouseup",
		stateBefore = null,
		scrollTriggered = false;
		
	$(function() {
		$(document)
			.bind(touchStartEvent,function(event){
				if( $(event.target).closest(ignoreTargets).length ){ return; }
				stateBefore = currentstate;
				$.fixedToolbars.hide(true);
			})
			.bind('scrollstart',function(event){
				if( $(event.target).closest(ignoreTargets).length ){ return; } //because it could be a touchmove...
				scrollTriggered = true;
				if(stateBefore == null){ stateBefore = currentstate; }
				$.fixedToolbars.hide(true);
			})
			.bind(touchStopEvent,function(event){
				if( $(event.target).closest(ignoreTargets).length ){ return; }
				if( !scrollTriggered ){
					$.fixedToolbars.toggle(stateBefore);
					stateBefore = null;
				}
			})
			.bind('scrollstop',function(event){
				if( $(event.target).closest(ignoreTargets).length ){ return; }
				scrollTriggered = false;
				$.fixedToolbars.toggle( stateBefore == 'overlay' ? 'inline' : 'overlay' );
				stateBefore = null;
			});
		
		//function to return another footer already in the dom with the same data-id
		function findStickyFooter(el){
			var thisFooter = el.find('[data-role="footer"]');
			return jQuery( '.ui-footer[data-id="'+ thisFooter.data('id') +'"]:not(.ui-footer-duplicate)' ).not(thisFooter);
		}
		
		//before page is shown, check for duplicate footer
		$('.ui-page').live('pagebeforeshow', function(event, ui){
			stickyFooter = findStickyFooter( $(event.target) );
			if( stickyFooter.length ){
				//if the existing footer is the first of its kind, create a placeholder before stealing it 
				if( stickyFooter.parents('.ui-page:eq(0)').find('.ui-footer[data-id="'+ stickyFooter.data('id') +'"]').length == 1 ){
					stickyFooter.before( stickyFooter.clone().addClass('ui-footer-duplicate') );
				}
				$(event.target).find('[data-role="footer"]').addClass('ui-footer-duplicate');
				stickyFooter.appendTo($.pageContainer).css('top',0);
				setTop(stickyFooter);
			}
		});

		//after page is shown, append footer to new page
		$('.ui-page').live('pageshow', function(event, ui){
			if( stickyFooter && stickyFooter.length ){
				stickyFooter.appendTo(event.target).css('top',0);
			}
			$.fixedToolbars.show(true);
		});
		
	});
	
	function setTop(el){
		var fromTop = $(window).scrollTop(),
			thisTop = el.offset().top,
			thisCSStop = el.css('top') == 'auto' ? 0 : parseFloat(el.css('top')),
			screenHeight = window.innerHeight,
			thisHeight = el.outerHeight(),
			useRelative = el.parents('.ui-page:not(.ui-page-fullscreen)').length,
			relval;
		if( el.is('.ui-header-fixed') ){
			relval = fromTop - thisTop + thisCSStop;
			if( relval < thisTop){ relval = 0; }
			return el.css('top', ( useRelative ) ? relval : fromTop);
		}
		else{
			relval = -1 * (thisTop - (fromTop + screenHeight) + thisCSStop + thisHeight);
			if( relval > thisTop ){ relval = 0; }
			return el.css('top', ( useRelative ) ? relval : fromTop + screenHeight - thisHeight );
		}
	}

	//exposed methods
	return {
		show: function(immediately){
			currentstate = 'overlay';
			return $( toolbarSelector ).each(function(){
				var el = $(this),
					fromTop = $(window).scrollTop(),
					thisTop = el.offset().top,
					screenHeight = window.innerHeight,
					thisHeight = el.outerHeight(),
					alreadyVisible = (el.is('.ui-header-fixed') && fromTop <= thisTop + thisHeight) || (el.is('.ui-footer-fixed') && thisTop <= fromTop + screenHeight);	
				
				//add state class
				el.addClass('ui-fixed-overlay').removeClass('ui-fixed-inline');	
					
				if( !alreadyVisible && !immediately ){
					el.addClass('in').animationComplete(function(){
						el.removeClass('in');
					});
				}
				setTop(el);
			});	
		},
		hide: function(immediately){
			currentstate = 'inline';
			return $( toolbarSelector ).each(function(){
				var el = $(this);
				
				//add state class
				el.addClass('ui-fixed-inline').removeClass('ui-fixed-overlay');
				
				if(immediately){
					el.css('top',0);
				}
				else{
					if( el.css('top') !== 'auto' && parseFloat(el.css('top')) !== 0 ){
						var classes = 'out reverse';
						el.addClass(classes).animationComplete(function(){
							el.removeClass(classes);
							el.css('top',0);
						});	
					}
				}
			});
		},
		hideAfterDelay: function(){
			delayTimer = setTimeout(function(){
				$.fixedToolbars.hide();
			}, 3000);
		},
		toggle: function(from){
			if(from){ currentstate = from; }
			return (currentstate == 'overlay') ? $.fixedToolbars.hide() : $.fixedToolbars.show();
		}
	};
})();

})(jQuery);

/*
* jQuery Mobile Framework : "customCheckboxRadio" plugin (based on code from Filament Group,Inc)
* Copyright (c) jQuery Project
* Dual licensed under the MIT (MIT-LICENSE.txt) and GPL (GPL-LICENSE.txt) licenses.
* Note: Code is in draft form and is subject to change 
*/  
(function ( $ ) {
$.widget( "mobile.checkboxradio", $.mobile.widget, {
	options: {
		theme: undefined,
		icon: undefined
	},
	_create: function(){
		var input = this.element,
			label = jQuery("label[for='" + input.attr( "id" ) + "']"),
			inputtype = input.attr( "type" ),
			checkedicon = "ui-icon-" + inputtype + "-on",
			uncheckedicon = "ui-icon-" + inputtype + "-off";

		if ( inputtype != "checkbox" && inputtype != "radio" ) { return; }
						
		label
			.buttonMarkup({
				iconpos: this.options.icon,
				theme: this.options.theme,
				icon: this.options.icon ? uncheckedicon : ( this.element.parents( "[data-type='horizontal']" ).length ? undefined : uncheckedicon ),
				shadow: false
			});
		
		// wrap the input + label in a div 
		input
			.add( label )
			.wrapAll( "<div class='ui-" + inputtype +"'></div>" );
		
		label.bind({
			mouseover: function() {
				if( $(this).parent().is('.ui-disabled') ){ return false; }
			},
			
			mousedown: function() {
				if( $(this).parent().is('.ui-disabled') ){ return false; }
				label.data( "state", input.attr( "checked" ) );
			},
			
			click: function() {
				setTimeout(function() {
					if ( input.attr( "checked" ) === label.data( "state" ) ) {
						input.trigger( "click" );
					}
				}, 1);
			}
		});
		
		input
			.bind({

				click: function() {
					jQuery( "input[name='" + input.attr( "name" ) + "']" ).checkboxradio( "refresh" );
				},

				focus: function() { 
					label.addClass( "ui-focus" ); 
				},

				blur: function() {
					label.removeClass( "ui-focus" );
				}
			});
			
		this.refresh();
		
	},
	
	refresh: function( ){
		var input = this.element,
			label = jQuery("label[for='" + input.attr( "id" ) + "']"),
			inputtype = input.attr( "type" ),
			icon = label.find( ".ui-icon" ),
			checkedicon = "ui-icon-" + inputtype + "-on",
			uncheckedicon = "ui-icon-" + inputtype + "-off";
		
		if ( input[0].checked ) {
			label.addClass( "ui-btn-active" );
			icon.addClass( checkedicon );
			icon.removeClass( uncheckedicon );

		} else {
			label.removeClass( "ui-btn-active" ); 
			icon.removeClass( checkedicon );
			icon.addClass( uncheckedicon );
		}
		
		if( input.is( ":disabled" ) ){
			this.disable();
		}
		else {
			this.enable();
		}
	},
	
	disable: function(){
		this.element.attr("disabled",true).parent().addClass("ui-disabled");
	},
	
	enable: function(){
		this.element.attr("disabled",false).parent().removeClass("ui-disabled");
	}
});
})( jQuery );


/*
* jQuery Mobile Framework : "customTextInput" plugin for text inputs, textareas (based on code from Filament Group,Inc)
* Copyright (c) jQuery Project
* Dual licensed under the MIT (MIT-LICENSE.txt) and GPL (GPL-LICENSE.txt) licenses.
* Note: Code is in draft form and is subject to change 
*/
(function($){
jQuery.fn.customTextInput = function(options){
	return $(this).each(function(){	
		var input = $(this);
		
		var o = $.extend({
			search: input.is('[type="search"],[data-type="search"]'), 
			theme: input.data("theme") || "c"
		}, options);
		
		$('label[for='+input.attr('id')+']').addClass('ui-input-text');
		
		input.addClass('ui-input-text ui-body-'+ o.theme);
		
		var focusedEl = input;
		
		//"search" input widget
		if(o.search){
			focusedEl = input.wrap('<div class="ui-input-search ui-shadow-inset ui-btn-corner-all ui-body-c ui-btn-shadow ui-icon-search"></div>').parent();
			var clearbtn = $('<a href="#" class="ui-input-clear" title="clear text">clear text</a>')
				.click(function(){
					input.val('').focus();
					input.trigger('change'); 
					clearbtn.addClass('ui-input-clear-hidden');
					return false;
				})
				.appendTo(focusedEl)
				.buttonMarkup({icon: 'delete', iconpos: 'notext', corners:true, shadow:true});
			
			function toggleClear(){
				if(input.val() == ''){
					clearbtn.addClass('ui-input-clear-hidden');
				}
				else{
					clearbtn.removeClass('ui-input-clear-hidden');
				}
			}
			
			toggleClear();
			input.keyup(toggleClear);	
		}
		else{
			input.addClass('ui-corner-all ui-shadow-inset');
		}
				
		input
			.focus(function(){
				focusedEl.addClass('ui-focus');
			})
			.blur(function(){
				focusedEl.removeClass('ui-focus');
			});	
			
		//autogrow
		if ( input.is('textarea') ) {
			var extraLineHeight = 15,
				keyupTimeoutBuffer = 100,
				keyup = function() {
					var scrollHeight = input[0].scrollHeight,
						clientHeight = input[0].clientHeight;
					if ( clientHeight < scrollHeight ) {
						input.css({ height: (scrollHeight + extraLineHeight) });
					}
				},
				keyupTimeout;
			input.keyup(function() {
				clearTimeout( keyupTimeout );
				keyupTimeout = setTimeout( keyup, keyupTimeoutBuffer );
			});
		}
	});
};
})(jQuery);


/*
* jQuery Mobile Framework : "customSelect" plugin (based on code from Filament Group,Inc)
* Copyright (c) jQuery Project
* Dual licensed under the MIT (MIT-LICENSE.txt) and GPL (GPL-LICENSE.txt) licenses.
* Note: Code is in draft form and is subject to change 
*/  
(function($){
$.fn.customSelect = function(options){
	return $(this).each(function(){	
		var select = $(this)
						.attr( "tabindex", "-1" )
						.wrap( "<div class='ui-select'>" ),
			selectID = select.attr( "id" ),
			label = $( "label[for="+ selectID +"]" )
						.addClass( "ui-select" ),
				
		//extendable options
		o = $.extend({
			chooseText: label.text(),
			theme: select.data("theme")
		}, options),

		buttonId = selectID + "-button",
		menuId = selectID + "-menu",
		thisPage = select.closest( ".ui-page" ),
		menuType,
		currScroll,		
		button = $( "<a>", { 
				"href": "#",
				"role": "button",
				"id": buttonId,
				"aria-haspopup": "true",
				"aria-owns": menuId 
			})
			.text( $( this.options.item(this.selectedIndex) ).text() )
			.insertBefore( select )
			.buttonMarkup({
				iconpos: 'right',
				icon: 'arrow-d',
				theme: o.theme
			}),
		menuPage = $( "<div data-role='dialog' data-theme='a'>" +
					"<div data-role='header' data-theme='b'>" +
						"<div class='ui-title'>" + o.chooseText + "</div>"+
					"</div>"+
					"<div data-role='content'></div>"+
				"</div>" )
				.appendTo( $.pageContainer )
				.page(),	
		menuPageContent = menuPage.find( ".ui-content" ),			
		screen = $( "<div>", {
						"class": "ui-listbox-screen ui-overlay ui-screen-hidden fade"
				})
				.appendTo( thisPage ),					
		listbox = $( "<div>", { "class": "ui-listbox ui-listbox-hidden ui-body-a ui-overlay-shadow ui-corner-all pop"} )
				.insertAfter(screen),
		list = $( "<ul>", { 
				"class": "ui-listbox-list", 
				"id": menuId, 
				"role": "listbox", 
				"aria-labelledby": buttonId
			})
			.appendTo( listbox );
			
		//populate menu
		select.find( "option" ).each(function( i ){
			var selected = (select[0].selectedIndex == i),
				anchor = $("<a>", { 
							"aria-selected": selected, 
							"role": "option", 
							"href": "#"
						})
						.text( $(this).text() );
			
			$( "<li>", {
					"class": selected ? "ui-btn-active" : '', 
					"data-icon": "checkbox-on"
				})
				.append( anchor )
				.appendTo( list );
		});
		
		//now populated, create listview
		list.listview();
		
		
		
		function showmenu(){
			var menuHeight = list.outerHeight();
			currScroll = [ $(window).scrollLeft(), $(window).scrollTop() ];
			
			if( menuHeight > window.innerHeight - 80 || !$.support.scrollTop ){
				menuType = "page";		
				menuPageContent.append( list );
				$.changePage(menuPage, undefined);
			}
			else {
				menuType = "overlay";
				
				screen
					.height( $(document).height() )
					.removeClass('ui-screen-hidden');
					
				listbox
					.append( list )
					.removeClass( "ui-listbox-hidden" )
					.css({
						top: $(window).scrollTop() + (window.innerHeight/2), 
						"margin-top": -menuHeight/2,
						left: window.innerWidth/2,
						"margin-left": -1* listbox.outerWidth() / 2
					})
					.addClass("in");
			}
		};
		
		function hidemenu(){
			if(menuType == "page"){			
				$.changePage([menuPage,thisPage], undefined, true);
			}
			else{
				screen.addClass( "ui-screen-hidden" );
				listbox.addClass( "ui-listbox-hidden" ).removeAttr( "style" ).removeClass("in");
			}
		};
		
		//page show/hide events
		menuPage
			.bind("pageshow", function(){
				list.find( ".ui-btn-active" ).focus();
				return false;
			})
			.bind("pagehide", function(){
				window.scrollTo(currScroll[0], currScroll[1]);
				select.focus();
				listbox.append( list ).removeAttr('style');
				return false;
			});
			

		//select properties,events
		select
			.change(function(){ 
				var $el = select.get(0);
				button.find( ".ui-btn-text" ).text( $($el.options.item($el.selectedIndex)).text() ); 
			})
			.focus(function(){
				$(this).blur();
				button.focus();
			});		
		
		//button events
		button.mousedown(function(event){
				showmenu();
				return false;
			});
		
		//apply click events for items
		list
			.find("li")
			.mousedown(function(){
				//deselect active
				list.find( "li" )
					.removeClass( "ui-btn-active" )
					.children(0)
					.attr( "aria-selected", "false");
					
				//select this one	
				$(this)
					.addClass( "ui-btn-active" )
					.find( "a" )
					.attr( "aria-selected", "true");
				
				//update select	
				var newIndex = list.find( "li" ).index( this ),
					prevIndex = select[0].selectedIndex;

				select[0].selectedIndex = newIndex;
				
				//trigger change event
				if(newIndex !== prevIndex){ 
					select.trigger( "change" ); 
				}
				
				//hide custom select
				hidemenu();
				return false;
			});	
	
		//hide on outside click
		screen.click(function(){
			hidemenu();
			return false;
		});	
	});
};

})(jQuery);
	


/*
* jQuery Mobile Framework : sample plugin for making button-like links
* Copyright (c) jQuery Project
* Dual licensed under the MIT (MIT-LICENSE.txt) and GPL (GPL-LICENSE.txt) licenses.
* Note: Code is in draft form and is subject to change 
*/ 
(function( jQuery ) {

jQuery.fn.buttonMarkup = function( options ){
	return this.each( function() {
		var el = jQuery( this ),
		    o = jQuery.extend( {}, jQuery.fn.buttonMarkup.defaults, el.data(), options),

			// Classes Defined
			buttonClass,
			innerClass = "ui-btn-inner",
			iconClass;

		if ( attachEvents ) {
			attachEvents();
		}

		// if not, try to find closest theme container
		if ( !o.theme ) {
			var themedParent = el.closest("[class*='ui-bar-'],[class*='ui-body-']"); 
			o.theme = themedParent.length ?
				/ui-(bar|body)-([a-z])/.exec( themedParent.attr("class") )[2] :
				"c";
		}

		buttonClass = "ui-btn ui-btn-up-" + o.theme;
		
		if ( o.inline ) {
			buttonClass += " ui-btn-inline";
		}
		
		if ( o.icon ) {
			o.icon = "ui-icon-" + o.icon;
			o.iconpos = o.iconpos || "left";

			iconClass = "ui-icon " + o.icon;

			if ( o.shadow ) {
				iconClass += " ui-icon-shadow"
			}
		}

		if ( o.iconpos ) {
			buttonClass += " ui-btn-icon-" + o.iconpos;
			
			if ( o.iconpos == "notext" && !el.attr("title") ) {
				el.attr( "title", el.text() );
			}
		}
		
		if ( o.corners ) { 
			buttonClass += " ui-btn-corner-all";
			innerClass += " ui-btn-corner-all";
		}
		
		if ( o.shadow ) {
			buttonClass += " ui-shadow";
		}
		
		el
			.attr( "data-theme", o.theme )
			.addClass( buttonClass );

		var wrap = ("<D class='" + innerClass + "'><D class='ui-btn-text'></D>" +
			( o.icon ? "<span class='" + iconClass + "'></span>" : "" ) +
			"</D>").replace(/D/g, o.wrapperEls);

		el.wrapInner( wrap );
	});		
};

jQuery.fn.buttonMarkup.defaults = {
	corners: true,
	shadow: true,
	iconshadow: true,
	wrapperEls: "span"
};

var attachEvents = function() {
	jQuery(".ui-btn").live({
		mousedown: function() {
			var theme = jQuery(this).attr( "data-theme" );
			jQuery(this).removeClass( "ui-btn-up-" + theme ).addClass( "ui-btn-down-" + theme );
		},
		mouseup: function() {
			var theme = jQuery(this).attr( "data-theme" );
			jQuery(this).removeClass( "ui-btn-down-" + theme ).addClass( "ui-btn-up-" + theme );
		},
		"mouseover focus": function() {
			var theme = jQuery(this).attr( "data-theme" );
			jQuery(this).removeClass( "ui-btn-up-" + theme ).addClass( "ui-btn-hover-" + theme );
		},
		"mouseout blur": function() {
			var theme = jQuery(this).attr( "data-theme" );
			jQuery(this).removeClass( "ui-btn-hover-" + theme ).addClass( "ui-btn-up-" + theme );
		}
	});

	attachEvents = null;
};

})(jQuery);


/*
* jQuery Mobile Framework : sample plugin for making button links that proxy to native input/buttons
* Copyright (c) jQuery Project
* Dual licensed under the MIT (MIT-LICENSE.txt) and GPL (GPL-LICENSE.txt) licenses.
* Note: Code is in draft form and is subject to change 
*/ 
(function ( $ ) {
$.widget( "mobile.button", $.mobile.widget, {
	options: {},
	_create: function(){
		var $el = this.element,
			type = $el.attr('type');
			$el
				.addClass('ui-btn-hidden')
				.attr('tabindex','-1');
		
		//add ARIA role
		$( "<a>", { 
				"href": "#",
				"role": "button",
				"aria-label": $el.attr( "type" ) 
			} )
			.text( $el.text() || $el.val() )
			.insertBefore( $el )
			.click(function(){
				if( type == "submit" ){
					$(this).closest('form').submit();
				}
				else{
					$el.click(); 
				}

				return false;
			})
			.buttonMarkup({
				theme: $el.data("theme"), 
				icon: $el.data("icon"),
				iconpos: $el.data("iconpos"),
				inline: $el.data("inline"),
				corners: $el.data("corners"),
				shadow: $el.data("shadow"),
				iconshadow: $el.data("icon-shadow")
			});
	}
});
})( jQuery );

/*
* jQuery Mobile Framework : "slider" plugin (based on code from Filament Group,Inc)
* Copyright (c) jQuery Project
* Dual licensed under the MIT (MIT-LICENSE.txt) and GPL (GPL-LICENSE.txt) licenses.
* Note: Code is in draft form and is subject to change 
*/  
(function($){
$.fn.slider = function(options){
	return this.each(function(){	
		var control = $(this),
			themedParent = control.parents('[class*=ui-bar-],[class*=ui-body-]').eq(0),
			
			o = $.extend({
				trackTheme: (themedParent.length ? themedParent.attr('class').match(/ui-(bar|body)-([a-z])/)[2] : 'c'),
				theme: control.data("theme") || (themedParent.length ? themedParent.attr('class').match(/ui-(bar|body)-([a-z])/)[2] : 'c')
			},options),
			
			cType = control[0].nodeName.toLowerCase(),
			selectClass = (cType == 'select') ? 'ui-slider-switch' : '',
			controlID = control.attr('id'),
			labelID = controlID + '-label',
			label = $('[for='+ controlID +']').attr('id',labelID),
			val = (cType == 'input') ? control.val() : control[0].selectedIndex,
			min = (cType == 'input') ? parseFloat(control.attr('min')) : 0,
			max = (cType == 'input') ? parseFloat(control.attr('max')) : control.find('option').length-1,
			percent = val / (max - min) * 100,
			snappedPercent = percent,
			slider = $('<div class="ui-slider '+ selectClass +' ui-btn-down-'+o.trackTheme+' ui-btn-corner-all" role="application"></div>'),
			handle = $('<a href="#" class="ui-slider-handle"></a>')
				.appendTo(slider)
				.buttonMarkup({corners: true, theme: o.theme, shadow: true})
				.attr({
					'role': 'slider',
					'aria-valuemin': min,
					'aria-valuemax': max,
					'aria-valuenow': val,
					'aria-valuetext': val,
					'title': val,
					'aria-labelledby': labelID
				}),
			dragging = false;
			
		if(cType == 'select'){
			slider.wrapInner('<div class="ui-slider-inneroffset"></div>');
			var options = control.find('option');
				
			control.find('option').each(function(i){
				var side = (i==0) ?'b':'a',
					corners = (i==0) ? 'right' :'left',
					theme = (i==0) ? ' ui-btn-down-' + o.trackTheme :' ui-btn-active';
				$('<div class="ui-slider-labelbg ui-slider-labelbg-'+ side + theme +' ui-btn-corner-'+ corners+'"></div>').prependTo(slider);	
				$('<span class="ui-slider-label ui-slider-label-'+ side + theme +' ui-btn-corner-'+ corners+'" role="img">'+$(this).text()+'</span>').prependTo(handle);
			});
			
		}	
		
		function updateControl(val){
			if(cType == 'input'){ 
				control.val(val); 
			}
			else { 
				control[0].selectedIndex = val;
			}
			control.trigger("change");
		}
			
		function slideUpdate(event, val){
			if (val){
				percent = parseFloat(val) / (max - min) * 100;
			} else {
				var data = event.originalEvent.touches ? event.originalEvent.touches[ 0 ] : event,
					// a slight tolerance helped get to the ends of the slider
					tol = 4;
				if( !dragging 
						|| data.pageX < slider.offset().left - tol 
						|| data.pageX > slider.offset().left + slider.width() + tol ){ 
					return; 
				}
				percent = Math.round(((data.pageX - slider.offset().left) / slider.width() ) * 100);
			}
			if( percent < 0 ) { percent = 0; }
			if( percent > 100 ) { percent = 100; }
			var newval = Math.round( (percent/100) * max );
			if( newval < min ) { newval = min; }
			if( newval > max ) { newval = max; }
			//flip the stack of the bg colors
			if(percent > 60 && cType == 'select'){ 
				
			}
			snappedPercent = Math.round( newval / max * 100 );
			handle.css('left', percent + '%');
			handle.attr({
					'aria-valuenow': (cType == 'input') ? newval : control.find('option').eq(newval).attr('value'),
					'aria-valuetext': (cType == 'input') ? newval : control.find('option').eq(newval).text(),
					'title': newval
				});
			updateSwitchClass(newval);
			updateControl(newval);
		}
		
		function updateSwitchClass(val){
			if(cType == 'input'){return;}
			if(val == 0){ slider.addClass('ui-slider-switch-a').removeClass('ui-slider-switch-b'); }
			else { slider.addClass('ui-slider-switch-b').removeClass('ui-slider-switch-a'); }
		}
		
		updateSwitchClass(val);
		
		function updateSnap(){
			if(cType == 'select'){
				handle
					.addClass('ui-slider-handle-snapping')
					.css('left', snappedPercent + '%')
					.animationComplete(function(){
						handle.removeClass('ui-slider-handle-snapping');
					});
			}
		}
		
		label.addClass('ui-slider');
		
		control
			.addClass((cType == 'input') ? 'ui-slider-input' : 'ui-slider-switch')
			.keyup(function(e){
				slideUpdate(e, $(this).val() );
			});
					
		slider
			.bind($.support.touch ? "touchstart" : "mousedown", function(event){
				dragging = true;
				if((cType == 'select')){
					val = control[0].selectedIndex;
				}
				slideUpdate(event);
				return false;
			})
			.bind($.support.touch ? "touchmove" : "mousemove", function(event){
				slideUpdate(event);
				return false;
			})
			.bind($.support.touch ? "touchend" : "mouseup", function(event){
				dragging = false;
				if(cType == 'select'){
					if(val == control[0].selectedIndex){
						val = val == 0 ? 1 : 0;
						//tap occurred, but value didn't change. flip it!
						slideUpdate(event,val);
					}
					updateSnap();
				}
				return false;
			})
			.insertAfter(control);
		
		handle
			.css('left', percent + '%')
			.bind('click', function(e){ return false; });	
	});
};
})(jQuery);
	


/*
* jQuery Mobile Framework : "collapsible" plugin (based on code from Filament Group,Inc)
* Copyright (c) jQuery Project
* Dual licensed under the MIT (MIT-LICENSE.txt) and GPL (GPL-LICENSE.txt) licenses.
* Note: Code is in draft form and is subject to change 
*/ 
(function($){
$.fn.collapsible = function(options){
	return $(this).each(function(){
		var o = $.extend({
			expandCueText: ' click to expand contents',
			collapseCueText: ' click to collapse contents',
			collapsed: $(this).is('[data-state="collapsed"]'),
			heading: '>h1,>h2,>h3,>h4,>h5,>h6,>legend',
			theme: $(this).data('theme'),
			iconTheme: $(this).data('icontheme') || 'd'
		},options);

		//define
		var collapsibleContain = $(this).addClass('ui-collapsible-contain'),
			collapsibleHeading = $(this).find(o.heading).eq(0),
			collapsibleContent = collapsibleContain.wrapInner('<div class="ui-collapsible-content"></div>').find('.ui-collapsible-content'),
			collapsibleParent = $(this).closest('[data-role=collapsible-set]').addClass('ui-collapsible-set');				
		
		//replace collapsibleHeading if it's a legend	
		if(collapsibleHeading.is('legend')){
			collapsibleHeading = $('<div role="heading">'+ collapsibleHeading.html() +'</div>').insertBefore(collapsibleHeading);
			collapsibleHeading.next().remove();
		}	
		
		//drop heading in before content
		collapsibleHeading.insertBefore(collapsibleContent);
		
		//modify markup & attributes
		collapsibleHeading.addClass('ui-collapsible-heading')
			.append('<span class="ui-collapsible-heading-status"></span>')
			.wrapInner('<a href="#" class="ui-collapsible-heading-toggle"></a>')
			.find('a:eq(0)')
			.buttonMarkup({
				shadow: !!!collapsibleParent.length,
				corners:false,
				iconPos: 'left',
				icon: 'plus',
				theme: o.theme
			})
			.find('.ui-icon')
			.removeAttr('class')
			.buttonMarkup({
				shadow: true,
				corners:true,
				iconPos: 'notext',
				icon: 'plus',
				theme: o.iconTheme
			});
			
			if( !collapsibleParent.length ){
				collapsibleHeading
					.find('a:eq(0)')	
					.addClass('ui-corner-all')
						.find('.ui-btn-inner')
						.addClass('ui-corner-all');
			}
			else {
				if( collapsibleContain.data('collapsible-last') ){
					collapsibleHeading
						.find('a:eq(0), .ui-btn-inner')	
							.addClass('ui-corner-bottom');
				}					
			}
			
		
		//events
		collapsibleContain	
			.bind('collapse', function(event){
				if( !event.isDefaultPrevented() ){
					event.preventDefault();
					collapsibleHeading
						.addClass('ui-collapsible-heading-collapsed')
						.find('.ui-collapsible-heading-status').text(o.expandCueText);
					
					collapsibleHeading.find('.ui-icon').removeClass('ui-icon-minus').addClass('ui-icon-plus');	
					collapsibleContent.addClass('ui-collapsible-content-collapsed').attr('aria-hidden',true);
					
					if( collapsibleContain.data('collapsible-last') ){
						collapsibleHeading
							.find('a:eq(0), .ui-btn-inner')
							.addClass('ui-corner-bottom');
					}
				}						
				
			})
			.bind('expand', function(event){
				if( !event.isDefaultPrevented() ){
					event.preventDefault();
					collapsibleHeading
						.removeClass('ui-collapsible-heading-collapsed')
						.find('.ui-collapsible-heading-status').text(o.collapseCueText);
					
					collapsibleHeading.find('.ui-icon').removeClass('ui-icon-plus').addClass('ui-icon-minus');	
					collapsibleContent.removeClass('ui-collapsible-content-collapsed').attr('aria-hidden',false);
					
					if( collapsibleContain.data('collapsible-last') ){
						collapsibleHeading
							.find('a:eq(0), .ui-btn-inner')
							.removeClass('ui-corner-bottom');
					}
					
				}
			})
			.trigger(o.collapsed ? 'collapse' : 'expand');
			
		
		//close others in a set
		if( collapsibleParent.length && !collapsibleParent.data("collapsiblebound") ){
			collapsibleParent
				.data("collapsiblebound", true)
				.bind("expand", function( event ){
					$(this).find( ".ui-collapsible-contain" )
						.not( $(event.target).closest( ".ui-collapsible-contain" ) )
						.not( "> .ui-collapsible-contain .ui-collapsible-contain" )
						.trigger( "collapse" );
				})
			var set = collapsibleParent.find('[data-role=collapsible]')
					
			set.first()
				.find('a:eq(0)')	
				.addClass('ui-corner-top')
					.find('.ui-btn-inner')
					.addClass('ui-corner-top');
					
			set.last().data('collapsible-last', true)	
		}
					
		collapsibleHeading.click(function(){ 
			if( collapsibleHeading.is('.ui-collapsible-heading-collapsed') ){
				collapsibleContain.trigger('expand'); 
			}	
			else {
				collapsibleContain.trigger('collapse'); 
			}
			return false;
		});
			
	});	
};	
})(jQuery);

/*
* jQuery Mobile Framework : prototype for "controlgroup" plugin - corner-rounding for groups of buttons, checks, radios, etc
* Copyright (c) jQuery Project
* Dual licensed under the MIT (MIT-LICENSE.txt) and GPL (GPL-LICENSE.txt) licenses.
* Note: Code is in draft form and is subject to change 
*/
(function($){
$.fn.controlgroup = function(options){
		
	return $(this).each(function(){
		var o = $.extend({
			direction: $( this ).data( "type" ) || "vertical",
			shadow: false
		},options);
		var groupheading = $(this).find('>legend'),
			flCorners = o.direction == 'horizontal' ? ['ui-corner-left', 'ui-corner-right'] : ['ui-corner-top', 'ui-corner-bottom'],
			type = $(this).find('input:eq(0)').attr('type');
		
		//replace legend with more stylable replacement div	
		if( groupheading.length ){
			$(this).wrapInner('<div class="ui-controlgroup-controls"></div>');	
			$('<div role="heading" class="ui-controlgroup-label">'+ groupheading.html() +'</div>').insertBefore( $(this).children(0) );	
			groupheading.remove();	
		}

		$(this).addClass('ui-corner-all ui-controlgroup ui-controlgroup-'+o.direction);
		
		function flipClasses(els){
			els
				.removeClass('ui-btn-corner-all ui-shadow')
				.eq(0).addClass(flCorners[0])
				.end()
				.filter(':last').addClass(flCorners[1]).addClass('ui-controlgroup-last');
		}
		flipClasses($(this).find('.ui-btn'));
		flipClasses($(this).find('.ui-btn-inner'));
		if(o.shadow){
			$(this).addClass('ui-shadow');
		}
	});	
};
})(jQuery);

/*
* jQuery Mobile Framework : prototype for "fieldcontain" plugin - simple class additions to make form row separators
* Copyright (c) jQuery Project
* Dual licensed under the MIT (MIT-LICENSE.txt) and GPL (GPL-LICENSE.txt) licenses.
* Note: Code is in draft form and is subject to change 
*/
(function($){
$.fn.fieldcontain = function(options){
	var o = $.extend({
		theme: 'c'
	},options);
	return $(this).addClass('ui-field-contain ui-body ui-br');
};
})(jQuery);

/*
* jQuery Mobile Framework : listview plugin
* Copyright (c) jQuery Project
* Dual licensed under the MIT (MIT-LICENSE.txt) and GPL (GPL-LICENSE.txt) licenses.
* Note: Code is in draft form and is subject to change 
*/
(function( jQuery ) {

jQuery.widget( "mobile.listview", jQuery.mobile.widget, {
	options: {
		theme: "c",
		countTheme: "c",
		headerTheme: "b",
		dividerTheme: "b",
		splitIcon: "arrow-r",
		splitTheme: "b",
		inset: false
	},
	
	_create: function() {
		var $list = this.element,
			o = this.options;

		// create listview markup 
		$list
			.addClass( "ui-listview" )
			.attr( "role", "listbox" )
		
		if ( o.inset ) {
			$list.addClass( "ui-listview-inset ui-corner-all ui-shadow" );
		}	

		$list.delegate( ".ui-li", "focusin", function() {
			jQuery( this ).attr( "tabindex", "0" );
		});

		this._itemApply( $list, $list );
		
		this.refresh( true );
	
		//keyboard events for menu items
		$list.keydown(function( e ) {
			var target = jQuery( e.target ),
				li = target.closest( "li" );

			// switch logic based on which key was pressed
			switch ( e.keyCode ) {
				// up or left arrow keys
				case 38:
					var prev = li.prev();

					// if there's a previous option, focus it
					if ( prev.length ) {
						target
							.blur()
							.attr( "tabindex", "-1" );

						prev.find( "a" ).first().focus();
					}	

					return false;
				break;

				// down or right arrow keys
				case 40:
					var next = li.next();
				
					// if there's a next option, focus it
					if ( next.length ) {
						target
							.blur()
							.attr( "tabindex", "-1" );
						
						next.find( "a" ).first().focus();
					}	

					return false;
				break;

				case 39:
					var a = li.find( "a.ui-li-link-alt" );

					if ( a.length ) {
						target.blur();
						a.first().focus();
					}

					return false;
				break;

				case 37:
					var a = li.find( "a.ui-link-inherit" );

					if ( a.length ) {
						target.blur();
						a.first().focus();
					}

					return false;
				break;

				// if enter or space is pressed, trigger click
				case 13:
				case 32:
					 target.trigger( "click" );

					 return false;
				break;	
			}
		});	

		// tapping the whole LI triggers click on the first link
		$list.delegate( "li", "click", function(event) {
			if ( !jQuery( event.target ).closest( "a" ).length ) {
				jQuery( this ).find( "a" ).first().trigger( "click" );
				return false;
			}
		});
	},

	_itemApply: function( $list, item ) {
		// TODO class has to be defined in markup
		item.find( ".ui-li-count" )
			.addClass( "ui-btn-up-" + ($list.data( "counttheme" ) || this.options.countTheme) + " ui-btn-corner-all" );

		item.find( "h1, h2, h3, h4, h5, h6" ).addClass( "ui-li-heading" );

		item.find( "p, ul, dl" ).addClass( "ui-li-desc" );

		item.find( "img" ).addClass( "ui-li-thumb" ).each(function() {
			jQuery( this ).closest( "li" )
				.addClass( jQuery(this).is( ".ui-li-icon" ) ? "ui-li-has-icon" : "ui-li-has-thumb" );
		});

		var aside = item.find( ".ui-li-aside" );

		if ( aside.length ) {
            aside.each(function(i, el) {
			    $(el).prependTo( $(el).parent() ); //shift aside to front for css float
            });
		}

		if ( jQuery.support.cssPseudoElement || !jQuery.nodeName( item[0], "ol" ) ) {
			return;
		}
	},
	
	refresh: function( create ) {
		this._createSubPages();
		
		var o = this.options,
			$list = this.element,
			self = this,
			dividertheme = $list.data( "dividertheme" ) || o.dividerTheme,
			li = $list.children( "li" ),
			counter = jQuery.support.cssPseudoElement || !jQuery.nodeName( $list[0], "ol" ) ? 0 : 1;

		if ( counter ) {
			$list.find( ".ui-li-dec" ).remove();
		}

		li.attr({ "role": "option", "tabindex": "-1" });

		li.first().attr( "tabindex", "0" );

		li.each(function( pos ) {
			var item = jQuery( this ),
				itemClass = "ui-li";

			// If we're creating the element, we update it regardless
			if ( !create && item.hasClass( "ui-li" ) ) {
				return;
			}

			var a = item.find( "a" );
				
			if ( a.length ) {	
				item
					.buttonMarkup({
						wrapperEls: "div",
						shadow: false,
						corners: false,
						iconpos: "right",
						icon: item.data("icon") || "arrow-r",
						theme: o.theme
					});

				a.first().addClass( "ui-link-inherit" );

				if ( a.length > 1 ) {
					itemClass += " ui-li-has-alt";

					var last = a.last();
					
					last
						.attr( "title", last.text() )
						.addClass( "ui-li-link-alt" )
						.empty()
						.buttonMarkup({
							shadow: false,
							corners: false,
							theme: o.theme,
							icon: false,
							iconpos: false
						})
						.find( ".ui-btn-inner" )
							.append( jQuery( "<span>" ).buttonMarkup({
								shadow: true,
								corners: true,
								theme: $list.data( "splittheme" ) || last.data( "theme" ) || o.splitTheme,
								iconpos: "notext",
								icon: $list.data( "spliticon" ) || last.data( "icon" ) ||  o.splitIcon
							} ) );
				}

			} else if ( item.data( "role" ) === "list-divider" ) {
				itemClass += " ui-li-divider ui-btn ui-bar-" + dividertheme;
				item.attr( "role", "heading" );

				//reset counter when a divider heading is encountered
				if ( counter ) {
					counter = 1;
				}

			} else {
				itemClass += " ui-li-static ui-btn-up-" + o.theme;
			}
				
			if ( pos === 0 ) {
				item.find( "img" ).addClass( "ui-corner-tl" );

				if ( o.inset ) {
					itemClass += " ui-corner-top";

					item
						.add( item.find( ".ui-btn-inner" ) )
						.find( ".ui-li-link-alt" )
							.addClass( "ui-corner-tr" )
						.end()
						.find( ".ui-li-thumb" )
							.addClass( "ui-corner-tl" );
				}

			} else if ( pos === li.length - 1 ) {
				item.find( "img" ).addClass( "ui-corner-bl" );

				if ( o.inset ) {
					itemClass += " ui-corner-bottom";

					item
						.add( item.find( ".ui-btn-inner" ) )
						.find( ".ui-li-link-alt" )
							.addClass( "ui-corner-br" )
						.end()
						.find( ".ui-li-thumb" )
							.addClass( "ui-corner-bl" );
				}
			}

			if ( counter && itemClass.indexOf( "ui-li-divider" ) < 0 ) {
				item
					.find( ".ui-link-inherit" ).first()
					.addClass( "ui-li-jsnumbering" )
					.prepend( "<span class='ui-li-dec'>" + (counter++) + ". </span>" );
			}

			item.addClass( itemClass );

			if ( !create ) {
				self._itemApply( $list, item );
			}
		});
	},
	
	_createSubPages: function() {
		var parentList = this.element,
			parentPage = parentList.closest( ".ui-page" ),
			parentId = parentPage.attr( "id" ),
			o = this.options,
			persistentFooterID = parentPage.find( "[data-role='footer']" ).data( "id" );

		jQuery( parentList.find( "ul, ol" ).toArray().reverse() ).each(function( i ) {
			var list = jQuery( this ),
				parent = list.parent(),
				title = parent.contents()[ 0 ].nodeValue.split("\n")[0],
				id = parentId + "&" + $.mobile.subPageUrlKey + "=" + $.mobile.idStringEscape(title + " " + i),
				theme = list.data( "theme" ) || o.theme,
				countTheme = list.data( "counttheme" ) || parentList.data( "counttheme" ) || o.countTheme,
				newPage = list.wrap( "<div data-role='page'><div data-role='content'></div></div>" )
							.parent()
								.before( "<div data-role='header' data-theme='" + o.headerTheme + "'><div class='ui-title'>" + title + "</div></div>" )
								.after( persistentFooterID ? $( "<div>", { "data-role": "footer", "data-id": persistentFooterID, "class": "ui-footer-duplicate" } ) : "" )
								.parent()
									.attr({
										id: id,
										"data-theme": theme,
										"data-count-theme": countTheme
									})
									.appendTo( jQuery.pageContainer );
				
				
				
				newPage.page();		
			
			parent.html( "<a href='#" + id + "'>" + title + "</a>" );
		}).listview();
	}
});

})( jQuery );


(function( $ ) {

$.mobile.listview.prototype.options.filter = false;

$( "[data-role='listview']" ).live( "listviewcreate", function() {
	var list = $( this ),
		listview = list.data( "listview" );
	if ( !listview.options.filter ) {
		return;
	}

	var wrapper = $( "<form>", { "class": "ui-listview-filter ui-bar-c", "role": "search" } ),
		
		search = $( "<input>", {
				placeholder: "Filter results...",
				"data-type": "search"
			})
			.bind( "keyup change", function() {
				var val = this.value.toLowerCase();;
				list.children().show();
				if ( val ) {
					list.children().filter(function() {
						return $( this ).text().toLowerCase().indexOf( val ) === -1;
					}).hide();
				}
				
				//listview._numberItems();
			})
			.appendTo( wrapper )
			.customTextInput();
	
	wrapper.insertBefore( list );
});

})( jQuery );


/*
* jQuery Mobile Framework : prototype for "dialog" plugin.
* Copyright (c) jQuery Project
* Dual licensed under the MIT (MIT-LICENSE.txt) and GPL (GPL-LICENSE.txt) licenses.
* Note: Code is in draft form and is subject to change 
*/
(function ( $ ) {
$.widget( "mobile.dialog", $.mobile.widget, {
	options: {},
	_create: function(){	
		var $el = this.element,
			$closeBtn = $('<a href="#" data-icon="delete" data-iconpos="notext">Close</a>')
							.click(function(){
								$.changePage([$el, $.activePage], undefined, true );
								return false;
							});
	
		this.element
			.bind("pageshow",function(){
				return false;
			})
			//add ARIA role
			.attr("role","dialog")
			.addClass('ui-page ui-dialog ui-body-a')
			.find('[data-role=header]')
			.addClass('ui-corner-top ui-overlay-shadow')
				.prepend( $closeBtn )
			.end()
			.find('.ui-content,[data-role=footer]')
				.last()
				.addClass('ui-corner-bottom ui-overlay-shadow');

	}
});
})( jQuery );

/*
* jQuery Mobile Framework : prototype for "navbar" plugin
* Copyright (c) jQuery Project
* Dual licensed under the MIT (MIT-LICENSE.txt) and GPL (GPL-LICENSE.txt) licenses.
* Note: Code is in draft form and is subject to change 
*/
(function ( $ ) {
$.widget( "mobile.navbar", $.mobile.widget, {
	options: {
		iconpos: 'top'
	},
	_create: function(){
		var $navbar = this.element,
			$navbtns = $navbar.find("a"),
			iconpos = $navbtns.filter('icon').length ? this.options.iconpos : undefined;
		
		$navbar
			.addClass('ui-navbar')
			.attr("role","navigation")
			.find("ul")
				.grid({grid: $navbtns.length > 2 ? "b" : "a"});		
		
		if( !iconpos ){ 
			$navbar.addClass("ui-navbar-noicons");
		}
		
		$navbtns
			.buttonMarkup({
				corners:	false, 
				shadow:		false, 
				iconpos:	iconpos
			});
		
		$navbar.delegate("a", "click",function(event){
			$navbtns.removeClass("ui-btn-active");
		});	
	}
});
})( jQuery );

/*
* jQuery Mobile Framework : plugin for creating grids
* Copyright (c) jQuery Project
* Dual licensed under the MIT (MIT-LICENSE.txt) and GPL (GPL-LICENSE.txt) licenses.
* Note: Code is in draft form and is subject to change 
*/ 
(function($){
$.fn.grid = function(options){
	return $(this).each(function(){
		var o = $.extend({
			grid: 'a'
		},options);
		
		$(this).addClass('ui-grid-' + o.grid);
			
		var $kids = $(this).children();
			iterator = o.grid == 'a' ? 2 : 3;
		
			$kids.filter(':nth-child(' + iterator + 'n+1)').addClass('ui-block-a');
			$kids.filter(':nth-child(' + iterator + 'n+2)').addClass('ui-block-b');
			
		if(iterator == 3){	
			$kids.filter(':nth-child(3n+3)').addClass('ui-block-c');
		}			
	});	
};
})(jQuery);



/*!
 * jQuery Mobile
 * http://jquerymobile.com/
 *
 * Copyright 2010, jQuery Project
 * Dual licensed under the MIT or GPL Version 2 licenses.
 * http://jquery.org/license
 */
(function( $, window, undefined ) {
	//some critical feature tests should be placed here.
	//if we're missing support for any of these, then we're a C-grade browser
	//to-do: see if we need more qualifiers here.
	if ( !jQuery.support.mediaquery ) {
		return;
	}	
	
	//these properties should be made easy to override externally
	jQuery.mobile = {};
	
	jQuery.extend(jQuery.mobile, {
		subPageUrlKey: 'ui-page', //define the key used in urls for sub-pages. Defaults to &ui-page=
		degradeInputs: {
			color: true,
			date: true,
			datetime: true,
			"datetime-local": true,
			email: true,
			month: true,
			number: true,
			range: true,
			search: true,
			tel: true,
			time: true,
			url: true,
			week: true
		},
		addBackBtn: true
	});

	var $window = jQuery(window),
		$html = jQuery('html'),
		$head = jQuery('head'),
		$body,
		$loader = jQuery('<div class="ui-loader ui-body-a ui-corner-all"><span class="ui-icon ui-icon-loading spin"></span><h1>loading</h1></div>'),
		$startPage,
		$pageContainer,
		startPageId = 'ui-page-start',
		activePageClass = 'ui-page-active',
		activeBtnClass = 'ui-btn-active',
		activeClickedLink = null,
		pageTransition,
		forceBack,
		transitions = 'slide slideup slidedown pop flip fade',
		transitionDuration = 350,
		backBtnText = "Back",
		urlStack = [ {
			url: location.hash.replace( /^#/, "" ),
			transition: "slide"
		} ],
		focusable = "[tabindex],a,button:visible,select:visible,input",
		nextPageRole = null,
		hashListener = true,
		unHashedSelectors = '[data-rel=dialog]',
		baseUrl = getPathDir( location.protocol + '//' + location.host + location.pathname ),
		resolutionBreakpoints = [320,480,768,1024];

	// TODO: don't expose (temporary during code reorg)
	$.mobile.urlStack = urlStack;
	
	//consistent string escaping for urls and IDs
	function idStringEscape(str){
		return str.replace(/[^a-zA-Z0-9]/g, '-');
	}
	
	$.mobile.idStringEscape = idStringEscape;
	
	// hide address bar
	function hideBrowserChrome() {
		// prevent scrollstart and scrollstop events
		jQuery.event.special.scrollstart.enabled = false;
		setTimeout(function() {
			window.scrollTo( 0, 0 );
		},0);	
		setTimeout(function() {
			jQuery.event.special.scrollstart.enabled = true;
		}, 150 );
	}
	
	function getPathDir( path ){
		var newPath = path.replace(/#/,'').split('/');
		newPath.pop();
		return newPath.join('/') + (newPath.length ? '/' : '');
	}
	
	function getBaseURL( nonHashPath ){
		return getPathDir( nonHashPath || location.hash );
	}
	
	var setBaseURL = !$.support.dynamicBaseTag ? $.noop : function( nonHashPath ){
		//set base url for new page assets
		$('#ui-base').attr('href', baseUrl + getBaseURL( nonHashPath ));
	}
	
	var resetBaseURL = !$.support.dynamicBaseTag ? $.noop : function(){
		$('#ui-base').attr('href', baseUrl);
	}
	
	//for form submission
	$('form').live('submit', function(){
		var type = $(this).attr("method"),
			url = $(this).attr( "action" ).replace( location.protocol + "//" + location.host, "");	
		
		//external submits use regular HTTP
		if( /^(:?\w+:)/.test( url ) ){
			return;
		}	
		
		//if it's a relative href, prefix href with base url
		if( url.indexOf('/') && url.indexOf('#') !== 0 ){
			url = getBaseURL() + url;
		}
			
		$.changePage({
				url: url,
				type: type,
				data: $(this).serialize()
			},
			undefined,
			undefined,
			true
		);
		return false;
	});	
	
	//click routing - direct to HTTP or Ajax, accordingly
	jQuery( "a" ).live( "click", function(event) {
		var $this = $(this),
			//get href, remove same-domain protocol and host
			href = $this.attr( "href" ).replace( location.protocol + "//" + location.host, ""),
			//if it still starts with a protocol, it's external, or could be :mailto, etc
			external = /^(:?\w+:)/.test( href ) || $this.is( "[target],[rel=external]" );

		if( href === '#' ){
			//for links created purely for interaction - ignore
			return false;
		}
		
		activeClickedLink = $this.closest( ".ui-btn" ).addClass( activeBtnClass );
		
		if( external ){
			//deliberately redirect, in case click was triggered
			location.href = href;
		}
		else {	
			//use ajax
			var pageTransition = $this.data( "transition" ) || "slide",
				forceBack = $this.data( "back" ) || undefined,
				changeHashOnSuccess = !$this.is(unHashedSelectors);
				
			nextPageRole = $this.attr( "data-rel" );	
	
			//if it's a relative href, prefix href with base url
			if( href.indexOf('/') && href.indexOf('#') !== 0 ){
				href = getBaseURL() + href;
			}
			
			href.replace(/^#/,'');
			
			changePage(href, pageTransition, forceBack, changeHashOnSuccess);			
		}
		event.preventDefault();
	});
	
	// turn on/off page loading message.
	function pageLoading( done ) {
		if ( done ) {
			$html.removeClass( "ui-loading" );
		} else {
			$loader.appendTo($pageContainer).css({top: $(window).scrollTop() + 75});
			$html.addClass( "ui-loading" );
		}
	};
	
	//for directing focus to the page title, or otherwise first focusable element
	function reFocus(page){
		var pageTitle = page.find( ".ui-title:eq(0)" );
		if( pageTitle.length ){
			pageTitle.focus();
		}
		else{
			page.find( focusable ).eq(0).focus();
		}
	}
	
	//function for setting role of next page
	function setPageRole( newPage ) {
		if ( nextPageRole ) {
			newPage.attr( "data-role", nextPageRole );
			nextPageRole = undefined;
		}
	}
	
	//wrap page and transfer data-attrs if it has an ID
	function wrapNewPage( newPage ){
		var copyAttrs = ['data-role', 'data-theme', 'data-fullscreen'], //TODO: more page-level attrs?
			wrapper = newPage.wrap( "<div>" ).parent();
			
		$.each(copyAttrs,function(i){
			if( newPage.attr( copyAttrs[ i ] ) ){
				wrapper.attr( copyAttrs[ i ], newPage.attr( copyAttrs[ i ] ) );
				newPage.removeAttr( copyAttrs[ i ] );
			}
		});
		return wrapper;
	}
	
	//remove active classes after page transition or error
	function removeActiveLinkClass(){
		if(activeClickedLink && !activeClickedLink.closest( '.ui-page-active' ).length ){
			activeClickedLink.removeClass( activeBtnClass );
		}
		activeClickedLink = null;
	}
	

	//for getting or creating a new page 
	function changePage( to, transition, back, changeHash){

		//from is always the currently viewed page
		var toIsArray = $.type(to) === "array",
			from = toIsArray ? to[0] : $.activePage,
			to = toIsArray ? to[1] : to,
			url = fileUrl = $.type(to) === "string" ? to.replace( /^#/, "" ) : null,
			data = undefined,
			type = 'get',
			back = (back !== undefined) ? back : ( urlStack.length > 1 && urlStack[ urlStack.length - 2 ].url === url ),
			transition = (transition !== undefined) ? transition :  ( pageTransition || "slide" );
		
		if( $.type(to) === "object" ){
			url = to.url,
			data = to.data,
			type = to.type;
			//make get requests bookmarkable
			if( data && type == 'get' ){
				url += "?" + data;
				data = undefined;
			}
		}
		
		//unset pageTransition, forceBack	
		pageTransition = undefined;
		forceBack = undefined;
			
		//reset base to pathname for new request
		resetBaseURL();
			
		// if the new href is the same as the previous one
		if ( back ) {
			transition = urlStack.pop().transition;
		} else {
			urlStack.push({ url: url, transition: transition });
		}
		
		//function for transitioning between two existing pages
		function transitionPages() {
				
			//kill the keyboard
			jQuery( document.activeElement ).blur();
			
			//trigger before show/hide events
			from.data("page")._trigger("beforehide", {nextPage: to});
			to.data("page")._trigger("beforeshow", {prevPage: from});
			
			function loadComplete(){
				pageLoading( true );
				//trigger show/hide events, allow preventing focus change through return false		
				if( from.data("page")._trigger("hide", null, {nextPage: to}) !== false && to.data("page")._trigger("show", null, {prevPage: from}) !== false ){
					$.activePage = to;
				}
				reFocus( to );
				if( changeHash && url ){
					hashListener = false;
					location.hash = url;
					setTimeout(function(){
						hashListener = true;
					}, 500);
				}
				removeActiveLinkClass();
			}
			
			if(transition){		
				// animate in / out
				from.addClass( transition + " out " + ( back ? "reverse" : "" ) );
				to.addClass( activePageClass + " " + transition +
					" in " + ( back ? "reverse" : "" ) );
				
				// callback - remove classes, etc
				to.animationComplete(function() {
					from.add( to ).removeClass(" out in reverse " + transitions );
					from.removeClass( activePageClass );
					loadComplete();
				});
			}
			else{
				from.removeClass( activePageClass );
				to.addClass( activePageClass );
				loadComplete();
			}
		};
		
		//shared page enhancements
		function enhancePage(){
			setPageRole( to );
			to.page();
		}
		
		//get the actual file in a jq-mobile nested url
		function getFileURL( url ){
			return url.match( '&' + jQuery.mobile.subPageUrlKey ) ? url.split( '&' + jQuery.mobile.subPageUrlKey )[0] : url;
		}

		//if url is a string
		if( url ){
			to = jQuery( "[id='" + url + "']" ),
			fileUrl = getFileURL(url);
		}
		else{ //find base url of element, if avail
			var toID = to.attr('id'),
				toIDfileurl = getFileURL(toID);
				
			if(toID != toIDfileurl){
				fileUrl = toIDfileurl;
			}	
		}
		
		// find the "to" page, either locally existing in the dom or by creating it through ajax
		if ( to.length ) {
			if( fileUrl ){
				setBaseURL(fileUrl);
			}	
			enhancePage();
			transitionPages();
		} else { 
			
			pageLoading();

			$.ajax({
				url: fileUrl,
				type: type,
				data: data,
				success: function( html ) {
					setBaseURL(fileUrl);
					var all = jQuery("<div></div>");
					//workaround to allow scripts to execute when included in page divs
					all.get(0).innerHTML = html;
					to = all.find('[data-role="page"]');
					
					//rewrite src and href attrs to use a base url
					if( !$.support.dynamicBaseTag ){
						var baseUrl = getBaseURL(fileUrl);
						to.find('[src],[href]').each(function(){
							var thisAttr = $(this).is('[href]') ? 'href' : 'src',
								thisUrl = $(this).attr(thisAttr);
							
							//if full path exists and is same, chop it - helps IE out
							thisUrl.replace( location.protocol + '//' + location.host + location.pathname, '' );
								
							if( !/^(\w+:|#|\/)/.test(thisUrl) ){
								$(this).attr(thisAttr, baseUrl + thisUrl);
							}
						});
					}
					
					//preserve ID on a retrieved page
					if ( to.attr('id') ) {
						to = wrapNewPage( to );
					}

					to
						.attr( "id", fileUrl )
						.appendTo( $pageContainer );
						
					enhancePage();
					transitionPages();
				},
				error: function() {
					pageLoading( true );
					removeActiveLinkClass();
					jQuery("<div class='ui-loader ui-overlay-shadow ui-body-e ui-corner-all'><h1>Error Loading Page</h1></div>")
						.css({ "display": "block", "opacity": 0.96, "top": $(window).scrollTop() + 100 })
						.appendTo( $pageContainer )
						.delay( 800 )
						.fadeOut( 400, function(){
							$(this).remove();
						});
				}
			});
		}

	};

	
	jQuery(function() {

		$body = jQuery( "body" );
		pageLoading();
		
		// needs to be bound at domready (for IE6)
		// find or load content, make it active
		$window.bind( "hashchange", function(e, extras) {
			if( !hashListener ){ return; } 
			var to = location.hash,
				transition = (extras && extras.manuallyTriggered) ? false : undefined;
				
			// either we've backed up to the root page url
			// or it's the first page load with no hash present
			//there's a hash and it wasn't manually triggered
			// > probably a new page, "back" will be figured out by changePage
			if ( to ){
				changePage( to, transition);
			}
			//there's no hash, the active page is not the start page, and it's not manually triggered hashchange
			// > probably backed out to the first page visited
			else if( $.activePage.length && !$startPage.is( $.activePage ) && !(extras && extras.manuallyTriggered) ) {
				changePage( $startPage, transition, true );
			}
			else{
				$startPage.trigger("pagebeforeshow", {prevPage: $('')});
				$startPage.addClass( activePageClass );
				pageLoading( true );
				
				if( $startPage.trigger("pageshow", {prevPage: $('')}) !== false ){
					reFocus($startPage);
				}
			}

		});
	});	
	
	//add mobile, loading classes to doc
	$html.addClass('ui-mobile');
	
	//add orientation class on flip/resize.
	$window.bind( "orientationchange", function( event, data ) {
		$html.removeClass( "portrait landscape" ).addClass( data.orientation );
	});
	
	//add breakpoint classes for faux media-q support
	function detectResolutionBreakpoints(){
		var currWidth = $window.width(),
			minPrefix = "min-width-",
			maxPrefix = "max-width-",
			minBreakpoints = [],
			maxBreakpoints = [],
			unit = "px",
			breakpointClasses;
			
		$html.removeClass( minPrefix + resolutionBreakpoints.join(unit + " " + minPrefix) + unit + " " + 
			maxPrefix + resolutionBreakpoints.join( unit + " " + maxPrefix) + unit );
					
		$.each(resolutionBreakpoints,function( i ){
			if( currWidth >= resolutionBreakpoints[ i ] ){
				minBreakpoints.push( minPrefix + resolutionBreakpoints[ i ] + unit );
			}
			if( currWidth <= resolutionBreakpoints[ i ] ){
				maxBreakpoints.push( maxPrefix + resolutionBreakpoints[ i ] + unit );
			}
		});
		
		if( minBreakpoints.length ){ breakpointClasses = minBreakpoints.join(" "); }
		if( maxBreakpoints.length ){ breakpointClasses += " " +  maxBreakpoints.join(" "); }
		
		$html.addClass( breakpointClasses );	
	};
	
	//add breakpoints now and on oc/resize events
	$window.bind( "orientationchange resize", detectResolutionBreakpoints);
	detectResolutionBreakpoints();
	
	//common breakpoints, overrideable, changeable
	$.mobile.addResolutionBreakpoints = function( newbps ){
		if( $.type( newbps ) === "array" ){
			resolutionBreakpoints = resolutionBreakpoints.concat( newbps );
		}
		else {
			resolutionBreakpoints.push( newbps );
		}
		detectResolutionBreakpoints();
	}
		
	//insert mobile meta - these will need to be configurable somehow.
	var headPrepends = 
	$head.prepend(
		'<meta name="viewport" content="width=device-width, minimum-scale=1, maximum-scale=1" />' +
		($.support.dynamicBaseTag ? '<base  href="" id="ui-base" />' : '')
	);
    
    //set base href to pathname
    resetBaseURL();    
	
	//incomplete fallback to workaround lack of animation callbacks. 
	//should this be extended into a full special event?
	// note: Expects CSS animations use transitionDuration (350ms)
	jQuery.fn.animationComplete = function(callback){
		if(jQuery.support.WebKitAnimationEvent){
			return jQuery(this).one('webkitAnimationEnd', callback); //check out transitionEnd (opera per Paul's request)
		}
		else{
			setTimeout(callback, transitionDuration);
		}
	};	
	
	jQuery.extend({
		pageLoading: pageLoading,
		changePage: changePage,
		hideBrowserChrome: hideBrowserChrome
	});

	//dom-ready
	jQuery(function(){
		var $pages = jQuery("[data-role='page']");
		//set up active page
		$startPage = $.activePage = $pages.first();
		
		//set page container
		$pageContainer = $startPage.parent();
		
		jQuery.extend({
			pageContainer: $pageContainer
		});
		
		//make sure it has an ID - for finding it later
		if(!$startPage.attr('id')){ 
			$startPage.attr('id', startPageId); 
		}
		
		//initialize all pages present
		$pages.page();
		
		//trigger a new hashchange, hash or not
		$window.trigger( "hashchange", { manuallyTriggered: true } );
		
		//update orientation 
		$html.addClass( jQuery.event.special.orientationchange.orientation( $window ) );
	});
	
	$window.load(hideBrowserChrome);
	
})( jQuery, this );
