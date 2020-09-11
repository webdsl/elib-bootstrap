module elib/elib-bootstrap/lib
imports elib/elib-bootstrap/icons
imports elib/elib-bootstrap/icons-fontawesome

section default attribute sets
  override attributes submit{ class="btn btn-default" }
  attributes btnSuccess { class= "btn btn-success" }
  attributes btnWarn{ class= "btn btn-warning" }
  attributes btnDanger{ class= "btn btn-danger" }
  attributes btnPrimary { class= "btn btn-primary" }

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
  override attributes inputFile{ class="inputFile form-control" }
  override attributes inputMultiFile{ class="inputFile form-control" }
  override attributes inputSDF{ class="inputSDF form-control" }

section tooltips

  /** Enables all tooltips on a page. */
  template tooltipsBS(){
  	postProcess("$('[data-toggle=\"tooltip\"]').tooltip()")
  }
  /**
   * To add tooltips to an element, add the `data-toggle="tooltip"` attribute.
   * The title attribute of the element is used as the tooltip text.
   * 
   * To change the position of the tooltip, use the `data-placement="top"` attribute
   * (or `right`, `bottom`, `left`). To render HTML in the title attribute, use the
   * `data-html="true"` attribute.
   */

section positioning

  /** Pulls the content to the right. */
  template pullRight() {
    span[class="float-right", all attributes]{ elements }
  }
  /** Pulls the content to the left. */
  template pullLeft() {
    span[class="float-left", all attributes]{ elements }
  }

section grid system

  /** A grid container. */
  template gridContainer() {
    div[class="container", all attributes]{ elements }
  }
  /** A full-width grid container. */
  template gridContainerFluid() {
    div[class="container-fluid", all attributes]{ elements }
  }
  /** A grid row consisting of a single column. */
  template gridRowCol(){
    gridRowCol(12)[all attributes]{ elements }
  }
  /** A grid row consisting of a single column of the specified span. */
  template gridRowCol(colSpan: Int){
    gridRow[all attributes]{ gridCol(colSpan){ elements } }
  }

  /** A grid row. */
  template gridRow(){
    div[class="row", all attributes]{ elements }
  }
  /** A grid row with the specified class added. */
  template gridRow(cls: String){
    div[class="row " + cls, all attributes]{ elements }
  }

  /** Grid column spanning the specified number of columns on small viewports and bigger. */
  template gridCol(colSpan: Int){
    gridColSm(colSpan)[all attributes]{ elements }
  }
  /** Grid column spanning the specified number of columns starting at the specified offset on small viewports and bigger. */
  template gridCol(colSpan: Int, offset: Int){
    gridColSm(colSpan, offset)[all attributes]{ elements }
  }
  /** A grid column that spans the specified number of columns on small and large viewports respectively. */
  template gridColAdapt(colSpanSm: Int, colSpanLg: Int){
    div[class="col-sm-" + colSpanSm + " col-lg-" + colSpanLg , all attributes]{ elements }
  }
  /** A grid column that spans the specified number of columns on small and large viewports respectively,
  offset by the specified number of columns on small and large viewports respectively. */
  template gridColAdapt(colSpanSm: Int, offsetSm: Int, colSpanLg: Int, offsetLg: Int){
    div[class="col-sm-" + colSpanSm + " col-lg-" + colSpanLg + " col-sm-offset-" + offsetSm + " col-lg-offset-" + offsetLg , all attributes]{ elements }
  }

  // NOTE: gridColPush() and gridColPull() have been removed. Use gridColOrder() instead.

  /** Grid column for small viewports and bigger, spanning the specified number of columns,
  using the specified order. */
  template gridColOrder(colSpan: Int, order: Int){
    div[class="col-sm-" + colSpan + " order-" + order, all attributes]{ elements }
  }
  /** Grid column for small viewports and bigger, spanning the specified number of columns,
  ordering before all other columns. */
  template gridColOrderFirst(colSpan: Int){
    div[class="col-sm-" + colSpan + " order-first", all attributes]{ elements }
  }
  /** Grid column for small viewports and bigger, spanning the specified number of columns,
  ordering after all other columns. */
  template gridColOrderLast(colSpan: Int){
    div[class="col-sm-" + colSpan + " order-last", all attributes]{ elements }
  }

  /** Grid column spanning the specified number of columns on all viewports. */
  template gridColXs(colSpan: Int){
    div[class="col-" + colSpan, all attributes]{ elements }
  }
  /** Grid column spanning the specified number of columns starting at the specified offset on all viewports. */
  template gridColXs(colSpan: Int, offset: Int){
    div[class="col-" + colSpan + " col-offset-" + offset , all attributes]{ elements }
  }

  /** Grid column spanning the specified number of columns on small viewports and bigger. */
  template gridColSm(colSpan: Int){
    div[class="col-sm-" + colSpan, all attributes]{ elements }
  }
  /** Grid column spanning the specified number of columns starting at the specified offset on small viewports and bigger. */
  template gridColSm(colSpan: Int, offset: Int){
    div[class="col-sm-" + colSpan + " col-sm-offset-" + offset, all attributes]{ elements }
  }

  /** Grid column spanning the specified number of columns on medium viewports and bigger. */
  template gridColMd(colSpan: Int){
    div[class="col-md-" + colSpan , all attributes]{ elements }
  }
  /** Grid column spanning the specified number of columns starting at the specified offset on medium viewports and bigger. */
  template gridColMd(colSpan: Int, offset: Int){
    div[class="col-md-" + colSpan + " col-md-offset-" + offset , all attributes]{ elements }
  }

  /** Grid column spanning the specified number of columns on large viewports and bigger. */
  template gridColLg(colSpan: Int){
    div[class="col-lg-" + colSpan , all attributes]{ elements }
  }
  /** Grid column spanning the specified number of columns starting at the specified offset on large viewports and bigger. */
  template gridColLg(colSpan: Int, offset: Int){
    div[class="col-lg-" + colSpan + " col-lg-offset-" + offset , all attributes]{ elements }
  }

  /** Grid column spanning the specified number of columns on extra large viewports and bigger. */
  template gridColXl(colSpan: Int){
    div[class="col-xl-" + colSpan , all attributes]{ elements }
  }
  /** Grid column spanning the specified number of columns starting at the specified offset on extra large viewports and bigger. */
  template gridColXl(colSpan: Int, offset: Int){
    div[class="col-xl-" + colSpan + " col-xl-offset-" + offset , all attributes]{ elements }
  }

