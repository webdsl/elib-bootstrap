module elib/elib-bootstrap/lib
imports elib/elib-bootstrap/icons

section default attribute sets
  // override attributes navigate{ class="navigate" }
  // override attributes downloadlink{ class="downloadlink" }
  // override attributes outputimage{ class="outputimage" }
  override attributes submit{ class="btn btn-default" }
  attributes btnSuccess { class= "btn btn-success" }
  attributes btnWarn{ class= "btn btn-warning" }
  attributes btnDanger{ class= "btn btn-danger" }
  attributes btnPrimary { class= "btn btn-primary" }
  // override attributes submitlink{ submit attributes }
  // override attributes form{ }
  // override attributes navigatebutton{ }
  // override attributes captcha{ }
  // override attributes image{ }

  override attributes inputInt{ class="inputInt form-control" }
  override attributes inputString{ class="inputString form-control" }
  override attributes inputEmail{ class="inputEmail form-control" }
  override attributes inputSecret{ class="inputSecret form-control" }
  override attributes inputURL{ class="inputURL form-control " }
  override attributes inputText{ class="inputTextarea inputText form-control" }
  override attributes inputWikiText{ class="inputTextarea inputWikiText form-control" }
  override attributes inputFloat{ class="inputFloat form-control" }
  override attributes inputLong{ class="inputLong form-control" }
  override attributes inputDate{ class="inputDate form-control" }
  override attributes inputSelect{ class="select form-control" }
  override attributes inputSelectMultiple{ class="select form-control" }
  override attributes inputFile{ class="inputFile  form-control" }
  override attributes inputMultiFile{ class="inputFile  form-control" }
  override attributes inputSDF{ class="inputSDF form-control" }
  // override attributes radio{ class="radio " }

section tooltips

  template tooltipsBS(){
    postProcess("$(node).find('[title]').tooltip({placement: 'auto top', container: 'body'}); $('.tooltip.fade.in, .ui-tooltip-content').remove();")
  }

section positioning

  template pullRight() {
    span[class="pull-right", all attributes]{ elements }
  }
  template pullLeft() {
    span[class="pull-left", all attributes]{ elements }
  }

section grid system

  template gridContainer() {
    div[class="container", all attributes]{ elements }
  }
template gridContainerFluid() {
    div[class="container-fluid", all attributes]{ elements }
  }
  template gridRowCol(){
    gridRowCol(12)[all attributes]{ elements }
  }
  template gridRowCol(cols : Int){
    gridRow[all attributes]{ gridCol(cols){ elements } }
  }

  template gridRow(){
    div[class="row", all attributes]{ elements }
  }
  template gridRow(cls: String){
    div[class="row " + cls, all attributes]{ elements }
  }
  template gridSpan(span: Int){ //deprecated
      gridCol(span)[all attributes]{ elements }
  }
  template gridSpan(span: Int, offset: Int){ //deprecated
    gridCol(span, offset)[all attributes]{ elements }
  }

  template gridCol(cols : Int){
    div[class="col-sm-" + cols, all attributes]{ elements }
  }
  template gridCol(cols : Int, offset : Int){
    div[class="col-sm-" + cols + " col-sm-offset-" + offset, all attributes]{ elements }
  }

  template gridColAdapt(colsSm : Int, colsLg : Int){
    div[class="col-sm-" + colsSm + " col-lg-" + colsLg , all attributes]{ elements }
  }
  template gridColAdapt(colsSm : Int, offsetSm : Int, colsLg : Int, offsetLg : Int){
    div[class="col-sm-" + colsSm + " col-lg-" + colsLg + " col-sm-offset-" + offsetSm + " col-lg-offset-" + offsetLg , all attributes]{ elements }
  }

  template gridColPush(cols : Int, offset : Int){
    div[class="col-sm-" + cols + " col-sm-push-" + offset, all attributes]{ elements }
  }
  template gridColPull(cols : Int, offset : Int){
    div[class="col-sm-" + cols + " col-sm-pull-" + offset, all attributes]{ elements }
  }
  template gridColXs(cols : Int){
    div[class="col-xs-" + cols, all attributes]{ elements }
  }
  template gridColXs(cols : Int, offset : Int){
    div[class="col-xs-" + cols + " col-xs-offset-" + offset , all attributes]{ elements }
  }
  template gridColMd(cols : Int){
    div[class="col-md-" + cols , all attributes]{ elements }
  }
  template gridColMd(cols : Int, offset : Int){
    div[class="col-md-" + cols + " col-md-offset-" + offset , all attributes]{ elements }
  }
  template gridColLg(cols : Int){
    div[class="col-lg-" + cols , all attributes]{ elements }
  }
  template gridColLg(cols : Int, offset : Int){
    div[class="col-lg-" + cols + " col-lg-offset-" + offset , all attributes]{ elements }
  }

