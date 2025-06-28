BUILD_VERSION := $(shell grep 'version:' pubspec.yaml | cut -d " " -f 2)

# Define colors
## Usage: $(red)<message>$(reset)
red:=$(shell tput setaf 1)
green:=$(shell tput setaf 10)
blue:=$(shell tput setaf 4)
yellow:=$(shell tput setaf 11)
reset:=$(shell tput sgr0)

# Reload Xcode
.PHONY: ios_load
ios_load:
	$(info $(red) *** [Running] fvm flutter clean & pub get ...)
	fvm flutter clean && fvm flutter pub get
	$(info $(yellow) *** [Running] ios pod install ...)
	cd ios && pod install --repo-update

# yaml version
.PHONY: version
version:
	$(info *** $(green)$(BUILD_VERSION)$(reset) ***)

# Run source
.PHONY: run
run:
	$(info $(green) *** [Running] fvm flutter run ...)
	fvm flutter run

# Run dev
.PHONY: run_dev
run_dev:
	$(info $(green) *** [Running] fvm flutter run ...)
	fvm flutter run lib/main.dart --dart-define-from-file=env/dev.json

# Run mock
.PHONY: run_mock
run_mock:
	$(info $(green) *** [Running] fvm flutter run ...)
	fvm flutter run lib/main.dart --dart-define-from-file=env/ctest.json
# Run stg
.PHONY: run_stg
run_stg:
	$(info $(green) *** [Running] fvm flutter run ...)
	fvm flutter run lib/main.dart --dart-define-from-file=env/stg.json

# Run dev
.PHONY: run_prod
run_prod:
	$(info $(green) *** [Running] fvm flutter run ...)
	fvm flutter run lib/main.dart --dart-define-from-file=env/prod.json

# Flutter pub get
.PHONY: pub
pub:
	$(info $(yellow) *** [Running] fvm flutter pub get ...)
	fvm flutter pub get

# Flutter clean
.PHONY: clean
clean:
	$(info $(red) *** [Running] fvm flutter clean ... )
	fvm flutter clean

# Run build_runner
.PHONY: gen
gen:
	$(info $(blue) *** [Running] fvm flutter run build_runner ...)
	fvm flutter pub run build_runner build --delete-conflicting-outputs

# Run pub get + build_runner
.PHONY: setup
setup:
	$(info $(yellow) *** [Running] fvm flutter pub get ...)
	fvm flutter pub get
	$(info $(blue) *** [Running] fvm flutter run build_runner ...)
	fvm flutter pub run build_runner build --delete-conflicting-outputs

# Run test
.PHONY: test
test:
	$(info $(yellow) *** [Running] fvm flutter test ...)
	fvm flutter test

# Run create splash-screen
.PHONY: splash
splash:
	$(info $(blue) *** [Running] generating splash ...)
	dart run flutter_native_splash:create --flavors ctest,dev,stg,prod

# Run create icon launcher
.PHONY: ic_launcher
ic_launcher:
	$(info $(blue) *** [Running] generating ic_launcher ...)
	fvm flutter pub run flutter_launcher_icons

# Build APK
.PHONY: build_dev
build_dev dev:
	$(info $(yellow) *** [Running] Build APK - Dev ...)
	flutter build apk lib/main.dart --dart-define-from-file=env/dev.json

.PHONY: build_stg
build_stg:
	$(info $(yellow) *** [Running] Build APK - Staging ...)
	flutter build apk lib/main.dart --dart-define-from-file=env/stg.json

.PHONY: build_prod
build_pro:
	$(info $(yellow) *** [Running] Build APK - Production ...)
	flutter build apk lib/main.dart --dart-define-from-file=env/prod.json