section footer

  /** A footer. */
  template footer() {
    <footer class="footer" all attributes>
      elements
    </footer>
  }

section navigation bar

  /** Name of the application, to be overridden. */
  template appname() { "<default>" }

  /** A navbar fixed at the top with centered contents. The elements are contained in the navbar.
   * Required: specify the .navbar-expand-* class.
   * Optional: specify the .navbar-light or .navbar-dark class to set the foreground color to dark or light respectively.
   * Optional: specify the .bg-* class to set the background color.
   */ 
  template navbar() {
  	<nav class="navbar fixed-top" all attributes>
  		gridContainer{
        	elements
      	}
  	</nav>
  }

  /**
   * A responsive navigation bar that collapses when the window becomes too narrow.
   */
  template navbarResponsive(){
    navbarResponsive(true)[all attributes]{ elements }
  }

  /**
   * A responsive navigation bar that collapses when the window becomes too narrow.
   *
   * @param fixed whether the navbar is fixed to the top of the window
   */
  template navbarResponsive(fixed: Bool) {
  	<nav class="navbar navbar-expand-lg navbar-dark bg-primary" + navbarFixedClass(fixed) all attributes except id>
  	  gridContainer{
  	    button[class="navbar-toggler", type="button", data-toggle="collapse", data-target="#"+id, aria-controls=id, aria-expanded="false", aria-label="Toggle navigation"]{
	      span[class="navbar-toggler-icon"]
	    }
	    div[class="collapse navbar-collapse", id=id]{
	      elements
	    }
	  }
	</nav>
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
    div[class="collapse nav-collapse", all attributes]{
      elements
    }
  }
  template navbarRight() {
    div[class="navbar-right", all attributes]{
      elements
    }
  }
  
  template navItem() {
    listitem[all attributes]{ elements }
  }

  template navCollapseButton() {
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
  }

  template brand() { navbarBrand() }	// deprecated

  /** Add a brand to the navbar. Use in a navbar() template. */
  template navbarBrand() {
    navigate root() [class="navbar-brand", all attributes]{ appname }
  }

  /** Add navigation items (navbarNav*Item()) to the navbar. Use in a navbar() template. */
  template navbarNav() {
    div[class="navbar-nav", all attributes]{ elements }
  }
  /** Adds a nav item link to a navbar. Use in the navbarNav() template. */
  template navbarNavLinkItem(nav: String) {
    navbarNavLinkItem(nav, false, false)[all attributes]{ elements }
  }
  /** Adds a nav item link to a navbar. Use in the navbarNav() template. */
  template navbarNavLinkItem(nav: String, active: Bool, disabled: Bool) {
    <a href=nav class="nav-link " + activeClass(active) + " " + disabledClass(disabled) if (disabled) { tabindex="-1" aria-disabled="true" } all attributes>elements</a>
  }

  /** Adds a dropdown button to a navbar. Use in the navbarNav() template. */
  template navbarNavDropdownItem(title: String) {
    dropdown[class="nav-item"]{
      dropdownToggleLink(id, "nav-link") { output(title) }
      dropdownMenu(id){ elements }
    }
  }

  /** Adds a list of navigation items (navbarNavListItem()) to the navbar. Use in a navbar() template. */
  template navbarNavList() {
    list[class="navbar-nav", all attributes]{ elements }
  }
  /** Adds a nav list item to a navbar. Use in the navbarNavList() template. */
  template navbarNavListItem() {
    listitem[class="nav-item", all attributes]{ elements }
  }
  /** Adds a nav link to a navbar. Use in the navbarNavListItem() template. */
  template navbarNavLink(nav: String, active: Bool, disabled: Bool) {
    <a href=nav class="nav-link " + activeClass(active) + " " + disabledClass(disabled) if (disabled) { tabindex="-1" aria-disabled="true" } all attributes>elements</a>
  }

  function navbarFixedClass(fixed: Bool): String {
    if(fixed) { return "fixed-top"; } else { return ""; }
  }
  
  
  // NOTE: navItems() has been renamed to navbarNavList().
  template navItems() { navbarNavList() }


