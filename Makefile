PROJECT = order_pay
PROJECT_DESCRIPTION = New project
PROJECT_VERSION = 0.1.0

BUILD_DEPS += relx
DEPS = cowboy jsx
dep_cowboy_commit = 2.10.0
dep_jsx = hex 3.1.0

DEP_PLUGINS = cowboy jsx

include erlang.mk
