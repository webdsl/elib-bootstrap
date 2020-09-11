Bootstrap 4 library for WebDSL
==============================
This adds Bootstrap 4 functionality to WebDSL projects.

Current versions:
- [Bootstrap][1] v4.4.1 (including [Popper][3])
- [Font Awesome][2] v5.14.0

## Requirements
- [jQuery][4]


## Required Migration
To migrate from the previous Bootstrap 3 to this version:

- change the following:
  - `dropdownMenu()` and `dropdownMenuRight()` need as their first argument the ID of the menu toggle button or link
- replace the following:
  - `gridSpan()` with `gridCol()`
- remove the following:
  - `dropdownSubMenu()` (removed from Bootstrap)
  - `gridColPush()` and `gridColPull()` (removed from Bootstrap), use `gridColOrder()` instead

### Optional Migration
The following are recommended but optional migrations from Bootstrap 3:

- replace the following:
  - `brand()` with `navbarBrand()`
  - `navItems()` with `navbarNavList()`
  - `dropdownToggle()` with `dropdownToggleLink()`
  - `dropdownMenuDivider()` with `dropdownMenuDividerItem()`
  - `dropdownButton()` with `dropdownLinkMenu()`
  - `dropdownMenuItem()` with `dropdownMenu*Item()` or `<p>` or `<form>`
  - `dropdownInNavbar()` with `navbarNavDropdownItem()`
  - `dropdownMenuDivider()` with `dropdownMenuDividerItem()`
  - `well()` with `card()` and `cardBody()`
  - `wellSmall()` with `card()` and `cardBody()`
  - `wellLarge()` with `card()` and `cardBody()`
  - `panel()` with `card()` and `cardBody()`
  - `panel(header)` with `card()`, `cardHeader()`, and `cardBody()`
  - `panelWithHeading(header)` with `card()`, `cardHeader()`, and `cardBody()`
  - `panelCls()` with `cardCls()` and `cardBodyCls()`
  - `panelCls(header)` with `cardCls()`, `cardHeaderCls()`, and `cardBodyCls()`
  - `panelClsWithHeading(header)` with `cardCls()`, `cardHeaderCls()`, and `cardBodyCls()`
- remove the following:
  - `dropdownCaret()`



## Updating Bootstrap and Font Awesome
To update Bootstrap and Font Awesome:

1. change the version numbers at the top of `Makefile`, and in this `README.md`;
2. invoke `make update` to update the dependencies and regenerate `icons-fontawesome.app`.



[1]: https://getbootstrap.com/
[2]: https://fontawesome.com/
[3]: https://popper.js.org/
[4]: https://jquery.com/