section footer

  template footer() {
    <footer class="footer" all attributes>
      elements
    </footer>
  }

section navigation bar

  template appname() { "<default>" }

  template brand() {
    navigate root() [class="navbar-brand", all attributes]{ appname }
  }

  template navbar() {
    div[class="navbar navbar-inverse navbar-fixed-top", all attributes]{
      gridContainer{
        elements
      }
    }
  }

  template navbarResponsive(){
    navbarResponsive(true)[all attributes]{ elements }
  }

  template navbarResponsive(fixed : Bool) {
    div[class=if(fixed)"navbar navbar-inverse navbar-fixed-top" else "navbar navbar-inverse navbar-static-top", all attributes]{
      gridContainer{
        div[class="navbar-header"]{
          brand
          navCollapseButton
        }
        div[class="navbar-collapse collapse", style="height: 0px;"]{
          elements
        }
      }
    }
  }

  template navbarFluid() {
    div[class="navbar navbar-inverse navbar-fixed-top", all attributes]{
      div[class="navbar-inner"]{
        gridContainer{
          elements
        }
      }
    }
  }
  template navbarStatic() {
    div[class="navbar", all attributes]{
      div[class="navbar-inner"]{
        gridContainer{
          elements
        }
      }
    }
  }
  template navCollapse() {
    div[class="nav-collapse"]{
      elements
    }
  }
  template navbarRight() {
    div[class="navbar-right"]{
      elements
    }
  }
  template navItems() {
    list[class="nav navbar-nav"]{
      elements
    }
  }
  template navItem() {
    listitem{ elements }
  }

  template navCollapseButton() {
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
  }

section sections

  template pageHeader() {
    div[class="page-header", all attributes]{
      header1{ elements }
    }
  }
  template pageHeader2() {
    div[class="page-header", all attributes]{
      header2{ elements }
    }
  }
  template pageHeader3() {
    div[class="page-header", all attributes]{
      header3{ elements }
    }
  }
  template pageHeader4() {
    div[class="page-header", all attributes]{
      header4{ elements }
    }
  }
  template small() {
    <small all attributes>elements</small>
  }

section tables

  template tableBordered(){
    table[class="table table-bordered table-striped table-condensed",  all attributes]{
      elements
    }
  }

  template tableStriped(){
      table[class="table table-striped table-condensed",  all attributes]{
          elements
      }
  }

  template tableHovered(){
    table[class="table table-hover",  all attributes]{
      elements
    }
  }

  template theader() {
    <thead all attributes>elements</thead>
  }

  template tbody() {
    <tbody all attributes>elements</thead>
  }

  template tfooter() {
    <tfoot all attributes>elements</tfoot>
  }

  template th(){
    <th all attributes>elements</th>
  }

section forms

  // template span() { <span all attributes>elements</span> }

  template inlForm() {
    span[class="form-inline", role="form", all attributes]{
      form[class="bla"]{
        elements
      }
    }
  }

  template formEntry(l: String){
    <label all attributes>output(l)</label> elements
  }

  template formEntry(l: String, help: String){
    <label all attributes>output(l)</label>
    elements
    <span class="help-inline">output(help)</span>
  }
  
  template formGroup(s: String){
    div[class="form-group ", all attributes]{
      label(s)[class="control-label"]{
        elements
      }
    }
  }
  
  template formActions(){
    // div[class="form-group"]{
    //   div[class="col-sm-offset-2 col-sm-10"]{
    //     elements
    //   }
    // }
    formActions(2, 10)[all attributes]{ elements }
  }

  template formActions(labelOff: Int, elemCol: Int){
    div[class="form-group", all attributes]{
      div[class="col-sm-offset-" + labelOff + " col-sm-" + elemCol]{
        elements
      }
    }
  }

  template formSearch(query: Ref<String>) {
    form[class="form-search", all attributes]{
      input(query)[class="input-medium search-query", placeholder="Search"]
      elements
    }
  }

  template navbarSearch(query: Ref<String>) {
    form[class="navbar-search pull-left", all attributes]{
      input(query)[class="search-query", placeholder="Search"]
      elements
    }
  }

