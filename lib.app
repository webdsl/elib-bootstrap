module elib/elib-bootstrap/lib
imports elib/elib-bootstrap/icons    

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
  
section footer

  template footer() { 
    <footer class="footer"> 
      elements
    </footer>
  }
  
section navigation bar

  template appname() { "<default>" }

  template brand() { 
    navigate root() [class="navbar-brand"]{ appname }
  }

  template navbar() {
  	div[class="navbar navbar-inverse navbar-fixed-top"]{
      div[class="container"]{
      	elements
      }
    }
  }
  
  template navbarResponsive() {
    div[class="navbar navbar-inverse navbar-fixed-top"]{
      div[class="container"]{
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
    div[class="navbar navbar-inverse navbar-fixed-top"]{
      div[class="navbar-inner"]{
        div[class="container"]{
          elements
        }
      }
    }
  }
  template navbarStatic() {
  	div[class="navbar"]{
      div[class="navbar-inner"]{
        div[class="container"]{
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
  	div[class="page-header"]{
  		header1{ elements }
  	}
  }
  template pageHeader2() {
    div[class="page-header"]{
      header2{ elements }
    }
  }
  template pageHeader3() {
    div[class="page-header"]{
      header3{ elements }
    }
  }
  template pageHeader4() {
    div[class="page-header"]{
      header4{ elements }
    }
  }
  template small() {
  	<small>elements</small>
  }
 
section tables

  template tableBordered(){
  	table[class="table table-bordered table-striped table-condensed",  all attributes]{
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
  	<thead all attributes>elements</thead>
  }
  
  template tfooter() {
  	<tfoot all attributes>elements</tfoot>
  }
  
  template th(){
  	<th all attributes>elements</th>
  }

section forms

  template span() { <span all attributes>elements</span> }

  template inlForm() { 
  	span[class="form-inline", role="form"]{ 
  		form[class="bla"]{
  		  elements
  	  } 
  	}
  }

  template formEntry(l: String){    
    <label>output(l)</label> elements
  }
  
  template formEntry(l: String, help: String){    
    <label>output(l)</label>
    elements
    <span class="help-inline">output(help)</span>
  }
  
  template formActions(){
  	// div[class="form-group"]{ 
  	//   div[class="col-sm-offset-2 col-sm-10"]{
  	//     elements 
  	//   }
  	// }
  	formActions(2, 10){ elements }
  }
  
  template formActions(labelOff: Int, elemCol: Int){
    div[class="form-group"]{ 
      div[class="col-sm-offset-" + labelOff + " col-sm-" + elemCol]{
        elements 
      }
    }
  }
    
  template formSearch(query: Ref<String>) {
    form[class="form-search"]{
      input(query)[class="input-medium search-query", placeholder="Search"] 
      elements
    }
  } 
  
  template navbarSearch(query: Ref<String>) {
    form[class="navbar-search pull-left"]{
      input(query)[class="search-query", placeholder="Search"]
      elements
    }
  }
   
section horizontal forms

  template horizontalForm(){
  	form[class="form-horizontal", role="form"] {
  		elements
  	}
  }
  template horizontalForm(title: String){
  	horizontalForm{
  		fieldset(title){
  			elements
  		}
  	}
  }  
  template controlGroup(s: String){
    // div[class="form-group"]{
    // 	label(s)[class="control-label"]{ 
    // 		div[class="controls"]{
    // 		  elements
    // 		}
    // 	}
    // }
    controlGroup(s, 2, 10){ elements }
  }
  template controlGroup(s: String, labelCol: Int, elemCol: Int){   
    div[class="form-group"]{
      label(s)[class="control-label col-sm-" + labelCol]{
        div[class="col-sm-" + elemCol]{
          elements
        }
      }
    }
  }  
  template checkboxGroup( label : String ){
    checkboxGroup(label, 2, 10){ elements } 
  }
  
  template checkboxGroup( label : String, labelCol: Int, elemCol: Int ){
    div[class="checkbox"]{
      <label class="col-sm-" + elemCol + " col-sm-offset-" + labelCol>
        elements output(label)
      </label>
    }
  }
  
  template helpBlock(){
    <span class="help-block"> elements </span>
  }

  template inputAppend() {
    inputGroup{ elements }
  }
  template inputPrepend() {
    inputGroup{ elements }
  }
  template inputPrependAppend() {
    inputGroup{ elements }
  }
  
  template inputGroup() {
  	<span class="input-group">
      elements
    </span>
  }
    
section breadcrumbs

  template breadcrumbs(){ 
  	<ul class="breadcrumb"> elements </ul>
  }
  template breadcrumb() {
  	<li> elements </li>
  }
  template breadcrumbActive() {
  	<li class="active"> elements </li>
  }
  
section pagers

  template pager() {
  	<ul class="pager">
  	  elements
  	</ul>
  }
  template pagerPrevious(nav: String){
  	<li>navigate url(nav) { "Previous" }</li>
  }  
  template pagerNext(nav: String){
  	<li>navigate url(nav) { "Next" }</li>
  }
  
section buttons

  template buttonToolbar() {
  	div[class="btn-toolbar", role="toolbar"]{
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
  	<a href=nav class="btn btn-default">elements</a>
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
  template dropdownMenuDivider() {
  	listitem[class="divider"]{  }
  }  
  template dropdownToggle(cls: String){
  	<a class="btn btn-default dropdown-toggle "+cls href="#" data-toggle="dropdown">
  	  <span class="caret"></span>
  	</a>
  }
  template dropdownToggle(){ 
  	dropdownToggle("")
  }
  template dropdown() {
    listitem[class="dropdown"]{ elements }
  }
  template dropdownInNavbar(title: String) {
  	<li class="dropdown">
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
  	<a class="btn btn-default dropdown-toggle" href="#" data-toggle="dropdown">
	  	    output(title) " " <span class="caret"></span>
	  </a>
	  dropdownMenu{ elements }
  }
  
  
section miscellaneous

  template well(){ 
  	div[class="well", all attributes]{ elements }
  }
  template wellSmall(){
  	div[class="well well-small", all attributes]{ elements }
  }
  
  template blockquote() {
  	<blockquote> elements </blockquote>
  }
  
section tabs

  template tabsBSNoURL(){
  	<ul id="tab" class="nav nav-tabs">
  		elements
  	</ul>
  }
  template tabsBS() {  
  	<ul id="tab" class="nav nav-tabs">
  		elements
  	</ul>
  	<script>
		$(function(){
		  var hash = window.location.hash;
		  hash && $('ul.nav a[href="' + hash + '"]').tab('show');
		
		  $('.nav-tabs a').click(function (e) {
		    $(this).tab('show');
		    var scrollmem = $('body').scrollTop();
		    window.location.hash = this.hash;
		    $('html,body').scrollTop(scrollmem);
		  });
		  
		});
	</script>
  }
  
  template tabActive(label: String, id: String) { 
  	tab(label, id, true)
  }  
  template tabActive(label: String) { 
  	tab(label, label, true)
  }  
  template tab(label: String, id: String) { 
  	tab(label, id, false)
  }
  template tab(label: String, id: String, active: Bool) { 
  	<li class=activeClass(active)><a href="#"+id.replace(" ","-") data-toggle="tab">output(label)</a></li>
  	<script>
      $(function () {
        $('#~(id.replace(" ","-"))').tab('show')
      })
    </script>
  }
  function activeClass(active: Bool): String {
    if(active) { return "active"; } else { return ""; }
  }
  
  template tabBS(label: String) { 
  	tab(label, label){ elements } 
  }
  
  template tabContent(){
  	div[class="tab-content"]{ 
  		elements
  	}
  }
  
  template tabPaneActive(id: String){
  	tabPane(id, true) { elements }
  }
  template tabPane(id: String){
  	tabPane(id, false) { elements }
  }
  template tabPane(id: String, active: Bool){
  	div[class="tab-pane " + activeClass(active), id=id.replace(" ","-")]{
  		elements 
  	}
  }
  
section labels

  template labelDefault(){ labelInternal("label-default"){ elements } }
  template labelSuccess(){ labelInternal("label-success"){ elements } }
  template labelPrimary(){ labelInternal("label-primary"){ elements } }
  template labelWarning(){ labelInternal("label-warning"){ elements } }
  template labelDanger(){ labelInternal("label-danger"){ elements } }
  template labelInfo(){ labelInternal("label-info"){ elements } }
  
  template labelInternal( labelClass : String ){
  	<span class="label "+labelClass> elements </span>
  }
  
section alerts

  template alert() {
  	div[class="alert"]{
  		<a class="close" data-dismiss="alert">"x"</a>
  		elements
  	}
  }
  
  template alertSuccess() {
  	div[class="alert alert-success"]{
  		<a class="close" data-dismiss="alert">"x"</a>
  		elements
  	}
  }
  
  template alertInfo() {
  	div[class="alert alert-info"]{
  		<a class="close" data-dismiss="alert">"x"</a>
  		elements
  	}
  }  
  
  template alertWarning() {
  	div[class="alert alert-warning"]{
  		<a class="close" data-dismiss="alert">"x"</a>
  		elements
  	}
  }
  
  template alertError() {
  	div[class="alert alert-danger"]{
  		<a class="close" data-dismiss="alert">"x"</a>
  		elements
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

  define panel(){
  	div[class="panel panel-default"]{
  		elements
  	}
  }
  define panelDanger(){
  	div[class="panel panel-danger"]{
  		elements
  	}
  }
  define panelWarning(){
  	div[class="panel panel-warning"]{
  		elements
  	}
  }
  define panelInfo(){
  	div[class="panel panel-info"]{
  		elements
  	}
  }
  define panelPrimary(){
  	div[class="panel panel-primary"]{
  		elements
  	}
  }
  define panelSuccess(){
  	div[class="panel panel-success"]{
  		elements
  	}
  }
  define panelHeading(){
  	div[class="panel-heading"]{
      div[class="panel-title"]{
      	elements
      }
    }
  }
  define panelBody(){
  	div[class="panel-body"]{
  		elements
  	}
  }
  
  define panelFooter(){
  	div[class="panel-footer"]{
  		elements
  	}
  }
  
  define panel( header : String ){
  	panelInternal( header, "panel-default"){ elements }
  }
  define panelDanger( header : String ){
  	panelInternal( header, "panel-danger"){ elements }
  }
  define panelWarning( header : String ){
  	panelInternal( header, "panel-warning"){ elements }
  }
  define panelInfo( header : String ){
  	panelInternal( header, "panel-info"){ elements }
  }
  define panelPrimary( header : String ){
  	panelInternal( header, "panel-primary"){ elements }
  }
  define panelSuccess( header : String ){
  	panelInternal( header, "panel-success"){ elements }
  }
  
  define panelInternal( header : String, panelclass : String){
  	div[class="panel " + panelclass]{
  		panelHeading { output(header) }
  		panelBody { elements }
  	}
  }
  
  

section modal

  define modalLink (modalID : String){
  	<a data-toggle="modal" href="#" + modalID all attributes except ["href","data-toggle"] >elements</a>
  }

  define modal(modalID : String){
  	<div class="modal " + attribute("class") id=modalID>
  		<div class="modal-dialog">
		  	<div class="modal-content">
		  		elements
		    </div>
		</div>
  	</div>
  }

  define modalHeader(){
  	<div class="modal-header">
  		<a class="close" data-dismiss="modal">iRemove()</a>
  		elements
  	</div>
  }

  define modalBody(){
  	<div class="modal-body">
  		elements
  	</div>
  }
 
  define modalFooter(){ 
  	<div class="modal-footer">
  		elements
  	</div>
  }
  
  define modalCloseLink(){
  	<a href="#" data-dismiss="modal" all attributes except ["href","data-dismiss"]>elements</a>
  }

  define modalHide(modalID : String){
  	<script>
  		$('#~modalID').hide();
  	</script>
  }
  
section definitionList

	 define definitionList() {
		<dl>elements</dl>
	}
	
	define definitionItem(term : String) {
		<dt> output(term) </dt>
		<dd> elements </dd>
	}
  
  	define definitionListDescription() {
  		<dl class="dl-horizontal"> elements </dl>
  	}
  	
 section media
 
 	define media(){
 		div[class="media"]{	elements }
 	}
 	
 	define mediaObject(){
 		div[class="media-object"]{ elements }
 	}
 	
 	define mediaBody(){
 		div[class="media-body"]{ elements }
 	}
 	
 	define thumbnail(){
 		div[class="thumbnail"]{ elements }
 	}
 	
 	define caption(){
 		div[class="caption"]{ elements }
 	}