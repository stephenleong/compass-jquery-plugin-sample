tinyMCEPopup.requireLangPack();
var LinkDialog={preInit:function(){var a;if(a=tinyMCEPopup.getParam("external_link_list_url"))document.write('<script language="javascript" type="text/javascript" src="'+tinyMCEPopup.editor.documentBaseURI.toAbsolute(a)+'"><\/script>')},init:function(){var a=document.forms[0],b=tinyMCEPopup.editor;document.getElementById("hrefbrowsercontainer").innerHTML=getBrowserHTML("hrefbrowser","href","file","theme_advanced_link");if(isVisible("hrefbrowser"))document.getElementById("href").style.width="180px";
this.fillClassList("class_list");this.fillFileList("link_list","tinyMCELinkList");this.fillTargetList("target_list");if(e=b.dom.getParent(b.selection.getNode(),"A")){a.href.value=b.dom.getAttrib(e,"href");a.linktitle.value=b.dom.getAttrib(e,"title");a.insert.value=b.getLang("update");selectByValue(a,"link_list",a.href.value);selectByValue(a,"target_list",b.dom.getAttrib(e,"target"));selectByValue(a,"class_list",b.dom.getAttrib(e,"class"))}},update:function(){var a=document.forms[0],b=tinyMCEPopup.editor,
c,g,d=a.href.value.replace(/ /g,"%20");tinyMCEPopup.restoreSelection();c=b.dom.getParent(b.selection.getNode(),"A");if(!a.href.value)if(c){g=b.selection.getBookmark();b.dom.remove(c,1);b.selection.moveToBookmark(g);tinyMCEPopup.execCommand("mceEndUndoLevel");tinyMCEPopup.close();return}if(c==null){b.getDoc().execCommand("unlink",false,null);tinyMCEPopup.execCommand("mceInsertLink",false,"#mce_temp_url#",{skip_undo:1});tinymce.each(b.dom.select("a"),function(f){if(b.dom.getAttrib(f,"href")=="#mce_temp_url#"){c=
f;b.dom.setAttribs(c,{href:d,title:a.linktitle.value,target:a.target_list?getSelectValue(a,"target_list"):null,"class":a.class_list?getSelectValue(a,"class_list"):null})}})}else b.dom.setAttribs(c,{href:d,title:a.linktitle.value,target:a.target_list?getSelectValue(a,"target_list"):null,"class":a.class_list?getSelectValue(a,"class_list"):null});if(c.childNodes.length!=1||c.firstChild.nodeName!="IMG"){b.focus();b.selection.select(c);b.selection.collapse(0);tinyMCEPopup.storeSelection()}tinyMCEPopup.execCommand("mceEndUndoLevel");
tinyMCEPopup.close()},checkPrefix:function(a){if(a.value&&Validator.isEmail(a)&&!/^\s*mailto:/i.test(a.value)&&confirm(tinyMCEPopup.getLang("advanced_dlg.link_is_email")))a.value="mailto:"+a.value;if(/^\s*www\./i.test(a.value)&&confirm(tinyMCEPopup.getLang("advanced_dlg.link_is_external")))a.value="http://"+a.value},fillFileList:function(a,b){var c=tinyMCEPopup.dom,g=c.get(a);if((b=window[b])&&b.length>0){g.options[g.options.length]=new Option("","");tinymce.each(b,function(d){g.options[g.options.length]=
new Option(d[0],d[1])})}else c.remove(c.getParent(a,"tr"))},fillClassList:function(a){var b=tinyMCEPopup.dom,c=b.get(a),g,d;if(g=tinyMCEPopup.getParam("theme_advanced_styles")){d=[];tinymce.each(g.split(";"),function(f){f=f.split("=");d.push({title:f[0],"class":f[1]})})}else d=tinyMCEPopup.editor.dom.getClasses();if(d.length>0){c.options[c.options.length]=new Option(tinyMCEPopup.getLang("not_set"),"");tinymce.each(d,function(f){c.options[c.options.length]=new Option(f.title||f["class"],f["class"])})}else b.remove(b.getParent(a,
"tr"))},fillTargetList:function(a){var b=tinyMCEPopup.dom.get(a);b.options[b.options.length]=new Option(tinyMCEPopup.getLang("not_set"),"");b.options[b.options.length]=new Option(tinyMCEPopup.getLang("advanced_dlg.link_target_same"),"_self");b.options[b.options.length]=new Option(tinyMCEPopup.getLang("advanced_dlg.link_target_blank"),"_blank");if(a=tinyMCEPopup.getParam("theme_advanced_link_targets"))tinymce.each(a.split(","),function(c){c=c.split("=");b.options[b.options.length]=new Option(c[0],
c[1])})}};LinkDialog.preInit();tinyMCEPopup.onInit.add(LinkDialog.init,LinkDialog);