section horizontal forms

  template horizontalForm(){
    form[class="form-horizontal", role="form", all attributes] {
      elements
    }
  }
  template horizontalForm(title: String){
    horizontalForm[all attributes]{
      fieldset(title){
        elements
      }
    }
  }
  template controlGroup(s: String){
    controlGroup(s, 2, 10)[all attributes]{ elements }
  }
  template controlGroup(s: String, labelCol: Int, elemCol: Int){
    div[class="row form-group ", all attributes]{
      label(s)[class="control-label col-sm-" + labelCol]{
        div[class="col-sm-" + elemCol]{
          elements
        }
      }
    }
  }
  template checkboxGroup( label : String ){
    checkboxGroup(label, 2, 10)[all attributes]{ elements }
  }

  template checkboxGroup( label : String, labelCol: Int, elemCol: Int ){
    div[class="checkbox", all attributes]{
      <label class="col-sm-" + elemCol + " col-sm-offset-" + labelCol>
        elements output(label)
      </label>
    }
  }

  template helpBlock(){
    <span class="help-block" all attributes> elements </span>
  }
  
  template inputGroupAppend( appendText : String ){
    inputGroup[all attributes]{
      elements
      inputGroupAddon{ ~appendText }
    }
  }
  template inputGroupPrepend( appendText : String ){
    inputGroup[all attributes]{
      inputGroupAddon{ ~appendText }
      elements
    }
  }
  template inputGroup() {
    <span class="input-group" all attributes>
      elements
    </span>
  }

  template inputGroupButton(){
    <span class="input-group-btn" all attributes> elements </span>
  }
  
  template inputGroupAddon(){
    <span class="input-group-addon" all attributes> elements </span>
  }

section breadcrumbs

  template breadcrumbs(){
    <ul class="breadcrumb" all attributes> elements </ul>
  }
  template breadcrumb() {
    <li all attributes> elements </li>
  }
  template breadcrumbActive() {
    <li class="active" all attributes> elements </li>
  }

section pagers

  template pager() {
    <ul class="pager" all attributes>
      elements
    </ul>
  }
  template pagerPrevious(nav: String){
    <li all attributes>navigate url(nav) { "Previous" }</li>
  }
  template pagerNext(nav: String){
    <li all attributes>navigate url(nav) { "Next" }</li>
  }

section buttons

  template buttonToolbar() {
    div[class="btn-toolbar", role="toolbar", all attributes]{
      elements
    }
  }
  template buttonGroup(){
    div[class="btn-group", all attributes]{
      elements
    }
  }
  template buttonGroupSpan(){
    span[class="btn-group", all attributes]{
      elements
    }
  }
  template buttonGroupVertical(){
    div[class="btn-group btn-group-vertical", all attributes]{
      elements
    }
  }
  template buttonNavigate(nav: String) {
    //navigate url(nav) [class="btn btn-default"]{ elements }
    <a href=nav class="btn btn-default" all attributes>elements</a>
  }
  template button() {
    div[class="btn btn-default", all attributes]{ elements }
  }
  template buttonMini(){
    div[class="btn btn-default btn-xs", all attributes]{ elements }
  }
  template buttonSmall(){
    div[class="btn btn-default btn-sm", all attributes]{ elements }
  }
  template buttonPrimary() {
    div[class="btn btn-primary ", all attributes]{ elements }
  }
  template buttonPrimaryMini(){
    div[class="btn btn-primary btn-xs", all attributes]{ elements }
  }
  template buttonPrimarySmall(){
    div[class="btn btn-primary btn-sm", all attributes]{ elements }
  }