section sections

  /** Displays an underlined page header. */
  template pageHeader() {
    div[class="pb-2 mt-4 mb-2 border-bottom", all attributes]{
      header1{ elements }
    }
  }
  
  /** Displays an underlined page header. */
  template pageHeader2() {
    div[class="pb-2 mt-4 mb-2 border-bottom", all attributes]{
      header2{ elements }
    }
  }
  
  /** Displays an underlined page header. */
  template pageHeader3() {
    div[class="pb-2 mt-4 mb-2 border-bottom", all attributes]{
      header3{ elements }
    }
  }
  
  /** Displays an underlined page header. */
  template pageHeader4() {
    div[class="pb-2 mt-4 mb-2 border-bottom", all attributes]{
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

  /** A breadcrumbs navigation bar. */
  template breadcrumbs(){
  	<nav aria-label="breadcrumb">
  		<ol class="breadcrumb" all attributes>
  			elements
  		</ol>
  	</nav>
  }
  
  /** A breadcrumb element. Use inside breadcrumbs(). */
  template breadcrumb() {
    <li class="breadcrumb-item" all attributes> elements </li>
  }
  
  /**
   * A breadcrumb element which is optionally active. Use inside breadcrumbs().
   * 
   * @param active whether this is the active breadcrumb
   */
  template breadcrumb(active: Bool) {
    <li class="breadcrumb-item " + activeClass(active) if (active) { aria-current="page" } all attributes> elements </li>
  }
  
  /** An active breadcrumb element. Use inside breadcrumbs(). */
  template breadcrumbActive() {
    breadcrumb(true)[all attributes]{ elements }
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

  /** A dropdown link. The class is used to style the toggle,
  the elements are put in the menu. */
  template dropdownLink(title: String) {
    dropdown() {
      dropdownToggleLink(id, attribute("class")){ output(title) }
      dropdownMenu(id){ elements }
    }
  }
  /** A dropdown button. The class is used to style the toggle,
  the elements are put in the menu. */
  template dropdownButton(title: String) {
    buttonGroup() {
      dropdownToggleButton(id, attribute("class")){ output(title) }
      dropdownMenu(id){ elements }
    }
  }
  /** A split dropdown button. The class is used to style the button and toggle,
  the elements are put in the menu. */
  template dropdownSplitButton(title: String) {
    buttonGroup() {
      <button class="btn "+attribute("class")>output(title)</button>
      dropdownToggleButton(attribute("class") + " dropdown-toggle-split"){ <span class="sr-only">"Toggle Dropdown"</span> }
      dropdownMenu(id){ elements }
    }
  }

  /** A dropdown menu. Use dropdownLinkMenu() or dropdownButtonMenu() for the content. */
  template dropdown() {
    div[class="dropdown", all attributes]{ elements }
  }
  /** A dropdown link with the specified title. Use inside dropdown() to toggle the dropdown and provide the menu. */
  template dropdownLinkMenu(title: String) {
    buttonGroup{
      dropdownToggleLink(id, attribute("class")){ output(title) }
      dropdownMenu(id){ elements }
    }
  }
  /** A dropdown button with the specified title. Use inside dropdown() to toggle the dropdown and provide the menu. */
  template dropdownButtonMenu(title: String) {
    buttonGroup{
      dropdownToggleButton(id, attribute("class")){ output(title) }
      dropdownMenu(id){ elements }
    }
  }
  
  // NOTE: dropdownSubMenu() was removed from Bootstrap
  
  /**
   * A toggle link for a dropdown menu. Use inside dropdown() to toggle the dropdown.
   *
   * @param idAttr the ID of the toggle link
   */
  template dropdownToggleLink(idAttr: String){
    dropdownToggleLink(idAttr, ""){ elements }
  }
  /**
   * A toggle link for a dropdown menu, with the specified class. Use inside dropdown() to toggle the dropdown.
   *
   * @param idAttr the ID of the toggle link
   */
  template dropdownToggleLink(idAttr: String, cls: String){
    <a class="dropdown-toggle "+cls href="#" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" aria-labelledby=idAttr id=idAttr>
      elements
    </a>
  }

  /**
   * A toggle button for a dropdown menu. Use inside dropdown() to toggle the dropdown.
   *
   * @param idAttr the ID of the toggle button
   */
  template dropdownToggleButton(idAttr: String){
    dropdownToggleButton(idAttr, ""){ elements }
  }
  /**
   * A toggle button for a dropdown menu, with the specified class. Use inside dropdown() to toggle the dropdown.
   *
   * @param idAttr the ID of the toggle button
   */
  template dropdownToggleButton(idAttr: String, cls: String){
    <button class="btn dropdown-toggle "+cls href="#" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" id=idAttr>
      elements
    </button>
  }

  /**
   * A dropdown menu. Use inside dropdown() to provide the menu.
   *
   * @param idAttr the ID of the button or link that expands this dropdown menu.
   */
  template dropdownMenu(idAttr: String){
    div[class="dropdown-menu", aria-labelledby=idAttr, all attributes]{
      elements
    }
  }
  /**
   * A dropdown menu floating right. Use inside dropdown() to provide the menu.
   *
   * @param idAttr the ID of the button or link that expands this dropdown menu.
   */
  template dropdownMenuRight(idAttr: String){
    div[class="dropdown-menu float-right", aria-labelledby=idAttr, all attributes]{
      elements
    }
  }

  /** A link item in a dropdown menu. */
  template dropdownMenuLinkItem(nav: String) {
    dropdownMenuLinkItem(nav, false, false)[all attributes]{ elements }
  }
  /** A link item in a dropdown menu. */
  template dropdownMenuLinkItem(nav: String, active: Bool, disabled: Bool) {
    <a href=nav class="dropdown-item " + activeClass(active) + " " + disabledClass(disabled) if (disabled) { tabindex="-1" aria-disabled="true" } all attributes>elements</a>
  }
  /** A text item in a dropdown menu. */
  template dropdownMenuTextItem() {
    <span class="dropdown-item-text" all attributes>elements</span>
  }
  /** A header item in a dropdown menu. */
  template dropdownMenuHeaderItem() {
    <h6 class="dropdown-header" all attributes>elements</h6>
  }

  /** A divider item in a dropdown menu. */
  template dropdownMenuDividerItem() {
    <div class="dropdown-divider" all attributes></div>
  }

  template subMenu() {
    dropdownMenuDividerItem
    elements
  }

  // NOTE: dropdownToggle() has been renamed to dropdownToggleLink().
  template dropdownToggle(idAttr: String) { dropdownToggleLink(idAttr) } // deprecated
  // NOTE: dropdownMenuDivider() has been renamed to dropdownMenuDividerItem()
  template dropdownMenuDivider() { dropdownMenuDividerItem() }	// deprecated
  // NOTE: dropdownButton() has been renamed to dropdownLinkMenu()
  template dropdownButton(title: String) { dropdownLinkMenu(title) }	// deprecated
  // NOTE: dropdownMenuItem() has been removed. Use dropdownMenu*Item() or <p> or <form>.
  template dropdownMenuItem() { dropdownMenuTextItem() } // deprecated
  // NOTE: dropdownInNavbar() has been renamed to navbarNavDropdownItem()
  template dropdownInNavbar(title: String) { navbarNavDropdownItem(title) }	// deprecated
  // NOTE: dropdownCaret() has been removed
  template dropdownCaret() { } // deprecated
  // NOTE: dropdownMenuDivider() has been renamed to dropdownMenuDividerItem()
  template dropdownMenuDivider() { dropdownMenuDividerItem() } //deprecated


section miscellaneous

  /** A simple card, top-level element. Use cardBody*() inside. */
  template cardSimple(){
    card[all attributes]{ cardBody{ elements } }
  }
  /** A card, top-level element. Use card*() inside. */
  template card(){
    div[class="card my-3", all attributes]{ elements }
  }
  
  
  /** Card top image. Use inside card(). */
  template cardImageTop(imgSrc: String, altText: String) {
  	<img src=imgSrc class="card-img-top" alt=altText all attributes>
  }
  /** Card bottom image. Use inside card(). */
  template cardImageBottom(imgSrc: String, altText: String) {
  	<img src=imgSrc class="card-img-bottom" alt=altText all attributes>
  }
  /** Card bottom image. Use inside card(), use cardBody*() inside. */
  template cardBodyWithImageOverlay(imgSrc: String, altText: String) {
  	<img src=imgSrc class="card-img" alt=altText all attributes>
  	div[class="card-img-overlay"] { elements }
  }
  /** Card body. Use inside card(). */
  template cardBody(){
	div[class="card-body", all attributes]{ elements }
  }
  /** Card list. Use inside card(). */
  template cardList() {
  	list[class="list-group list-group-flush"] { elements }
  }
  /** Card header. Use inside card(). */
  template cardHeader() {
	div[class="card-header", all attributes]{ elements }
  }
  /** Card footer. Use inside card(). */
  template cardFooter() {
	div[class="card-footer", all attributes]{ elements }
  }
  
  
  /** Card body title. Use inside cardBody(). */
  template cardBodyTitle() {
  	h5[class="card-title", all attributes] { elements }
  }
  /** Card body subtitle. Use inside cardBody(). */
  template cardBodySubtitle() {
  	h6[class="card-subtitle mb-2 text-muted", all attributes] { elements }
  }
  /** Card body text. Use inside cardBody(). */
  template cardBodyText() {
  	<p class="card-text" all attributes> elements </p>
  }
  /** Card body link. Use inside cardBody(). */
  template cardBodyLink(nav: String) {
  	cardBodyLink(nav, false, false)[all attributes]
  }
  /** Card body link. Use inside cardBody(). */
  template cardBodyLink(nav: String, active: Bool, disabled: Bool) {
  	<a href=nav class="card-link " + activeClass(active) + " " + disabledClass(disabled) if (disabled) { tabindex="-1" aria-disabled="true" } all attributes>elements</a>
  }
  
  
  // NOTE: well() has been renamed to cardSimple()
  template well() { cardSimple()[all attributes]{ elements } } //deprecated
  // NOTE: wellSmall() has been removed, use cardSimple()
  template wellSmall() { cardSimple()[all attributes]{ elements } } //deprecated
  // NOTE: wellLarge() has been removed, use cardSimple()
  template wellLarge() { cardSimple()[all attributes]{ elements } } //deprecated

  /** A blockquote. */
  template blockquote() {
    <blockquote class="blockquote mb-0" all attributes> elements </blockquote>
  }
  /** A footer in a blockquote, such as who said the quote. Use inside blockquote(). */
  template blockquoteFooter() {
  	<footer class="blockquote-footer" all attributes> elements </footer>
  }

section tabs

  template tabsBSElem(elems: [tabId: String, tabLabelElem : TemplateElements, content: TemplateElements] ){
    tabsBS{
      if(elems.length > 8){
        navbarNavDropdownItem("Items (" + elems.length+ ")" ){
          for( e in elems ){
            tabElems(e.tabId, false){
              e.tabLabelElem
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
      if ($._data( $(window)[0], 'events' ).hashchange == undefined){
        $(window).on('hashchange', hashChangeFunc);
      }
      setTimeout( function(){
        if(tabFromRequestUrl.length){
          history.replaceState(null, null, initUrlHash);
        }
      }, 10 );
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
  function disabledClass(disabled: Bool): String {
    if(disabled) { return "disabled"; } else { return ""; }
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
    <div class="modal " tabindex="-1" id=modalID all attributes except "id">
      <div class="modal-dialog ~modalSizeClass">
        <div class="modal-content">
          elements
        </div>
      </div>
    </div>

    includeHead(
      "<script type=\"text/javascript\"> $(window).on('popstate', function(){ $('.modal.in').modal('hide') }); </script>" +
      rendertemplate(
        postProcess(
          "$(node).find('.modal').on( 'shown.bs.modal', function(){ if(history.pushState){ history.pushState({ id: 'modal', modalId: $(this).attr('id') }, null, window.location.href); } } )" +
          ".on( 'hidden.bs.modal', function (){ if( history.state != null && history.state.modalId == $(this).attr('id') ){ history.back(); } } );"
        )
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
      $('#~modalID').hide();
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
