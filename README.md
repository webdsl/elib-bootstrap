Bootstrap 4 library for WebDSL
==============================
This adds Bootstrap 4 functionality to WebDSL projects.

Current versions:
- [Bootstrap][1] v4.4.1
- [Font Awesome][2] v5.14.0


## Required Migration
To migrate from the previous Bootstrap 3 to this version:

- replace the following:
  - `gridSpan()` to `gridCol()` (was deprecated)
- `gridColPush()` and `gridColPull()` have been removed from Bootstrap, use `gridColOrder()` instead


### Optional Migration
The following are recommended but optional migrations from Bootstrap 3:

- replace the following:
  - `brand()` to `navbarBrand()` (deprecated)
  - `dropdownToggle()` to `dropdownToggleLink()`
  - `dropdownMenuDivider()` to `dropdownMenuDividerItem()`
  - `dropdownButton()` to `dropdownLinkMenu()`
  - `dropdownMenuItem()` to `dropdownMenu*Item()` or `<p>` or `<form>`
  - `dropdownInNavbar()` to `navbarNavDropdownItem()`
- remove the following:
  - `dropdownCaret()`


## Updating Bootstrap and Font Awesome
To update Bootstrap and Font Awesome:

1. change the version numbers at the top of `Makefile`, and in this `README.md`;
2. invoke `make update` to update the dependencies and regenerate `icons-fontawesome.app`.



[1]: https://getbootstrap.com/
[2]: https://fontawesome.com/