section dropdowns

  template dropdownMenu(){
    list[class="dropdown-menu", all attributes]{
      elements
    }
  }
  template dropdownMenuRight(){
    list[class="dropdown-menu pull-right", all attributes]{
      elements
    }
  }
  template subMenu() {
    dropdownMenuDivider
    elements
  }
  template dropdownMenuItem() {
    listitem[all attributes]{ elements }
  }
  template dropdownSubMenu(title : String){
  	dropdownMenuItem[class="dropdown dropdown-submenu", all attributes]{
  		<a tabindex="-1" href="#"> output(title) </a>
  		dropdownMenu{
  			elements
  		}
  	}
  }
  template dropdownMenuDivider() {
    listitem[class="divider", all attributes]
  }
  template dropdownToggle(cls: String){
    <a class="btn btn-default dropdown-toggle "+cls href="#" data-toggle="dropdown">
      elements " " <span class="caret"></span>
    </a>
  }
  template dropdownToggle(){
    dropdownToggle(""){ elements }
  }
  template dropdown() {
    listitem[class="dropdown", all attributes]{ elements }
  }
  template dropdownInNavbar(title: String) {
    <li class="dropdown" all attributes>
      <a class="dropdown-toggle" href="#" data-toggle="dropdown">
        output(title) " " <span class="caret"></span>
      </a>
      elements
    </li>
  }
  template dropdownCaret() {
    <a class="btn btn-default dropdown-toggle" href="#" data-toggle="dropdown" style="height:14px;padding:7px;">
       <span class="caret"></span>
    </a>
    dropdownMenu{ elements }
  }
  template dropdownButton(title: String) {
    buttonGroup{
     dropdownToggle(attribute("class")){ output(title) }
     dropdownMenu{ elements }
   }
  }


section miscellaneous

  template well(){
    div[class="well", all attributes]{ elements }
  }
  template wellSmall(){
    div[class="well well-sm", all attributes]{ elements }
  }
  template wellLarge(){
    div[class="well well-lg", all attributes]{ elements }
  }

  template blockquote() {
    <blockquote all attributes> elements </blockquote>
  }

section tabs

  template tabsBSElem(elems: [tabId: String, tabLabelElem : TemplateElements, content: TemplateElements] ){
    tabsBS{
      if(elems.length > 8){
        dropdownInNavbar("Items (" + elems.length+ ")" ){
          dropdownMenu{
            for( e in elems ){
              tabElems(e.tabId, false){
                e.tabLabelElem
              }
            }
          }
        }
      } else {
        for(e in elems){
          tabElems(e.tabId, false){
            e.tabLabelElem
          }
        }
      }
    }
    tabContent{ par{
      for(e in elems){
        tabPane(e.tabId){
          e.content
        }
      }
    } }
  }
  template tabsBSWithId(elems: [tabId: String, label : String, content: TemplateElements] ){
    tabsBSElem([
      for( e in elems ){
        ( e.tabId,
        { if(e.label == ""){ "-" } else{ output(e.label) } "" },
          e.content
        )
      }
    ])
  }

  template tabsBS(elems: [label: String, content: TemplateElements] ){
    tabsBSElem([
      for( e in elems ){
        ( id + e.label,
        { if(e.label == ""){ "-" } else{ output(e.label) } "" },
          e.content
        )
      }
    ])
  }

  template tabsBSNoURL(){
    <ul id="tab" class="nav nav-tabs" all attributes>
      elements
    </ul>
  }
  template pillsBS(){
    tabsPills( "nav-pills" )[all attributes]{
      elements
    }
  }
  template tabsBS() {
    tabsPills("nav-tabs")[all attributes]{
      elements
    }
  }
  template tabsPills( tabClass : String){
    <ul id="tab" class="nav " + tabClass all attributes>
      elements
    </ul>
    includeHead(rendertemplate(setHashOnTabAndOpenFirstTab))
    postProcess("autoTabFunction(node);")
  }
