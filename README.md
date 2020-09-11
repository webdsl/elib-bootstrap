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

- replace the following:
  - `gridSpan()` to `gridCol()` (was deprecated)
- remove the following:
  - `dropdownSubMenu()` (was removed from Bootstrap)
  - `gridColPush()` and `gridColPull()` (where removed from Bootstrap), use `gridColOrder()` instead
- `dropdownMenu()` and `dropdownMenuRight()` need as their first argument the ID of the menu toggle button or link

### Optional Migration
The following are recommended but optional migrations from Bootstrap 3:

- replace the following:
  - `brand()` to `navbarBrand()`
  - `navItems()` to `navbarNavList()`
  - `dropdownToggle()` to `dropdownToggleLink()`
  - `dropdownMenuDivider()` to `dropdownMenuDividerItem()`
  - `dropdownButton()` to `dropdownLinkMenu()`
  - `dropdownMenuItem()` to `dropdownMenu*Item()` or `<p>` or `<form>`
  - `dropdownInNavbar()` to `navbarNavDropdownItem()`
  - `dropdownMenuDivider()` to `dropdownMenuDividerItem()`
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