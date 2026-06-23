MACOSX_DEPLOYMENT_TARGET := $(vtool -show-build $(brew --prefix libssh2)/lib/libssh2.dylib | grep minos | awk '{ print $2 }')

all:
	@echo 'Available commands:'
	@echo '	format		-- format code style with swiftformat'
	@echo '	check		-- check warnings-as-errors'
	@echo '	test		-- swift test'

format:
	swiftformat Sources/Shout/

check:
	swift build -Xswiftc -warnings-as-errors

test:
	swift test

build:
	swift build