template setHashOnTabAndOpenFirstTab(){
  <script>
    var ignoreHashChange = false;
    function hashChangeFunc(){
      // show active tab on hash in url
      if (window.location.hash !== ''){
        var hashTarget = $('a[href="' + window.location.hash + '"]');
        if(hashTarget.length){
          if( hashTarget.attr('data-toggle') === 'tab' ){
            hashTarget.tab('show');
          }
          // and open parent tabs in case the target element is nested in a tab
          var parentPane = hashTarget.closest( '.tab-pane' );
          if(parentPane.length){
            $('.nav a[href=#'+ parentPane.attr('id') +']').tab('show');
          }
          var parentCollapse = hashTarget.closest( '.panel-collapse:not(.in)' ).collapse('show');
        }
      }
      return false;
    }

    $(document).ready(function(){
      var tabFromRequestUrl = window.location.hash !== '' ? $('a[href="' + window.location.hash + '"][data-toggle="tab"]') : [];
      var initUrlHash = window.location.hash;
      hashChangeFunc()
      if( tabFromRequestUrl.length ){
        //Prevent the browser to auto-scroll to the anchor of the tab
        window.location.hash = "";
      }
      //make in-page #links open the tabs
      if ($._data( $(window)[0], 'events' ).hashchange == undefined){
        $(window).on('hashchange', hashChangeFunc);
      }
      if(tabFromRequestUrl.length){
        setTimeout( function(){
        	ignoreHashChange = true;
          history.replaceState(null, null, initUrlHash);
          ignoreHashChange = false;
        }, 10 );
      }
    });
    var autoTabFunction = function(node){
      // remember the hash in the URL without jumping
      $('a[data-toggle="tab"]:not(.bound)').addClass('bound').on('shown.bs.tab', function(e){
        var newhash = '#' + $(e.target).attr('href').substr(1);
        if(history.replaceState){
          history.replaceState(null, null, newhash);
        } else{
          location.hash = newhash;
        }
      });

      //When no tab is active, set the first one to active
      $(node).find('.nav-tabs:not(.bound), .nav-pills:not(.bound)').addClass('bound').each(function(){
        if( $(this).children().length > 0 && 1 > $(this).find('.active').length){
          $(this).children().first().addClass('active');
        }
      });
      $(node).find('.tab-content:not(.bound)').addClass('bound').each(function(){
        if( $(this).children().length > 0 && 1 > $(this).children('.active').length){
          $(this).children('.tab-pane').first().addClass('active');
        }
      });
    }
  </script>
}


  template tabActive(label: String, idAttr: String) {
    tab(label, idAttr, true)[all attributes]
  }
  template tabActive(label: String) {
    tab(label, label, true)[all attributes]
  }
  template tab(label: String, idAttr: String) {
    tab(label, idAttr, false)[all attributes]
  }
  template tab(label: String, idAttr: String, active: Bool) {
    var nonEmptyLabel := if(label == "") "-" else label
    tabElems(idAttr, active)[all attributes]{ output(nonEmptyLabel) }
  }
  template tabElems(idAttr: String, active: Bool) {
    <li class=activeClass(active)> <a href=hrefHashId(idAttr, true) data-toggle="tab" all attributes> elements </a> </li>
    // <script> $(function () { $('~(hrefHashId(id, true))').tab('show') }) </script>
  }
  template tabLink(idAttr : String){
    <a href="javascript:$('a[href=~hrefHashId(idAttr, true)]').click();void(0)" all attributes> elements </a>
  }
  function hrefHashId(s : String, includeHash : Bool) : String {
    return if(includeHash) "#" + /(\W|\s)+/.replaceAll("-",s) else /(\W|\s)+/.replaceAll("-",s);
  }
  function activeClass(active: Bool): String {
    if(active) { return "active"; } else { return ""; }
  }

  template tabBS(label: String) {
    tab(label, label)[all attributes]{ elements }
  }

  template tabContent(){
    div[class="tab-content", all attributes]{
      elements
    }
  }

  template tabPaneActive(idAttr: String){
    tabPane(idAttr, true)[all attributes] { elements }
  }
  template tabPane(idAttr: String){
    tabPane(idAttr, false)[all attributes] { elements }
  }
  template tabPane(idAttr: String, active: Bool){
    div[class="tab-pane " + activeClass(active), id=hrefHashId(idAttr,false), all attributes]{
      elements
    }
  }

