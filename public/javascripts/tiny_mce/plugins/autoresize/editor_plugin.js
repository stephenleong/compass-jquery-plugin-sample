(function(){tinymce.create("tinymce.plugins.AutoResizePlugin",{init:function(a){function c(){var b=a.getDoc(),e=b.body,g=b.documentElement;b=tinymce.DOM;var f=d.autoresize_min_height;e=tinymce.isIE?e.scrollHeight:g.offsetHeight;if(e>d.autoresize_min_height)f=e;b.setStyle(b.get(a.id+"_ifr"),"height",f+"px");if(d.throbbing){a.setProgressState(false);a.setProgressState(true)}}var d=this;if(!a.getParam("fullscreen_is_enabled")){d.editor=a;d.autoresize_min_height=a.getElement().offsetHeight;a.onChange.add(c);
a.onSetContent.add(c);a.onPaste.add(c);a.onKeyUp.add(c);a.onPostRender.add(c);if(a.getParam("autoresize_on_init",true)){a.onInit.add(function(b){b.setProgressState(true);d.throbbing=true;b.getBody().style.overflowY="hidden"});a.onLoadContent.add(function(b){c();setTimeout(function(){c();b.setProgressState(false);d.throbbing=false},1250)})}a.addCommand("mceAutoResize",c)}},getInfo:function(){return{longname:"Auto Resize",author:"Moxiecode Systems AB",authorurl:"http://tinymce.moxiecode.com",infourl:"http://wiki.moxiecode.com/index.php/TinyMCE:Plugins/autoresize",
version:tinymce.majorVersion+"."+tinymce.minorVersion}}});tinymce.PluginManager.add("autoresize",tinymce.plugins.AutoResizePlugin)})();
