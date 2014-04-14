APP_NAME:=epgsql

UPSTREAM_GIT:=https://github.com/wg/epgsql.git
UPSTREAM_REVISION:=3318bd5d646cad0623a
RETAIN_ORIGINAL_VERSION:=true

WRAPPER_PATCHES:=0001-version.patch

# Path include/http.hrl is needed during compilation
INCLUDE_DIRS+=$(CLONE_DIR)

ORIGINAL_APP_FILE:=$(CLONE_DIR)/src/$(APP_NAME).app.src
DO_NOT_GENERATE_APP_FILE=true

define construct_app_commands
	cp $(CLONE_DIR)/LICENSE $(APP_DIR)/LICENSE-BSD-epgsql
endef