section labels

  template labelDefault(){ labelInternal("label-default")[all attributes]{ elements } }
  template labelSuccess(){ labelInternal("label-success")[all attributes]{ elements } }
  template labelPrimary(){ labelInternal("label-primary")[all attributes]{ elements } }
  template labelWarning(){ labelInternal("label-warning")[all attributes]{ elements } }
  template labelDanger(){ labelInternal("label-danger")[all attributes]{ elements } }
  template labelInfo(){ labelInternal("label-info")[all attributes]{ elements } }

  template labelInternal( labelClass : String ){
    <span class=labelClass + " label" all attributes> elements </span>
  }

section alerts

  template alert(){
    div[class="alert alert-dismissible", all attributes]{
      <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">rawoutput("&times;")</span>
      </button>
      elements
    }

  }

  expand
    Success
    Info
    Warning
    Error
    to alert

  expandtemplate alert to Type{
    template alertType() {
      alert[class="alert-type", all attributes]{
        elements
      }
    }
  }

/*
  template tabExperiment() {
    <ul id="tab" class="nav nav-tabs">
    <li><a href="#home" data-toggle="tab">"Home"</a></li>
    <li><a href="#profile" data-toggle="tab">"Profile"</a></li>
    <li><a href="#messages" data-toggle="tab">"Messages"</a></li>
    <li><a href="#settings" data-toggle="tab">"Settings"</a></li>
    </ul>

    <div class="tab-content">
      <div class="tab-pane active" id="home">"home content"</div>
      <div class="tab-pane" id="profile">"profile content"</div>
      <div class="tab-pane" id="messages">"messages content"</div>
      <div class="tab-pane" id="settings">"settings content"</div>
    </div>

    <script>
      $(function () {
        $('.tabs a:last').tab('show')
        $('#home').tab('show')
        $('#profile').tab('show')
        $('#messages').tab('show')
        $('#settings').tab('show')
      })
    </script>
  }
*/

/*
  template tabDefault(label: String) {
    tab(label, true){ elements }
  }

  template tab(label: String, checked: Bool) {
    var tname := getTemplate().getUniqueId()
    div[class="tab"]{
      if(checked) {
        <input type="radio" id=tname name="tab-group-1" checked="true"></input>
      } else {
        <input type="radio" id=tname name="tab-group-1"></input>
      }
      <label for=tname>output(label)</label>
      div[class="content"]{
        elements
      }
    }
  }
*/

