APP_NAME:=epgsql

UPSTREAM_GIT:=https://github.com/epgsql/epgsql.git
UPSTREAM_REVISION:=3.1.0
RETAIN_ORIGINAL_VERSION:=true

INCLUDE_DIRS+=$(CLONE_DIR)

STANDALONE_TEST_COMMANDS:=eunit:test([epgsql_wrapper_test],[verbose])

ORIGINAL_APP_FILE:=$(CLONE_DIR)/src/$(APP_NAME).app.src
DO_NOT_GENERATE_APP_FILE=true

define construct_app_commands
	cp $(CLONE_DIR)/LICENSE $(APP_DIR)/LICENSE-BSD-epgsql
endef
