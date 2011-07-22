(function(h){var g=h.each;function e(d,c){var b=c.ownerDocument,k=b.createRange(),a;k.setStartBefore(c);k.setEnd(d.endContainer,d.endOffset);a=b.createElement("body");a.appendChild(k.cloneContents());return a.innerHTML.replace(/<(br|img|object|embed|input|textarea)[^>]*>/gi,"-").replace(/<[^>]+>/g,"").length==0}function f(O,Q,b){var al,a,W,ad;U();ad=Q.getParent(b.getStart(),"th,td");if(ad){a=R(ad);W=M();ad=c(a.x,a.y)}function ac(j,k){j=j.cloneNode(k);j.removeAttribute("id");return j}function U(){var j=0;al=[];g(["thead","tbody","tfoot"],function(l){var k=Q.select("> "+l+" tr",O);g(k,function(n,m){m+=j;g(Q.select("> td, > th",n),function(o,t){var s,r,q,p;if(al[m]){while(al[m][t]){t++}}q=aj(o,"rowspan");p=aj(o,"colspan");for(r=m;r<m+q;r++){if(!al[r]){al[r]=[]}for(s=t;s<t+p;s++){al[r][s]={part:l,real:r==m&&s==t,elm:o,rowspan:q,colspan:p}}}})});j+=k.length})}function c(l,j){var k;k=al[j];if(k){return k[l]}}function aj(j,k){return parseInt(j.getAttribute(k)||1)}function V(j,l,k){if(j){k=parseInt(k);if(k===1){j.removeAttribute(l,1)}else{j.setAttribute(l,k,1)}}}function ai(j){return j&&(Q.hasClass(j.elm,"mceSelected")||j==ad)}function ah(){var j=[];g(O.rows,function(k){g(k.cells,function(l){if(Q.hasClass(l,"mceSelected")||l==ad.elm){j.push(k);return false}})});return j}function Y(){var j=Q.createRng();j.setStartAfter(O);j.setEndAfter(O);b.setRng(j);Q.remove(O)}function am(k){var j;h.walk(k,function(l){var m;if(l.nodeType==3){g(Q.getParents(l.parentNode,null,k).reverse(),function(n){n=ac(n,false);if(!j){j=m=n}else{if(m){m.appendChild(n)}}m=n});if(m){m.innerHTML=h.isIE?"&nbsp;":'<br data-mce-bogus="1" />'}return false}},"childNodes");k=ac(k,false);V(k,"rowSpan",1);V(k,"colSpan",1);if(j){k.appendChild(j)}else{if(!h.isIE){k.innerHTML='<br data-mce-bogus="1" />'}}return k}function aa(){var j=Q.createRng();g(Q.select("tr",O),function(k){if(k.cells.length==0){Q.remove(k)}});if(Q.select("tr",O).length==0){j.setStartAfter(O);j.setEndAfter(O);b.setRng(j);Q.remove(O);return}g(Q.select("thead,tbody,tfoot",O),function(k){if(k.rows.length==0){Q.remove(k)}});U();row=al[Math.min(al.length-1,a.y)];if(row){b.select(row[Math.min(row.length-1,a.x)].elm,true);b.collapse(true)}}function S(l,n,j,m){var o,q,r,p,k;o=al[n][l].elm.parentNode;for(r=1;r<=j;r++){o=Q.getNext(o,"tr");if(o){for(q=l;q>=0;q--){k=al[n+r][q].elm;if(k.parentNode==o){for(p=1;p<=m;p++){Q.insertAfter(am(k),k)}break}}if(q==-1){for(p=1;p<=m;p++){o.insertBefore(am(o.cells[0]),o.cells[0])}}}}}function X(){g(al,function(k,j){g(k,function(p,q){var m,n,l,o;if(ai(p)){p=p.elm;m=aj(p,"colspan");n=aj(p,"rowspan");if(m>1||n>1){V(p,"rowSpan",1);V(p,"colSpan",1);for(o=0;o<m-1;o++){Q.insertAfter(am(p),p)}S(q,j,n-1,m)}}})})}function ab(m,p,j){var s,t,k,l,n,q,o,v,m,u,r;if(m){pos=R(m);s=pos.x;t=pos.y;k=s+(p-1);l=t+(j-1)}else{s=a.x;t=a.y;k=W.x;l=W.y}o=c(s,t);v=c(k,l);if(o&&v&&o.part==v.part){X();U();o=c(s,t).elm;V(o,"colSpan",(k-s)+1);V(o,"rowSpan",(l-t)+1);for(q=t;q<=l;q++){for(n=s;n<=k;n++){if(!al[q]||!al[q][n]){continue}m=al[q][n].elm;if(m!=o){u=h.grep(m.childNodes);g(u,function(w){o.appendChild(w)});if(u.length){u=h.grep(o.childNodes);r=0;g(u,function(w){if(w.nodeName=="BR"&&Q.getAttrib(w,"data-mce-bogus")&&r++<u.length-1){o.removeChild(w)}})}Q.remove(m)}}}aa()}}function ag(o){var s,m,p,n,l,k,r,j,q;g(al,function(t,u){g(t,function(v,w){if(ai(v)){v=v.elm;l=v.parentNode;k=ac(l,false);s=u;if(o){return false}}});if(o){return !s}});for(n=0;n<al[0].length;n++){if(!al[s][n]){continue}m=al[s][n].elm;if(m!=p){if(!o){q=aj(m,"rowspan");if(q>1){V(m,"rowSpan",q+1);continue}}else{if(s>0&&al[s-1][n]){j=al[s-1][n].elm;q=aj(j,"rowSpan");if(q>1){V(j,"rowSpan",q+1);continue}}}r=am(m);V(r,"colSpan",m.colSpan);k.appendChild(r);p=m}}if(k.hasChildNodes()){if(!o){Q.insertAfter(k,l)}else{l.parentNode.insertBefore(k,l)}}}function ak(k){var j,l;g(al,function(n,m){g(n,function(o,p){if(ai(o)){j=p;if(k){return false}}});if(k){return !j}});g(al,function(n,m){var q,p,o;if(!n[j]){return}q=n[j].elm;if(q!=l){o=aj(q,"colspan");p=aj(q,"rowspan");if(o==1){if(!k){Q.insertAfter(am(q),q);S(j,m,p-1,o)}else{q.parentNode.insertBefore(am(q),q);S(j,m,p-1,o)}}else{V(q,"colSpan",q.colSpan+1)}l=q}})}function ae(){var j=[];g(al,function(l,k){g(l,function(m,n){if(ai(m)&&h.inArray(j,n)===-1){g(al,function(o){var q=o[n].elm,p;p=aj(q,"colSpan");if(p>1){V(q,"colSpan",p-1)}else{Q.remove(q)}});j.push(n)}})});aa()}function af(){var j;function k(m){var n,l,o;n=Q.getNext(m,"tr");g(m.cells,function(q){var p=aj(q,"rowSpan");if(p>1){V(q,"rowSpan",p-1);l=R(q);S(l.x,l.y,1,1)}});l=R(m.cells[0]);g(al[l.y],function(q){var p;q=q.elm;if(q!=o){p=aj(q,"rowSpan");if(p<=1){Q.remove(q)}else{V(q,"rowSpan",p-1)}o=q}})}j=ah();g(j.reverse(),function(l){k(l)});aa()}function T(){var j=ah();Q.remove(j);aa();return j}function d(){var j=ah();g(j,function(k,l){j[l]=ac(k,true)});return j}function Z(l,m){var k=ah(),n=k[m?0:k.length-1],j=n.cells.length;g(al,function(o){var p;j=0;g(o,function(q,r){if(q.real){j+=q.colspan}if(q.elm.parentNode==n){p=1}});if(p){return false}});if(!m){l.reverse()}g(l,function(o){var p=o.cells.length,q;for(i=0;i<p;i++){q=o.cells[i];V(q,"colSpan",1);V(q,"rowSpan",1)}for(i=p;i<j;i++){o.appendChild(am(o.cells[p-1]))}for(i=j;i<p;i++){Q.remove(o.cells[i])}if(m){n.parentNode.insertBefore(o,n)}else{Q.insertAfter(o,n)}})}function R(k){var j;g(al,function(m,l){g(m,function(n,o){if(n.elm==k){j={x:o,y:l};return false}});return !j});return j}function N(j){a=R(j)}function M(){var j,k,l;k=l=0;g(al,function(n,m){g(n,function(q,r){var o,p;if(ai(q)){q=al[m][r];if(r>k){k=r}if(m>l){l=m}if(q.real){o=q.colspan-1;p=q.rowspan-1;if(o){if(r+o>k){k=r+o}}if(p){if(m+p>l){l=m+p}}}}})});return{x:k,y:l}}function P(l){var o,p,j,k,q,r,n,m;W=R(l);if(a&&W){o=Math.min(a.x,W.x);p=Math.min(a.y,W.y);j=Math.max(a.x,W.x);k=Math.max(a.y,W.y);q=j;r=k;for(y=p;y<=r;y++){l=al[y][o];if(!l.real){if(o-(l.colspan-1)<o){o-=l.colspan-1}}}for(x=o;x<=q;x++){l=al[p][x];if(!l.real){if(p-(l.rowspan-1)<p){p-=l.rowspan-1}}}for(y=p;y<=k;y++){for(x=o;x<=j;x++){l=al[y][x];if(l.real){n=l.colspan-1;m=l.rowspan-1;if(n){if(x+n>q){q=x+n}}if(m){if(y+m>r){r=y+m}}}}}Q.removeClass(Q.select("td.mceSelected,th.mceSelected"),"mceSelected");for(y=p;y<=r;y++){for(x=o;x<=q;x++){if(al[y][x]){Q.addClass(al[y][x].elm,"mceSelected")}}}}}h.extend(this,{deleteTable:Y,split:X,merge:ab,insertRow:ag,insertCol:ak,deleteCols:ae,deleteRows:af,cutRows:T,copyRows:d,pasteRows:Z,getPos:R,setStartCell:N,setEndCell:P})}h.create("tinymce.plugins.TablePlugin",{init:function(n,m){var o,a,d=true;function b(k){var l=n.selection,j=n.dom.getParent(k||l.getNode(),"table");if(j){return new f(j,n.dom,l)}}function c(){n.getBody().style.webkitUserSelect="";if(d){n.dom.removeClass(n.dom.select("td.mceSelected,th.mceSelected"),"mceSelected");d=false}}g([["table","table.desc","mceInsertTable",true],["delete_table","table.del","mceTableDelete"],["delete_col","table.delete_col_desc","mceTableDeleteCol"],["delete_row","table.delete_row_desc","mceTableDeleteRow"],["col_after","table.col_after_desc","mceTableInsertColAfter"],["col_before","table.col_before_desc","mceTableInsertColBefore"],["row_after","table.row_after_desc","mceTableInsertRowAfter"],["row_before","table.row_before_desc","mceTableInsertRowBefore"],["row_props","table.row_desc","mceTableRowProps",true],["cell_props","table.cell_desc","mceTableCellProps",true],["split_cells","table.split_cells_desc","mceTableSplitCells",true],["merge_cells","table.merge_cells_desc","mceTableMergeCells",true]],function(j){n.addButton(j[0],{title:j[1],cmd:j[2],ui:j[3]})});if(!h.isIE){n.onClick.add(function(j,k){k=k.target;if(k.nodeName==="TABLE"){j.selection.select(k);j.nodeChanged()}})}n.onPreProcess.add(function(w,v){var j,u,t,k=w.dom,l;j=k.select("table",v.node);u=j.length;while(u--){t=j[u];k.setAttrib(t,"data-mce-style","");if((l=k.getAttrib(t,"width"))){k.setStyle(t,"width",l);k.setAttrib(t,"width","")}if((l=k.getAttrib(t,"height"))){k.setStyle(t,"height",l);k.setAttrib(t,"height","")}}});n.onNodeChange.add(function(p,j,k){var l;k=p.selection.getStart();l=p.dom.getParent(k,"td,th,caption");j.setActive("table",k.nodeName==="TABLE"||!!l);if(l&&l.nodeName==="CAPTION"){l=0}j.setDisabled("delete_table",!l);j.setDisabled("delete_col",!l);j.setDisabled("delete_table",!l);j.setDisabled("delete_row",!l);j.setDisabled("col_after",!l);j.setDisabled("col_before",!l);j.setDisabled("row_after",!l);j.setDisabled("row_before",!l);j.setDisabled("row_props",!l);j.setDisabled("cell_props",!l);j.setDisabled("split_cells",!l);j.setDisabled("merge_cells",!l)});n.onInit.add(function(w){var j,l,k=w.dom,v;o=w.windowManager;w.onMouseDown.add(function(q,p){if(p.button!=2){c();l=k.getParent(p.target,"td,th");j=k.getParent(l,"table")}});k.bind(w.getDoc(),"mouseover",function(p){var q,r,t=p.target;if(l&&(v||t!=l)&&(t.nodeName=="TD"||t.nodeName=="TH")){r=k.getParent(t,"table");if(r==j){if(!v){v=b(r);v.setStartCell(l);w.getBody().style.webkitUserSelect="none"}v.setEndCell(t);d=true}q=w.selection.getSel();try{if(q.removeAllRanges){q.removeAllRanges()}else{q.empty()}}catch(s){}p.preventDefault()}});w.onMouseUp.add(function(p,M){var I,t=p.selection,L,J=t.getSel(),K,s,H,q;if(l){if(v){p.getBody().style.webkitUserSelect=""}function r(D,B){var C=new h.dom.TreeWalker(D,D);do{if(D.nodeType==3&&h.trim(D.nodeValue).length!=0){if(B){I.setStart(D,0)}else{I.setEnd(D,D.nodeValue.length)}return}if(D.nodeName=="BR"){if(B){I.setStartBefore(D)}else{I.setEndBefore(D)}return}}while(D=(B?C.next():C.prev()))}L=k.select("td.mceSelected,th.mceSelected");if(L.length>0){I=k.createRng();s=L[0];q=L[L.length-1];I.setStartBefore(s);I.setEndAfter(s);r(s,1);K=new h.dom.TreeWalker(s,k.getParent(L[0],"table"));do{if(s.nodeName=="TD"||s.nodeName=="TH"){if(!k.hasClass(s,"mceSelected")){break}H=s}}while(s=K.next());r(H);t.setRng(I)}p.nodeChanged();l=v=j=null}});w.onKeyUp.add(function(q,p){c()});w.onKeyDown.add(function(q,p){A(q)});w.onMouseDown.add(function(q,p){if(p.button!=2){A(q)}});function z(r,G,F,p){var t=3,I=r.dom.getParent(G.startContainer,"TABLE"),s,H,q;if(I){s=I.parentNode}H=G.startContainer.nodeType==t&&G.startOffset==0&&G.endOffset==0&&p&&(F.nodeName=="TR"||F==s);q=(F.nodeName=="TD"||F.nodeName=="TH")&&!p;return H||q}function A(q){if(!h.isWebKit){return}var r=q.selection.getRng();var p=q.selection.getNode();var t=q.dom.getParent(r.startContainer,"TD");if(!z(q,r,p,t)){return}if(!t){t=p}var s=t.lastChild;while(s.lastChild){s=s.lastChild}r.setEnd(s,s.nodeValue.length);q.selection.setRng(r)}w.plugins.table.fixTableCellSelection=A;if(w&&w.plugins.contextmenu){w.plugins.contextmenu.onContextMenu.add(function(q,s,p){var C,t=w.selection,r=t.getNode()||w.getBody();if(w.dom.getParent(p,"td")||w.dom.getParent(p,"th")||w.dom.select("td.mceSelected,th.mceSelected").length){s.removeAll();if(r.nodeName=="A"&&!w.dom.getAttrib(r,"name")){s.add({title:"advanced.link_desc",icon:"link",cmd:w.plugins.advlink?"mceAdvLink":"mceLink",ui:true});s.add({title:"advanced.unlink_desc",icon:"unlink",cmd:"UnLink"});s.addSeparator()}if(r.nodeName=="IMG"&&r.className.indexOf("mceItem")==-1){s.add({title:"advanced.image_desc",icon:"image",cmd:w.plugins.advimage?"mceAdvImage":"mceImage",ui:true});s.addSeparator()}s.add({title:"table.desc",icon:"table",cmd:"mceInsertTable",value:{action:"insert"}});s.add({title:"table.props_desc",icon:"table_props",cmd:"mceInsertTable"});s.add({title:"table.del",icon:"delete_table",cmd:"mceTableDelete"});s.addSeparator();C=s.addMenu({title:"table.cell"});C.add({title:"table.cell_desc",icon:"cell_props",cmd:"mceTableCellProps"});C.add({title:"table.split_cells_desc",icon:"split_cells",cmd:"mceTableSplitCells"});C.add({title:"table.merge_cells_desc",icon:"merge_cells",cmd:"mceTableMergeCells"});C=s.addMenu({title:"table.row"});C.add({title:"table.row_desc",icon:"row_props",cmd:"mceTableRowProps"});C.add({title:"table.row_before_desc",icon:"row_before",cmd:"mceTableInsertRowBefore"});C.add({title:"table.row_after_desc",icon:"row_after",cmd:"mceTableInsertRowAfter"});C.add({title:"table.delete_row_desc",icon:"delete_row",cmd:"mceTableDeleteRow"});C.addSeparator();C.add({title:"table.cut_row_desc",icon:"cut",cmd:"mceTableCutRow"});C.add({title:"table.copy_row_desc",icon:"copy",cmd:"mceTableCopyRow"});C.add({title:"table.paste_row_before_desc",icon:"paste",cmd:"mceTablePasteRowBefore"}).setDisabled(!a);C.add({title:"table.paste_row_after_desc",icon:"paste",cmd:"mceTablePasteRowAfter"}).setDisabled(!a);C=s.addMenu({title:"table.col"});C.add({title:"table.col_before_desc",icon:"col_before",cmd:"mceTableInsertColBefore"});C.add({title:"table.col_after_desc",icon:"col_after",cmd:"mceTableInsertColAfter"});C.add({title:"table.delete_col_desc",icon:"delete_col",cmd:"mceTableDeleteCol"})}else{s.add({title:"table.desc",icon:"table",cmd:"mceInsertTable"})}})}if(!h.isIE){function u(){var p;for(p=w.getBody().lastChild;p&&p.nodeType==3&&!p.nodeValue.length;p=p.previousSibling){}if(p&&p.nodeName=="TABLE"){w.dom.add(w.getBody(),"p",null,'<br mce_bogus="1" />')}}if(h.isGecko){w.onKeyDown.add(function(r,t){var s,q,p=r.dom;if(t.keyCode==37||t.keyCode==38){s=r.selection.getRng();q=p.getParent(s.startContainer,"table");if(q&&r.getBody().firstChild==q){if(e(s,q)){s=p.createRng();s.setStartBefore(q);s.setEndBefore(q);r.selection.setRng(s);t.preventDefault()}}}})}w.onKeyUp.add(u);w.onSetContent.add(u);w.onVisualAid.add(u);w.onPreProcess.add(function(r,p){var q=p.node.lastChild;if(q&&q.childNodes.length==1&&q.firstChild.nodeName=="BR"){r.dom.remove(q)}});u()}});g({mceTableSplitCells:function(j){j.split()},mceTableMergeCells:function(q){var l,k,j;j=n.dom.getParent(n.selection.getNode(),"th,td");if(j){l=j.rowSpan;k=j.colSpan}if(!n.dom.select("td.mceSelected,th.mceSelected").length){o.open({url:m+"/merge_cells.htm",width:240+parseInt(n.getLang("table.merge_cells_delta_width",0)),height:110+parseInt(n.getLang("table.merge_cells_delta_height",0)),inline:1},{rows:l,cols:k,onaction:function(p){q.merge(j,p.cols,p.rows)},plugin_url:m})}else{q.merge()}},mceTableInsertRowBefore:function(j){j.insertRow(true)},mceTableInsertRowAfter:function(j){j.insertRow()},mceTableInsertColBefore:function(j){j.insertCol(true)},mceTableInsertColAfter:function(j){j.insertCol()},mceTableDeleteCol:function(j){j.deleteCols()},mceTableDeleteRow:function(j){j.deleteRows()},mceTableCutRow:function(j){a=j.cutRows()},mceTableCopyRow:function(j){a=j.copyRows()},mceTablePasteRowBefore:function(j){j.pasteRows(a,true)},mceTablePasteRowAfter:function(j){j.pasteRows(a)},mceTableDelete:function(j){j.deleteTable()}},function(k,j){n.addCommand(j,function(){var l=b();if(l){k(l);n.execCommand("mceRepaint");c()}})});g({mceInsertTable:function(j){o.open({url:m+"/table.htm",width:400+parseInt(n.getLang("table.table_delta_width",0)),height:320+parseInt(n.getLang("table.table_delta_height",0)),inline:1},{plugin_url:m,action:j?j.action:0})},mceTableRowProps:function(){o.open({url:m+"/row.htm",width:400+parseInt(n.getLang("table.rowprops_delta_width",0)),height:295+parseInt(n.getLang("table.rowprops_delta_height",0)),inline:1},{plugin_url:m})},mceTableCellProps:function(){o.open({url:m+"/cell.htm",width:400+parseInt(n.getLang("table.cellprops_delta_width",0)),height:295+parseInt(n.getLang("table.cellprops_delta_height",0)),inline:1},{plugin_url:m})}},function(k,j){n.addCommand(j,function(q,l){k(l)})})}});h.PluginManager.add("table",h.plugins.TablePlugin)})(tinymce);