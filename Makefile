# Bootstrap version
BOOTSTRAP_VERSION=4.4.1
# Font Awesome version
FONTAWESOME_VERSION=5.14.0
# Whether to use the minified (`.min`) or normal (``) files
INFIX=.min

TMP_DIR=download_tmp
JS_DIR=javascript
CSS_DIR=stylesheets
BOOTSTRAP_JS_DIR=$(JS_DIR)/bootstrap
BOOTSTRAP_CSS_DIR=$(CSS_DIR)/bootstrap
FONTAWESOME_CSS_DIR=$(CSS_DIR)/fontawesome/css
FONTAWESOME_FONT_DIR=$(CSS_DIR)/fontawesome/webfonts
GENERATOR_DIR=generator


.PHONY: update update-bootstrap update-themes update-fontawesome generate-icons

update: update-bootstrap update-themes update-fontawesome generate-icons

# Updates Bootstrap
update-bootstrap:
	rm -rf $(TMP_DIR)/
	mkdir -p $(TMP_DIR)/
	wget -O bootstrap.zip https://github.com/twbs/bootstrap/releases/download/v$(BOOTSTRAP_VERSION)/bootstrap-$(BOOTSTRAP_VERSION)-dist.zip
	rm -rf $(BOOTSTRAP_JS_DIR)/
	rm -rf $(BOOTSTRAP_CSS_DIR)/
	mkdir -p $(BOOTSTRAP_JS_DIR)/
	mkdir -p $(BOOTSTRAP_CSS_DIR)/
	unzip -j bootstrap.zip -d $(TMP_DIR)/
	mv $(TMP_DIR)/bootstrap.bundle$(INFIX).js $(BOOTSTRAP_JS_DIR)/
	mv $(TMP_DIR)/bootstrap.bundle$(INFIX).js.map $(BOOTSTRAP_JS_DIR)/
	mv $(TMP_DIR)/bootstrap$(INFIX).css $(BOOTSTRAP_CSS_DIR)/
	mv $(TMP_DIR)/bootstrap$(INFIX).css.map $(BOOTSTRAP_CSS_DIR)/
	rm -rf $(TMP_DIR)/
	rm bootstrap.zip

# Updates the Bootstrap themes
update-themes:
	wget -O $(BOOTSTRAP_CSS_DIR)/cerulean.min.css   https://bootswatch.com/4/yeti/bootstrap.min.css
	wget -O $(BOOTSTRAP_CSS_DIR)/cosmo.min.css      https://bootswatch.com/4/cosmo/bootstrap.min.css
	wget -O $(BOOTSTRAP_CSS_DIR)/flatly.min.css     https://bootswatch.com/4/flatly/bootstrap.min.css
	wget -O $(BOOTSTRAP_CSS_DIR)/lumen.min.css      https://bootswatch.com/4/lumen/bootstrap.min.css
	wget -O $(BOOTSTRAP_CSS_DIR)/simplex.min.css    https://bootswatch.com/4/simplex/bootstrap.min.css
	wget -O $(BOOTSTRAP_CSS_DIR)/spacelab.min.css   https://bootswatch.com/4/spacelab/bootstrap.min.css
	wget -O $(BOOTSTRAP_CSS_DIR)/yeti.min.css       https://bootswatch.com/4/yeti/bootstrap.min.css

# Updates Font Awesome
update-fontawesome:
	rm -rf $(TMP_DIR)/
	mkdir -p $(TMP_DIR)/
	wget -O fontawesome.zip https://use.fontawesome.com/releases/v$(FONTAWESOME_VERSION)/fontawesome-free-$(FONTAWESOME_VERSION)-web.zip
	rm -rf $(FONTAWESOME_CSS_DIR)/
	rm -rf $(FONTAWESOME_FONT_DIR)/
	mkdir -p $(FONTAWESOME_CSS_DIR)/
	mkdir -p $(FONTAWESOME_FONT_DIR)/
	unzip -o -j fontawesome.zip -d $(TMP_DIR)/
	mv $(TMP_DIR)/all$(INFIX).css $(FONTAWESOME_CSS_DIR)/
	mv $(TMP_DIR)/fa-*.eot $(FONTAWESOME_FONT_DIR)/
	mv $(TMP_DIR)/fa-*.svg $(FONTAWESOME_FONT_DIR)/
	mv $(TMP_DIR)/fa-*.ttf $(FONTAWESOME_FONT_DIR)/
	mv $(TMP_DIR)/fa-*.woff $(FONTAWESOME_FONT_DIR)/
	mv $(TMP_DIR)/fa-*.woff2 $(FONTAWESOME_FONT_DIR)/
	mv $(TMP_DIR)/icons.yml $(GENERATOR_DIR)/
	rm -rf $(TMP_DIR)/
	rm fontawesome.zip

# Generates the icons.app file
generate-icons:
	( \
	   cd $(GENERATOR_DIR)/; \
	   source ./venv/bin/activate; \
	   pip install -r requirements.txt; \
	   python3 main.py; \
	)
	mv $(GENERATOR_DIR)/icons-fontawesome.app ./