section panels

  expandtemplate panels to Cls{
    template panelCls(){
      panelNoBody("panel-cls")[all attributes]{ elements }
    }
    template panelCls( header : String ){
      panelInternal( header, "panel-cls")[all attributes]{ elements }
    }
    template panelClsWithHeading( headerElem : TemplateElements ){
      panelNoBody("panel-cls")[all attributes]{
        panelHeading { headerElem }
        panelBody { elements }
      }
    }

  }
  expand
    Danger
    Warning
    Info
    Primary
    Success
    to panels

  template panel(){
    panelNoBody("panel-default")[all attributes]{
      elements
    }
  }
  template panel( header : String ){
    panelInternal( header, "panel-default")[all attributes]{ elements }
  }

  template panelWithHeading( headerElem : TemplateElements ){
    panelNoBody("panel-default")[all attributes]{
      panelHeading { headerElem }
      panelBody { elements }
    }
  }

  template panelNoBody( panelClass : String ){
    div[class="panel " + panelClass, all attributes]{
      elements
    }
  }

  define panelHeading(){
    div[class="panel-heading clearfix", all attributes]{
      div[class="panel-title"]{
        elements
      }
    }
  }
  define panelBody(){
    div[class="panel-body", all attributes]{
      elements
    }
  }

  define panelFooter(){
    div[class="panel-footer", all attributes]{
      elements
    }
  }

  define panelInternal( header : String, panelclass : String){
    panelNoBody(panelclass)[all attributes]{
      panelHeading { output(header) }
      panelBody { elements }
    }
  }
  template administerVarsInternal(){ /* overridden */ }
  template accordionPanels(){
    accordionPanels( true, "" )[all attributes]{ elements }
  }
  //optionalId is only needed when using multiple accordionPanels loaded by ajax. In case the panels loaded >1 times using the same ajax template, it would result in the same id.
  template accordionPanels(withUrlHash : Bool, optionalId : String){
    var accordionId : String := if(optionalId != null && optionalId != "") optionalId else id
    var panelGroupClass := if(withUrlHash) "panel-group collapse-auto-url" else "panel-group"
    var currentPanelId := ""
    var expanded := false
    var panelLevel := 0
    var afterAction := false

    databind{ afterAction := true; }
    render{ panelLevel := 0; }

    template panelNoBody( panelClass : String ){
      init{
        panelLevel := panelLevel + 1;
        currentPanelId := accordionId + getTemplate().getUniqueIdNoCache();
        var expandedAttr := attribute( "aria-expanded" );
        expanded := if( expandedAttr != null && expandedAttr == "true") true else false;
      }
      render{
         //redo administration in render phase when action is performed for correct ajax behavior
         //When only done in init, it won't update currentPanelId/level after action phase,
         //so each panel gets id/level of last panel
         if(afterAction){
            panelLevel := panelLevel + 1;
            currentPanelId := accordionId + getTemplate().getUniqueIdNoCache();
            var expandedAttr := attribute( "aria-expanded" );
            expanded := if( expandedAttr != null && expandedAttr == "true") true else false;
          }
      }
      div[class="panel " + panelClass, all attributes]{
        elements
      }
      administerVarsInternal

    }
    template administerVarsInternal(){
      init{ panelLevel := panelLevel - 1; }
      render{
        if(afterAction){
          panelLevel := panelLevel - 1;
        }
      }
    }
    template panelHeading(){
      if(panelLevel > 1){
        div[class="panel-heading clearfix", all attributes]{
          div[class="panel-title"]{
            elements
          }
        }
      } else {
        div[class="panel-heading clearfix", role="tab", id=currentPanelId, all attributes]{
          <h3 class="panel-title">
            <a role="button" if(!expanded){class="collapsed"} data-toggle="collapse" data-parent="#"+accordionId href="#collapse"+currentPanelId aria-expanded=""+expanded aria-controls="collapse"+currentPanelId>
              collapseIndicator(accordionId) elements
            </a>
          </h3>
        }
      }
    }
    template panelBody(){
      if(panelLevel > 1){
        div[class="panel-body", all attributes]{
          elements
        }
      } else {
        div[id="collapse"+currentPanelId, class="panel-collapse collapse" + (if(expanded) " in" else ""), role="tabpanel", aria-labelledby=currentPanelId]{
          div[class="panel-body", all attributes]{
            elements
          }
        }
      }
    }

    if(withUrlHash){
      head{
        <script>
          function accordionInit(){
            $('.panel-group.collapse-auto-url .collapse').on('shown.bs.collapse', function (){
              var urlReplace = "#" + $(this).attr('id'); //make the hash the id of the modal shown
              history.replaceState(undefined, undefined , urlReplace)
            }).on('hide.bs.collapse', function (){
              if( window.location.hash.indexOf( $(this).attr('id') ) > -1 ){
                history.replaceState(undefined, undefined , "#")
              }
            });
            tryShowPanel();
          }
          function tryShowPanel(){
            // Open panel on hash in url
            if (location.hash !== ''){
              $('.panel-group ' + location.hash).collapse('show');
            }
            return false;
          }

          $(window).bind('hashchange.accordion', tryShowPanel);
          $(document).ready( accordionInit );
        </script>
      }
    }

    div[class=panelGroupClass , id=accordionId, role="tablist", aria-multiselectable="true"]{
      elements
    }

  }

  template collapseIndicator(accordionId : String){
    var accordionIdSelector := "#" + accordionId + " .panel-collapse"

    iChevronRight " "

    head{
      <script>
        $( document ).ready(function() {
          $('~accordionIdSelector').on('shown.bs.collapse', function () {
              $(this).prev().find(".glyphicon:first").removeClass("glyphicon-chevron-right").addClass("glyphicon-chevron-down");
          });

          $('~accordionIdSelector').on('hidden.bs.collapse', function () {
              $(this).prev().find(".glyphicon:first").removeClass("glyphicon-chevron-down").addClass("glyphicon-chevron-right");
          });
        });
      </script>
    }

  }

