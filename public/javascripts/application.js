$(document).ready(function() {
  // From http://dev.jqueryui.com/ticket/3613
  // Cookie persistence missing
  // start

  $("#locale")
  .selectmenu({
    style: 'dropdown',
    icons: [
      {find: '.en'},
      {find: '.de'}
    ]
  })
  .change(function(){
    this.form.submit();
  });	
    
  function updateCSS(theme){
    var cssLink = $('<link href="/stylesheets/compiled/jquery.ui/' + theme.toLowerCase().replace(/ /,"-") + '.css " type="text/css" rel="Stylesheet" class="ui-theme" />');
    var head = $("#demoframe").contents().find("head");
    head.append(cssLink);
    
    if( $("link.ui-theme").size() > 3){
      $("link.ui-theme:first").remove();
    }
    window.location.reload();
  };

  $("#switcher").themeswitcher({
    initialText: I18n.t('txt.ui.theme-switcher.initial'),
    buttonPreText: I18n.t('txt.ui.theme-switcher.button'),	
    onClose: function(){
      updateCSS($.cookie('jquery-ui-theme'));	
    }
  });
    
  $("#navpanel").panel({
    'collapsed':true
    //'collapseType':'slide-left',
    //'stackable':false
  });
    
  $("#configure_navigation").button({
    icons: {
      secondary: 'ui-icon-star'
    },
    text: false
  });
    
  $("#configure_navigation").click(function() {
    $("[name=contentFrame]").attr("src", "/navigation");
  });
    
  $("#license").dialog({
    autoOpen: false,
    bgiframe: true,
    width: 600,
    modal: true,
    show: 'bounce',
    hide: 'clip'
  });

  $('#show_license').click(function() {
    $('#license').dialog('open');
    return false;
  });
});

$(document).ajaxSend(function(e, xhr, options) {
  var token = $("meta[name='csrf-token']").attr("content");
  xhr.setRequestHeader("X-CSRF-Token", token);
});

$(function() {
  $(window.applicationCache).bind("error", function() {
    alert("There was an error when loading the cache manifest");
  });
});