section modal

  template infoModal(title : String){
    modalLink( id )[all attributes]{ iInfoSign }
    modal( id ){
      modalHeader{ header3{ output(title) } }
      modalBody[style="font-weight: normal;"]{
        elements
      }
      modalFooter{ modalCloseLink[class = "btn btn-default"] { iRemove " Close" } }
    }
  }

  template modalInfo( linkTitle : String){
    modalLink( id )[all attributes]{ output(linkTitle) }
    modalInfo( id, linkTitle ){
      elements
    }

  }
  template modalInfo( modalID: String, title : String){
    modal( modalID, "" )[all attributes]{
      modalHeader{ header3{ output(title) } }
      modalBody{
        elements
      }
      modalFooter{ modalCloseLink[class = "btn btn-default"] { iRemove " Close" } }
    }
  }

  define modalLink (modalID : String){
    <a data-toggle="modal" href="#" + modalID all attributes except ["href","data-toggle"] >elements</a>
  }

  define modal(modalID : String){
    modal(modalID, "")[all attributes]{ elements }
  }
  define modal(modalID : String, modalSizeClass : String){
    <div class="modal" tabindex="-1" id=modalID all attributes except "id">
      <div class="modal-dialog ~modalSizeClass">
        <div class="modal-content">
          elements
        </div>
      </div>
    </div>
    modalIncludes
  }
  define modalIncludes(){
    includeHead(
      "<script type=\"text/javascript\"> $(window).on('popstate', function(){ $('.modal.in').modal('hide') }); </script>" +
      rendertemplate(
        postProcess(
          "$(node).find('.modal').on( 'shown.bs.modal', function(){ if(history.pushState){ history.pushState({ id: 'modal', modalId: $(this).attr('id') }, null, window.location.href); } } )" +
          ".on( 'hidden.bs.modal', function (){ if( history.state != null && history.state.modalId == $(this).attr('id') ){ history.back(); } } );"
        )
        //To unload iframes, e.g. a video currently playing, the following code can be added to the 'hidden.bs.modal' event in the postProcess function:
        //$(this).find('iframe').each(function(){ $(this).attr('src', $(this).attr('src')) }); 
      )
    )
  }

  define modalHeader(){
    <div class="modal-header" all attributes>
      <a class="close" data-dismiss="modal">iRemove()</a>
      elements
    </div>
  }

  define modalBody(){
    <div class="modal-body" all attributes>
      elements
    </div>
  }

  define modalFooter(){
    <div class="modal-footer" all attributes>
      elements
    </div>
  }

  define modalCloseLink(){
    <a href="#" data-dismiss="modal" all attributes except ["href","data-dismiss"]>elements</a>
  }

  define modalHide(modalID : String){
    <script>
      $('#~modalID').modal('hide');
    </script>
  }

  function removeModal(){
    runscript("$('body').removeClass('modal-open'); $('.modal-backdrop').remove();");
  }
  function hideModals(){
    runscript("$('.modal.in').modal('hide'); $('body').removeClass('modal-open'); $('.modal-backdrop').remove();");
  }
section list groups

  template listGroup() {
    <ul class="list-group" all attributes>
      elements
    </ul>
  }

  template listGroupItem() {
    <li class="list-group-item" all attributes>elements</li>
  }

section definitionList

   define definitionList() {
    <dl all attributes>elements</dl>
  }

  define definitionItem(term : String) {
    <dt all attributes> output(term) </dt>
    <dd> elements </dd>
  }

    define definitionListDescription() {
      <dl class="dl-horizontal" all attributes> elements </dl>
    }

 section media

  define media(){
    div[class="media", all attributes]{ elements }
  }

  define mediaObject(){
    div[class="media-object", all attributes]{ elements }
  }

  define mediaBody(){
    div[class="media-body", all attributes]{ elements }
  }

  define thumbnail(){
    div[class="thumbnail", all attributes]{ elements }
  }

  define caption(){
    div[class="caption", all attributes]{ elements }
  }